CREATE TABLE IF NOT EXISTS PROFESSOR (
    ID CHAR(36) NOT NULL PRIMARY KEY,
    USUARIO_FK CHAR(36) NOT NULL,
    CRIACAO TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ATUALIZACAO TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);