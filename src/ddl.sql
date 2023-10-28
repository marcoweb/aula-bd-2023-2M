-- Exibe os bancos existentes no servidor conectado
SHOW DATABASES;

-- Cria uma nova base de dados no servidor conectado
CREATE DATABASE exemplo;

-- Remover uma base de d ados do servidor especificado
DROP DATABASE wpdb;

-- Exibe as tabelas de uma determinanda base de dados
SHOW TABLES FROM exemplo;

-- Cria uma nova tabela na base de dados especificada
CREATE TABLE exemplo.alunos (
    id INT,
    nome VARCHAR(255)
);

--Exibe os campos da tabela especificada
SHOW FIELDS FROM exemplo.alunos;

-- Remove a Tabela especificada;
DROP TABLE exemplo.alunos;

-- Especifica a base de dados onde serão executados os comandos a seguir
USE exemplo;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf CHAR(11)
);
