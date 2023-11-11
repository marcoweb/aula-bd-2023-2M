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

CREATE TABLE cliente(
    id INT AUTO_INCREMENT PRIMARY KEY,
    agencia CHAR(6) NOT NULL,
    numero CHAR(10) NOT NULL,
    UNIQUE (agencia, numero)
);


CREATE TABLE generos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE livros(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    id_genero INT REFERENCES genero(id)
);

CREATE TABLE autores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL 
);

CREATE TABLE livros_possuem_autores(
    id_livro INT NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (id_livro, id_autor)
);

SHOW FIELDS FROM livros_possuem_autores;