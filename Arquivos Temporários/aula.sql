create database informaçoes;

use informaçoes;
create table atleta(
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha char(4)
);


insert into atleta values
(1, 'Alex', 'Skatista', '3'),
(2, 'Sancho', 'Jogador de futebol', '4'),
(3, 'Felipe', 'Esgrima', '1'),
(4, 'Diogo', 'Golf', '4'),
(5, 'Eduardo', 'Tenis', '9'
);

select *from atleta;


update atleta set qtdMedalha = 4 where idAtleta = 1;


update atleta set qtdMedalha = 5 where idAtleta = 2 or idAtleta = 3;


select *from atleta;


update atleta set nome = 'Henrique' where idAtleta = 4;



alter table atleta add column dtNasc date;


update atleta set dtNasc = '1990-01-01' where idAtleta = 1;
update atleta set dtNasc = '1980-02-21' where idAtleta = 2;
update atleta set dtNasc = '2000-01-12' where idAtleta = 3;
update atleta set dtNasc = '1990-04-23' where idAtleta = 4;
update atleta set dtNasc = '1989-05-03' where idAtleta = 5;

delete from atleta  where idAtleta = 5;

select *from atleta where  modalidade <> 'nataçao';

select *from atleta where qtdMedalha <>  '3';

alter table atleta modify column modalidade varchar(60);

describe atleta;


truncate table atleta;





