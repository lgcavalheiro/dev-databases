CREATE TABLE IF NOT EXISTS HARDSKILL (
   ID CHAR(36) NOT NULL PRIMARY KEY,
   NOME VARCHAR(32) NOT NULL,
   CRIACAO TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   ATUALIZACAO TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);