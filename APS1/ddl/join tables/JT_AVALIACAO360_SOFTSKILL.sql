CREATE TABLE IF NOT EXISTS JT_AVALIACAO360_SOFTSKILL (
    AVALIACAO360_FK CHAR(36) NOT NULL,
    SOFTSKILL_FK CHAR(36) NOT NULL,
    PRIMARY KEY (AVALIACAO360_FK, SOFTSKILL_FK)
);