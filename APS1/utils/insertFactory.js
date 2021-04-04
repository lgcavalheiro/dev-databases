const Chance = require('chance');
const fs = require('fs');

const chance = new Chance();

const payloadSteps = [
    usuarioInsert,
    cursoInsert,
    alunoInsert,
    professorInsert,
    disciplinaInsert,
    turmaInsert,
    atividadeAvaliativaInsert,
    grupoInsert,
    hardskillInsert,
    questaoInsert,
    questaoDiaInsert,
    softskillInsert,
    jtGrupoAlunoInsert,
];

let fullInsertString = '';

let usuarioPayload = [];
let cursoPayload = [];
let alunoPayload = [];
let professorPayload = [];
let disciplinaPayload = [];
let turmaPayload = [];
let atividadeAvaliativaPayload = [];
let grupoPayload = [];
let hardskillPayload = [];
let questaoPayload = [];
let questaoDiaPayload = [];
let softskillPayload = [];

let jtGrupoAlunoPayload = [];

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
            "NOME": chance.profession().replace('/\'/g', ''),
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
            "NOME": chance.profession().split(" ")[0].replace('/\'/g', '') + " " + chance.word(),
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

function atividadeAvaliativaInsert() {
    for (let i = 0; i <= 31; i++) {
        let chosen = chance.pickone(turmaPayload);

        atividadeAvaliativaPayload.push({
            "ID": chance.guid(),
            "NOME": chance.sentence({ punctuation: false, words: 3 }),
            "DESCRICAO": chance.paragraph({ sentences: 2 }),
            "TURMA_FK": chosen.ID
        })
    }

    console.log('atividade avaliativa: ', atividadeAvaliativaPayload.length, atividadeAvaliativaPayload[0]);

    assembleInsertString('ATIVIDADE_AVALIATIVA', atividadeAvaliativaPayload);
}

function grupoInsert() {
    for (let i = 0; i <= 7; i++) {
        let chosen = chance.pickone(atividadeAvaliativaPayload);

        grupoPayload.push({
            "ID": chance.guid(),
            "NOME": chance.sentence({ punctuation: false, words: 4 }),
            "DESCRICAO": chance.paragraph({ sentences: 2 }),
            "TURMA_FK": chosen.TURMA_FK,
            "ATIVIDADE_AVALIATIVA_FK": chosen.ID
        })
    }

    console.log('grupo: ', grupoPayload.length, grupoPayload[0]);

    assembleInsertString('GRUPO', grupoPayload);
}

function hardskillInsert() {
    for (let i = 0; i <= 15; i++) {
        hardskillPayload.push({
            "ID": chance.guid(),
            "NOME": chance.sentence({ punctuation: false, words: 2 }),
        });
    }

    console.log('hardskill: ', hardskillPayload.length, hardskillPayload[0]);

    assembleInsertString('HARDSKILL', hardskillPayload);
}

function questaoInsert() {
    for (let i = 0; i <= 31; i++) {
        let answers = [
            chance.sentence({ words: 3 }),
            chance.sentence({ words: 3 }),
            chance.sentence({ words: 3 }),
            chance.sentence({ words: 3 })
        ];

        questaoPayload.push({
            "ID": chance.guid(),
            "ENUNCIADO": chance.paragraph({ sentences: 3 }),
            "RESPOSTA_A": answers[0],
            "RESPOSTA_B": answers[1],
            "RESPOSTA_C": answers[2],
            "RESPOSTA_D": answers[3],
            "GABARITO": chance.pickone(answers),
            "USUARIO_FK": chance.pickone(usuarioPayload).ID,
            "HARDSKILL_FK": chance.pickone(hardskillPayload).ID,
        });
    }

    console.log('questao: ', questaoPayload.length, questaoPayload[0]);

    assembleInsertString('QUESTAO', questaoPayload);
}

function questaoDiaInsert() {
    alunoPayload.forEach(aluno => {
        questaoDiaPayload.push({
            "ALUNO_FK": aluno.ID,
            "QUESTAO_FK": chance.pickone(questaoPayload).ID
        })
    });

    console.log('Questao dia: ', questaoDiaPayload.length, questaoDiaPayload[0]);

    assembleInsertString('QUESTAO_DIA', questaoDiaPayload);
}

function softskillInsert() {
    for (let i = 0; i <= 7; i++) {
        softskillPayload.push({
            "ID": chance.guid(),
            "NOME": chance.profession().split(" ")[0].replace('/\'/g', '') + " " + chance.word(),
            "DESCRICAO": chance.paragraph({ sentences: 2 })
        });
    }

    console.log('softskill: ', softskillPayload.length, softskillPayload[0]);

    assembleInsertString('SOFTSKILL', softskillPayload);
}

function jtGrupoAlunoInsert() {
    grupoPayload.forEach(grupo => {
        let students = chance.pickset(alunoPayload, 12);

        students.forEach(student => {
            jtGrupoAlunoPayload.push({
                "GRUPO_FK": grupo.ID,
                "ALUNO_FK": student.ID,
            });
        })
    });

    console.log("JT grupo aluno: ", jtGrupoAlunoPayload.length, jtGrupoAlunoPayload[0]);

    assembleInsertString("JT_GRUPO_ALUNO", jtGrupoAlunoPayload);
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


