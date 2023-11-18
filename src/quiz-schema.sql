CREATE DATABASE quiz;

USE quiz;

CREATE TABLE quizzes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE questoes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    enunciado VARCHAR(255) NOT NULL
);

CREATE TABLE quizzes_possuem_questoes(
    id_quiz INT NOT NULL,
    id_questao INT NOT NULL,
    PRIMARY KEY(id_quiz, id_questao),
    FOREIGN KEY (id_quiz) REFERENCES quizzes(id),
    FOREIGN KEY (id_questao) REFERENCES questoes(id)
);

CREATE TABLE alternativas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto VARCHAR(255) NOT NULL,
    correta BOOLEAN DEFAULT false,
    id_questao INT NOT NULL,
    FOREIGN KEY (id_questao) REFERENCES questoes(id)
);

-- ALTER TABLE alternativas
-- ADD FOREIGN KEY(id_questao) REFERENCES questoes(id);

SHOW TABLES FROM quiz;