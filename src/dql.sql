-- Especifica a base de dados onde serão executados os comandos a seguir
USE exemplo;

-- Criar um novo registro na tabela indicada
INSERT INTO alunos(nome) VALUES('Marco Carvalho');
INSERT INTO alunos(id, nome) VALUES(10, 'Marco Carvalho');
INSERT INTO alunos(nome, cpf) VALUES('Marco Carvalho', '15428796584');
-- Seleciona dados na tabela selecionada
SELECT * FROM alunos;