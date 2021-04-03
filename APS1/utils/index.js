const IF = require('./insertFactory');
const fs = require('fs');

const ddlFolder = '../ddl/';
const jtsFolder = ddlFolder + 'junction tables/';
const relationsFolder = ddlFolder + 'relations/'
const dumpFile = './sqldump.sql';

const makeDumpFile = function () {
    let ddls = fs.readdirSync(ddlFolder).filter(file => file.includes('.sql'));
    let jts = fs.readdirSync(jtsFolder);
    let relations = fs.readdirSync(relationsFolder);
    let inserts = fs.readFileSync('../ddl/insert/inserts.sql', 'utf-8');

    let dumpString = 'USE aps1; \n';

    ddls.forEach(file => {
        dumpString += fs.readFileSync(ddlFolder + file, 'utf-8');
    })

    jts.forEach(file => {
        dumpString += fs.readFileSync(jtsFolder + file, 'utf-8');
    })

    relations.forEach(file => {
        dumpString += fs.readFileSync(relationsFolder + file, 'utf-8');
    })

    if (inserts) dumpString += '\n\n' + inserts;

    if (fs.existsSync(dumpFile)) fs.rmSync(dumpFile);

    fs.writeFileSync(dumpFile, dumpString);
}

const makeInsertFile = function () {
    IF.makeInserts();
    makeDumpFile();
}

const utilsLiterals = {
    "dump": makeDumpFile,
    "insert": makeInsertFile
}

utilsLiterals[process.argv[2]]();