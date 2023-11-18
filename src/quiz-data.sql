USE quiz;

INSERT INTO quizzes(id, nome) VALUES
    (1, 'Primeiro Quiz'),
    (2, 'Segundo Quiz');

INSERT INTO questoes(id, enunciado) VALUES
    (1, 'Qual banco de dados pode substituir o MySQL utilizando as mesmas ferramentas?'),
    (2, 'Para que serve a ferramenta BrModelo?')

INSERT INTO quizzes_possuem_questoes(id_quiz, id_questao) VALUES
    (1, 1),
    (1, 2),
    (2, 1);

INSERT INTO alternativas(id, texto, id_questao, correta) VALUES
    (1, 'MariaDB', 1, true),
    (2, 'MSSQL', 1, false),
    (3, 'Postgree', 1, false),
    (4, 'Modelagem de Dados', 2, true),
    (5, 'Ediçao de Códigos', 2, false),
    (6, 'Compilaçao de Executável', 2, false);