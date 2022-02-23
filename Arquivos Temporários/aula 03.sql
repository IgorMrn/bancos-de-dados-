-- AULA 03 - MAIS COMANDOS SQL

/* Revisão Aula Passada
CREATE DATABASE
USE
CREATE TABLE
INSERT INTO
SELECT
SELECT COM WHERE
SELECT COM WHERE E LIKE
SELECT COM ORDER BY
UPDATE Aluno SET campoatualizado = ??? where ID = ????
DELE FROM NomeDaTabela WHERE ID = ????
DROP TABLE
DESC NomeDaTabela; descreve os campos da tabela
*/

-- ALTER TABLE 
-- ATUALIZA/MODIFICA A ESTRUTURA DA TABELA



-- INT ACEITA 10 DIGITOS 1234567890

create table empresa(
id int primary key auto_increment,
nome varchar(100),
responsavel varchar(80)
);

describe empresa;

insert into empresa values
(null, 'C6 Bank', 'Henrique'),
(null, 'safra', 'Borges'),
(null, 'vale mobi', 'Kennedy'
);

select *from empresa;


-- INSERIR DADOS DA TABELA EMRPESA, INFORMANDO OS CAMPOS
insert into empresa (nome,responsavel) values
('Safra', 'eu');


select *from empresa;

-- ALTER TABLE
alter table empresa
rename column nome to nomeEmpresa;



-- INT = INTEIRO 10 DIGITOS
-- FLOAT = FLOAT 7 DIGITOS 32 BITS
-- DOUBLE = DOUBLE 15 DIGITOS 64 BITS
-- DECIMAL = DECIMAL (10,2) 28 DIGITOS 128 BITS
-- EXEMPLO DE DECIMAL 12345678,90 2 NUMEROS DEPOIS DA VIRGULA

alter table empresa add column salario decimal(10,2);





-- ATUALIZAR SALARIO
update empresa set salario = 1.50 where id = 1;
update empresa set salario = 2.50 where id = 2;
update empresa set salario = 4.20 where id = 3;

select*from empresa;



-- drop column

alter table empresa drop column salario;

describe empresa;


alter table empresa 
modify column responsavel varchar(70);

desc empresa;



-- truncate table
-- LIMPA REGISTROS E CONFIGURAÇÕES DA TABELA


select *from empresa;



delete from empresa where id = 1 or id = 2;

select *from empresa;


insert into empresa values 
(null , 'Bandtech Internacional' ,null);

truncate table empresa;

-- para excluir so uma linha usa o delete from nome da tabela where id = o id da coluna



alter table empresa add column dtInicio date;

-- date ('yyyy-mm-dd' hh;mm;ss)
-- time ('hh;mm;ss')

update empresa set dtInicio = '2016-01-01' where id = '1';

select *from empresa;

alter table empresa modify column dtInicio datetime;

update empresa set dtInicio = '2022-01-01 11:49:00'
where id = '1';

select *from empresa;











