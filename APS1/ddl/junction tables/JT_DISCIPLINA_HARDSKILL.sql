CREATE TABLE IF NOT EXISTS JT_DISCIPLINA_HARDSKILL (
    DISCIPLINA_FK CHAR(36) NOT NULL,
    HARDSKILL_FK CHAR(36) NOT NULL,
    PRIMARY KEY (DISCIPLINA_FK, HARDSKILL_FK)
);
