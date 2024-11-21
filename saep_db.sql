CREATE DATABASE saep_db;
USE saep_db;

CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ano INT NOT NULL
);

CREATE TABLE Atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    id_professor INT NOT NULL,
    id_turma INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);

INSERT INTO Professor (nome, email, senha) 
VALUES ('Professor Teste', 'professor@teste.com', '123');

ALTER TABLE Turma ADD id_professor INT NOT NULL;
ALTER TABLE Turma ADD FOREIGN KEY (id_professor) REFERENCES Professor(id_professor);

SELECT * from Atividade
