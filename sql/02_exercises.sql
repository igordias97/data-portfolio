-- =====================================================
-- ARQUIVO DE EXERCÍCIOS SQL - TABELA USUARIOS
-- Use este arquivo para praticar consultas SQL
-- =====================================================

-- EXERCÍCIO 1
-- Selecionar todos os usuários da tabela
-- Escreva sua query abaixo:

SELECT * 
FROM usuarios;

-- EXERCÍCIO 2
-- Selecionar apenas os nomes e idades dos usuários

SELECT nome, idade 
FROM usuarios;

-- EXERCÍCIO 3
-- Selecionar usuários com idade maior que 30

SELECT * 
FROM usuarios 
WHERE idade > 30 ;

-- EXERCÍCIO 4
-- Selecionar usuários com salário maior que 3000

SELECT * 
FROM usuarios 
WHERE salario > 3000;

-- EXERCÍCIO 5
-- Selecionar usuários com idade entre 25 e 40

SELECT * 
FROM usuarios 
WHERE idade between 25 AND 40 ;

-- EXERCÍCIO 6
-- Ordenar todos os usuários por idade crescente

SELECT * 
FROM usuarios 
ORDER BY idade ASC ;

-- EXERCÍCIO 7
-- Ordenar todos os usuários por salário decrescente

SELECT * 
FROM usuarios 
ORDER BY salario desc ;

-- EXERCÍCIO 8
-- Contar quantos usuários existem na tabela

SELECT 
	COUNT(*) AS total_usuarios 
FROM usuarios;

-- EXERCÍCIO 9
-- Calcular a média de idade dos usuários

SELECT 
	AVG(idade) AS media_idade 
FROM usuarios;

-- EXERCÍCIO 10
-- Encontrar o salário máximo e mínimo

SELECT 
	MAX(salario) AS maior_salario, 
    MIN(salario) AS menor_salario  
FROM usuarios;

-- EXERCÍCIO 11
-- Atualizar o salário para 5000 de todos os usuários com idade menor que 25 e mostrar o resultado

UPDATE usuarios
SET salario = 5000
WHERE idade < 25;

SELECT *
FROM usuarios
WHERE idade < 25;

-- EXERCÍCIO 12
-- Atualizar o email de todos os usuários para nome+idade+@hotmail.com
-- SUA QUERY AQUI

UPDATE usuarios
SET email = concat(nome,idade,'@hotmail.com');
SELECT *
FROM usuarios;

-- EXERCÍCIO 13
-- Deletar usuários com idade menor que 20

DELETE FROM usuarios
WHERE idade < 20;

-- EXERCÍCIO 14
-- Selecionar usuários cujo nome comece com 'Usuario1'
-- Apenas Usuario 1
SELECT * 
FROM usuarios
WHERE nome = 'Usuario1';

-- Todos que começam com Usuario1, como Usuario10, 11 ....
SELECT * 
FROM usuarios
WHERE nome LIKE 'Usuario1%';

-- EXERCÍCIO 15
-- Selecionar usuários com salário entre 2000 e 4000

SELECT * 
FROM usuarios
WHERE salario between 2000 AND 4000
ORDER BY salario desc;

-- EXERCÍCIO 16
-- Contar quantos usuários têm idade maior que 40

SELECT COUNT(idade) 
FROM usuarios
WHERE idade > 40;

-- EXERCÍCIO 17
-- Selecionar os 5 usuários com maior salário
SELECT *
FROM usuarios
ORDER BY salario DESC
LIMIT 5;

-- Selecionar do 10º ao 20º usuário com menor idade 
SELECT *
FROM usuarios
ORDER BY idade ASC
LIMIT 10 OFFSET 10;

-- EXERCÍCIO 18
-- Adicionar uma coluna nova chamada 'telefone' VARCHAR(20) e deixar vazia

ALTER TABLE usuarios
ADD COLUMN telefone VARCHAR (20);

-- EXERCÍCIO 19
-- Preencher a coluna 'telefone' com valores fictícios (ex: '9999-0000')

UPDATE usuarios
SET telefone = '3532-6595';
SELECT *
FROM usuarios;


-- EXERCÍCIO 20
-- Criar uma coluna 'bonus' INT e preencher como 10% do salário
-- SUA QUERY AQUI

ALTER TABLE usuarios
ADD COLUMN bonus INT;

UPDATE usuarios
SET bonus = salario * 10 / 100;

SELECT *
FROM usuarios;
