CREATE DATABASE IF NOT EXISTS sql_exercises;
USE sql_exercises;

-- Criar tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    email VARCHAR(100),
    salario INT
);

-- Inserir 50 registros aleatórios
INSERT INTO usuarios (nome, idade, email, salario)
SELECT
    CONCAT('Usuario', n) AS nome,
    FLOOR(18 + RAND() * 42) AS idade,  -- idade entre 18 e 60
    '' AS email,
    FLOOR(1000 + RAND() * 4001) AS salario  -- salario entre 1000 e 5000
FROM (
    SELECT @row := @row + 1 AS n
    FROM (SELECT 0 UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3) t1,
         (SELECT 0 UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3) t2,
         (SELECT 0 UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3) t3,
         (SELECT @row := 0) t0
    LIMIT 50
) numbers;

SELECT * FROM usuarios;