create database sprint1;
use sprint1;


create table professor(
idprofessor int auto_increment primary key ,
nome varchar(50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40),
fkdiciplina int,
foreign key (fkdiciplina) references professor (idprofessor)
);

desc professor;

insert into professor values
(null,'igor', 'freitas', 'matematica', 'fisica',1),
(null,'simone', 'pereira', 'historia', 'geografia',2),
(null,'emilly', 'sarah', 'biologia', 'quimica',3),
(null,'felipe', 'marcusso', 'banco de dados', 'java',4),
(null,'vera', 'silva', 'direitos humanos', 'espanhol',5),
(null,'diogo', 'santos', 'arq-comp', 'lógica',6),
(null,'danilo', 'roberto', 'ingles', 'portugues',7);

select * from professor;

create table disciplina(
iddiciplina int primary key auto_increment,
nomeDic varchar(45)
);



insert into disciplina (nomeDic) values
('algoritimos'),
('pesquisa e inovação'),
('banco de dados');


--  Exibir os professores e suas respectivas disciplinas;
select * from professor join disciplina on disciplina.iddiciplina = professor.idprofessor;


--  Exibir apenas o nome da disciplina e o nome do respectivo professor;
select professor.nome , disciplina.nomedic from professor join disciplina on professor.idprofessor = disciplina.iddiciplina;
 
-- Exibir os dados dos professores, suas respectivas disciplinas de um determinado sobrenome;
select * from professor join disciplina on disciplina.iddiciplina = professor.idprofessor where sobrenome = 'freitas';

-- Exibir apenas a especialidade1 e o nome da disciplina, de um determinado professor, ordenado de forma crescente pela especialidade1;
select professor.especialidade1 , disciplina.nomedic from professor join disciplina on professor.idprofessor = disciplina.iddiciplina order by especialidade1;


