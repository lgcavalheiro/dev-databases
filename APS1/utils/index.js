const chance = require('chance');
const fs = require('fs');

const ddlFolder = '../ddl/';
const jtsFolder = ddlFolder + 'join tables/';
const relationsFolder = ddlFolder + 'relations/'
const dumpFile = './sqldump.sql';

const makeDumpFile = function () {
    let ddls = fs.readdirSync(ddlFolder).filter(file => file.includes('.sql'));
    let jts = fs.readdirSync(jtsFolder);
    let relations = fs.readdirSync(relationsFolder);

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

    if(fs.existsSync(dumpFile)) fs.rmSync(dumpFile);

    fs.writeFileSync(dumpFile, dumpString);
}

const makeInsertFile = function () {

}

const utilsLiterals = {
    "dump": makeDumpFile,
    "insert": makeInsertFile
}

utilsLiterals[process.argv[2]]();