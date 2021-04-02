CREATE TABLE IF NOT EXISTS DISCIPLINA (
  ID CHAR(36) NOT NULL PRIMARY KEY,
  NOME VARCHAR(32) NOT NULL,                                             
  DESCRICAO VARCHAR(256),
  TURMA_FK CHAR(36) NOT NULL,
  CRIACAO TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ATUALIZACAO TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
 );
 
