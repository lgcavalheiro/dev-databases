const Chance = require('chance');
const fs = require('fs');

const chance = new Chance();

const payloadSteps = [
    usuarioInsert,
    cursoInsert,
    alunoInsert,
    professorInsert,
    disciplinaInsert,
    turmaInsert
];

let fullInsertString = '';

let usuarioPayload = [];
let cursoPayload = [];
let alunoPayload = [];
let professorPayload = [];
let disciplinaPayload = [];
let turmaPayload = [];

function usuarioInsert() {
    for (let i = 0; i <= 99; i++) {
        usuarioPayload.push({
            "ID": chance.guid(),
            "NOME": chance.name(),
            "EMAIL": chance.email(),
            "SENHA": chance.string({ length: 16 })
        });
    }

    console.log("usuario: ", usuarioPayload.length, usuarioPayload[0]);

    assembleInsertString('USUARIO', usuarioPayload);
}

function cursoInsert() {
    for (let i = 0; i <= 3; i++) {
        cursoPayload.push({
            "ID": chance.guid(),
            "NOME": chance.profession(),
            "DESCRICAO": chance.paragraph({ sentences: 2 })
        })
    }

    console.log("curso: ", cursoPayload.length, cursoPayload[0]);

    assembleInsertString('CURSO', cursoPayload);
}

function alunoInsert() {
    let cursoIDs = cursoPayload.map(c => c.ID);

    usuarioPayload.slice(0, 84).forEach(usuario => {
        alunoPayload.push({
            "ID": chance.guid(),
            "USUARIO_FK": usuario.ID,
            "CURSO_FK": chance.pickone(cursoIDs)
        })
    })

    console.log("aluno: ", alunoPayload.length, alunoPayload[0])

    assembleInsertString('ALUNO', alunoPayload);
}

function professorInsert() {
    usuarioPayload.slice(84).forEach(usuario => {
        professorPayload.push({
            "ID": chance.guid(),
            "USUARIO_FK": usuario.ID
        })
    })

    console.log("professor: ", professorPayload.length, professorPayload[0])

    assembleInsertString('PROFESSOR', professorPayload);
}

function disciplinaInsert() {
    for (let i = 0; i <= 7; i++) {
        disciplinaPayload.push({
            "ID": chance.guid(),
            "NOME": (chance.profession().split(" ")[0] + " " + chance.company().split(" ")[0]).replace('/\'/g', ''),
            "DESCRICAO": chance.paragraph({ sentences: 2 })
        })
    }

    console.log('disciplina: ', disciplinaPayload.length, disciplinaPayload[0])

    assembleInsertString('DISCIPLINA', disciplinaPayload);
}

function turmaInsert() {
    for (let i = 0; i <= 15; i++) {
        let chosen = chance.pickone(disciplinaPayload);

        turmaPayload.push({
            "ID": chance.guid(),
            "NOME": chance.integer({ min: 100, max: 800 }) + ' - ' + chosen.NOME,
            "DESCRICAO": chance.paragraph({ sentences: 2 }),
            "DISCIPLINA_FK": chosen.ID
        })
    }

    console.log('turma: ', turmaPayload.length, turmaPayload[0]);

    assembleInsertString('TURMA', turmaPayload);
}

function assembleInsertString(table, payload) {
    let insertString = `INSERT INTO ${table}(${Object.keys(payload[0]).join(', ')}) VALUES\n`
    let valuesArray = [];

    payload.forEach(entry => {
        valuesArray.push(`(${Object.values(entry).map(v => `'${v}'`).join(', ')})`);
    });

    insertString += valuesArray.join(', ');

    fullInsertString += insertString + ';\n\n'
}

function writeInsertSql() {
    if (fs.existsSync('../ddl/insert/inserts.sql')) fs.rmSync('../ddl/insert/inserts.sql');

    fs.writeFileSync('../ddl/insert/inserts.sql', fullInsertString);
}

module.exports = {
    makeInserts() {
        payloadSteps.forEach(step => step());
        writeInsertSql();
    }
}


