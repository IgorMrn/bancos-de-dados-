create database trinta;
use trinta;

create table funcionario(
idFunc int auto_increment primary key,
nomeFunc varchar (45),
salario decimal (10,2), check (salario > 0),
genero char (1), check (genero = 'f' or genero = 'm')
);


insert into funcionario values
(null, 'Franklin',1.99,'m'),
(null, 'João',1.98,'m'),
(null, 'maria',2.99,'f'
);


create table dependente(
idDep int,
nomeDep varchar (45),
dtNasc date,
fkfunc int,
foreign key (fkFunc) references funcionario (idFunc),
primary key (idDep)
);

insert into dependente values
(1,'Laura', '2000-10-13',1),
(2,'Lauro', '1999-10-13',2),
(3,'Larissa', '1999-01-11',3
);


select idDep,fkFun c,nomeDep,dtNasc
from dependente order by fkFunc;


insert into funcionario values
(null, 'Vivian', 0.99, 'f');



select *from funcionario left join dependente 
	on idFunc = fkFunc where fkFunc is null;
    
    alter table funcionario 
    add fkSupervisor int, add foreign key (fkSupervisor) references funcionario (idFunc);
    
    
    update funcionario set fkSupervisor = 1 where idFunc in(2,3);
    
    select *from funcionario;
    
    
    select * from funcionario join  funcionario as supervisor
		on supervisor.idFunc = funcionario.fkSupervisor
    
    
    
    

