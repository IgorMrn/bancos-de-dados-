-- Aula 03 - Mais comandos SQL
USE faculdade;
/* Revisão Aula Passada 
CREATE DATABASE
USE
CREATE TABLE
INSERT INTO
SELECT
SELECT COM WHERE
SELECT COM WHERE E LIKE
SELECT COM ORDER BY
UPDATE Aluno SET campoAtualizado = ???? WHERE ID = ?????;
DELETE FROM nomedaTabela WHERE ID = ???;
DROP TABLE
DESC nomeTabela; descreve os campos da tabela
*/

-- DESCREVE OS CAMPOS/ESTRUTURA DA TABELA
DESC Aluno;
DESCRIBE Aluno;

SELECT * FROM Aluno ORDER BY nome;

-- ALTER TABLE
-- ATUALIZA/MODIFICA A ESTRUTURA DA TABELA

-- INT 10 DÍGITOS 1234567890
CREATE TABLE Empresa (
id INT PRIMARY KEY auto_increment,
nome VARCHAR(100),
responsavel VARCHAR(80)
);

-- Descreve os campos/estrutura da tabela Empresa
DESC Empresa;

-- Insere valores na tabela Empresa
-- INSERT INTO nomeTabela VALUES (campo1,campo2,campo3...);
INSERT INTO Empresa VALUES (null, 'C6 Bank', 'Paulo');

SELECT * FROM Empresa;

-- Inserir dados na tabela Empresa, informando os campos
INSERT INTO Empresa (nome, responsavel) VALUES 
	('Safra', 'Franklin');

-- ALTER TABLE RENAME COLUMN
-- Renomear o campo
ALTER TABLE Empresa RENAME COLUMN nome TO nomeEmpresa;

DESC Empresa;
SELECT * FROM Empresa;
-- ALTER TABLE ADD COLUMN
-- INTEIRO = INT 10 DÍGITOS
-- FLOAT = FLOAT 7 DÍGITOS 32 BITS
-- DOUBLE = DOUBLE 15 DÍGITOS 64 BITS
-- DECIMAL = DECIMAL(10,2) 28 DÍGITOS 128 BITS 
-- EXEMPLO DECIMAL 12345678,90
-- EXEMPLO DECIMAL(5,3) 12,345

ALTER TABLE Empresa ADD COLUMN salario DECIMAL(10,2);

DESC Empresa; 
SELECT * FROM Empresa;

-- ATUALIZAR OS SALÁRIOS DOS RESPONSÁVEIS
UPDATE Empresa SET salario = 1.50 WHERE id = 1;
UPDATE Empresa SET salario = 150 WHERE id = 2;

-- ATUALIZAR VÁRIOS REGISTROS COM APENAS UM COMANDO
-- UTILIZANDO O OR
UPDATE Empresa SET salario = 2.99 
	WHERE id = 2 OR id = 1;
-- UTILIZANDO O IN
UPDATE Empresa SET salario = 5.99 WHERE id in (1,2);

-- EXEMPLO DE OR E AND
SELECT * FROM Aluno;
INSERT INTO Aluno VALUES 
	('01221999', 'Vivian', 'Centro', null),
    ('01221888', 'Vivian', 'Paraíso', null);

SELECT * FROM Aluno WHERE nome = 'Vivian';
SELECT * FROM Aluno WHERE nome = 'Vivian' AND bairro = 'Centro';

-- add column
-- rename column
-- drop column
ALTER TABLE Empresa DROP COLUMN salario;
desc Empresa;
select * from Empresa;

-- modify column
ALTER TABLE Empresa MODIFY COLUMN nomeEmpresa VARCHAR(75);

-- TRUNCATE TABLE
-- LIMPA OS REGISTROS E CONFIGURAÇÕES DA TABELA

SELECT * FROM Empresa;
DELETE FROM Empresa WHERE id = 1 or id = 2;

INSERT INTO Empresa VALUES 
	(null, 'BandTec International', null);
    
TRUNCATE TABLE Empresa;

INSERT INTO Empresa VALUES 
	(null, 'C6 Bank', null),
    (null, 'Safra', null);
    
SELECT * FROM Empresa;

DELETE FROM Empresa WHERE id = 2;

INSERT INTO Empresa (nomeEmpresa) VALUES ('Accenture');
INSERT INTO Empresa (id, nomeEmpresa) VALUES (2, 'Deloitte');

ALTER TABLE Empresa ADD COLUMN dtInicio DATE;
-- DATE ('YYYY-MM-DD')
-- DATETIME ('YYYY-MM-DD HH:MM:SS')
-- TIME ('HH:MM:SS')

UPDATE Empresa SET dtInicio = '2016-01-01' WHERE id = 1;
SELECT * FROM Empresa;

ALTER TABLE Empresa MODIFY COLUMN dtInicio DATETIME;
UPDATE Empresa SET dtInicio = '2022-02-23 11:49:00'
	WHERE id = 2;

ALTER TABLE Empresa DROP COLUMN dtInicio;

-- Bons estudos! Prova dia 