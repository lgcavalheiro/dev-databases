CREATE TABLE IF NOT EXISTS JT_ATIVIDADE_AVALIATIVA_HARDSKILL (
    ATIVIDADE_AVALIATIVA_FK CHAR(36) NOT NULL,
    HARDSKILL_FK CHAR(36) NOT NULL,
    PRIMARY KEY (ATIVIDADE_AVALIATIVA_FK, HARDSKILL_FK)
);
