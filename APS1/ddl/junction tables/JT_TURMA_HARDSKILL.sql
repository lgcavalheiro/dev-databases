CREATE TABLE IF NOT EXISTS JT_TURMA_HARDSKILL (
    TURMA_FK CHAR(36) NOT NULL,
    HARDSKILL_FK CHAR(36) NOT NULL,
    PRIMARY KEY (TURMA_FK, HARDSKILL_FK)
);
