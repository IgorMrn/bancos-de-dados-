create table professor(
idProfessor int primary key,
nome varchar (50),
especialidade varchar (40),
dtNasc date
);

insert into professor value
(1, 'valter', 'banco de dados', '1990-01-02'),
(2, 'vladmir', 'portugues', '1998-04-21'),
(3, 'vera', 'matematica', '1995-10-22'),
(4, 'rafael', 'Tecnologia da informatica', '1985-10-04'),
(5, 'viviam', 'biologia' , '1999-11-11'),
(6, 'cleiton', 'socio' , '1991-10-01'
);

select *from professor;

create table titulares(
id  int auto_increment primary key ,
funcao varchar (50),
check (funcao in('monior,assistente, titular'))
);

insert into professor value
(7, 'roger', 'Ti', '2000'
);
