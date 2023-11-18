USE quiz;

SELECT q.enunciado AS Questao, a.texto AS Resposta FROM alternativas AS a LEFT JOIN questoes AS q
    ON(a.id_questao = q.id)
WHERE a.correta = true;

SELECT qz.nome, q.enunciado FROM quizzes_possuem_questoes AS qpq LEFT JOIN quizzes as qz
    ON(qpq.id_quiz = qz.id) LEFT JOIN questoes as q
    ON(qpq.id_questao = q.id)
WHERE id_quiz = 1;

SELECT qz.nome, q.enunciado FROM quizzes as qz
    LEFT JOIN quizzes_possuem_questoes AS qpq
        ON(qpq.id_quiz = qz.id)
    LEFT JOIN questoes AS q
        ON(qpq.id_questao = q.id)
WHERE qz.id = 1;