-- Especifica a base de dados onde serão executados os comandos a seguir
USE exemplo;

-- Criar um novo registro na tabela indicada
INSERT INTO alunos(nome) VALUES('Marco Carvalho');
INSERT INTO alunos(id, nome) VALUES(10, 'Marco Carvalho');
INSERT INTO alunos(nome, cpf) VALUES('Marco Carvalho', '15428796584');
INSERT INTO alunos(nome, cpf) VALUES('José Silva', '98756254136');
INSERT INTO alunos(nome, cpf) VALUES('Ana Souza', '65478936521');
INSERT INTO alunos(nome, cpf) VALUES('Maria Rodrigues', '87954621547');

INSERT INTO alunos(nome, cpf) VALUES
    ('Antônio da Silva', '49865235874'),
    ('Maria Aparecida', '98574862514');
-- Seleciona dados na tabela selecionada
SELECT * FROM alunos;

-- Atualizar registros na base de dados
UPDATE alunos SET cpf = '45678912385' WHERE id = 10;
UPDATE alunos SET cpf = '98745632174', nome = 'Novo Teste' WHERE id = 10;

-- Remove registros da base de dados
DELETE FROM alunos WHERE cpf = '98745632174';

-- Consultas
SELECT nome, cpf FROM alunos;
SELECT id, nome, cpf FROM alunos WHERE nome LIKE '%Silva';
SELECT nome, cpf FROM alunos WHERE id = 12;
SELECT id, nome, cpf FROM alunos WHERE nome LIKE '%Silva' AND nome LIKE 'A%';
SELECT id, nome, cpf FROM alunos WHERE nome LIKE '%Silva' OR nome LIKE '%Rodrigues';

INSERT INTO generos(id, nome) VALUES
    (1, 'Aventura'),
    (2, 'Policial');

INSERT INTO livros(titulo, id_genero) VALUES
    ('A Sociedade do Anel', 1),
    ('Assassinato no Expresso do Oriente', 2),
    ('Cronicas de Nárnia', 1);

SELECT livros.id, livros.titulo, generos.nome FROM livros LEFT JOIN
    generos ON livros.id_genero = generos.id;

SELECT l.id, l.titulo, g.nome AS genero FROM livros AS l LEFT JOIN
    generos AS g ON l.id_genero = g.id;

SELECT l.id, l.titulo, g.nome AS genero FROM livros AS l LEFT JOIN
    generos AS g ON l.id_genero = g.id WHERE l.id_genero = 1;

INSERT INTO autores(id, nome) VALUES
    (1, 'Agatha Cristie'),
    (2, 'JRR Tokien');

INSERT INTO livros_possuem_autores(id_livro, id_autor) VALUES
    (1, 2),
    (2,1);

SELECT * FROM livros AS l LEFT JOIN
    generos AS g ON l.id_genero = g.id LEFT JOIN
    livros_possuem_autores AS lpa ON l.id = lpa.id_livro LEFT JOIN
    autores AS a ON lpa.id_autor = a.id;