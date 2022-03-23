-- CRIANDO BANCO DE DADOS 
CREATE DATABASE revisao;

-- SELECIONANDO O BANCO DE DADOS 
USE revisao;

-- CRIAR A TABELA MIDIA
CREATE TABLE midia (
idMidia INT primary key auto_increment,
nome VARCHAR (100),
tamanho DOUBLE NOT NULL,
dtMidia DATETIME DEFAULT CURRENT_TIMESTAMP,
preco DECIMAL (5,2) DEFAULT 1.99,
tipo VARCHAR (50),

-- o constraintm é uma restrição que  da um nome para o check 
-- e o check funciona para determinar o tipo que eu defini seja um audio um video ou uma imagem
CONSTRAINT chkTipo CHECK (tipo = 'audio' or tipo = 'video' or tipo = 'imagem')
)auto_increment = 100;

-- inserindo dados na tabela
insert into midia (nome, tamanho, tipo ) values
('foto das antiga', 100.99 ,'imagem');
	
-- excluindo o check chkTipo
ALTER TABLE midia drop check chkTipo;

-- adicionando novas condicoes para o check tipo 
ALTER TABLE midia ADD CHECK (tipo = 'audio' or tipo = 'video'); 

desc midia;

-- inserindo os dados 
INSERT INTO midia (nome, tamanho, tipo) VALUES
	('video das antiga',100.99, 'video'),
    ('audio novo', 99, 'audio');

select * from midia;

-- adicionando a coluna localizacao na tabela 
ALTER TABLE midia ADD localizacao VARCHAR (120);

DESC midia;

-- adicionando os dados na localizacao
UPDATE midia SET localizacao = 'consolação' WHERE idMidia in (100,101);    

-- selecionando os dados a partir nome
SELECT * from midia order by nome;
SELECT * from midia order by nome DESC;

-- selecionando a partir de uma letra do nome 
SELECT * from midia where nome like 'a%';
SELECT * from midia where nome like '%o';
SELECT * from midia where nome like '_u%';
SELECT * from midia where nome like '%o_';
select * from midia where nome like '%d%';

-- deletando o dado media 
DELETE FROM midia WHERE idMidia = 100;

-- selecionando todos os dados da tabela midia
SELECT * FROM midia;

--  modificando a coluna localizacao 
ALTER TABLE midia modify column localizacao varchar (80);

-- renomeando a coluna nome para nomeMidia
ALTER TABLE midia rename column nome to nomeMidia;
desc midia;


    