use revisao;
create table Motorista(
idMoto int primary key auto_increment,
nome varchar (45),
cnh char(11),
validade date,
categoria char(4)
);


insert into Motorista values

(null,'Igor','12345678901','2023-10-13','B');

create table carro(
idCarro int primary key auto_increment,
modelo varchar (45),
placa char(7),
estado char (2),
fkMotora int,
foreign key (fkMotora) references Motorista(idMoto)
);


insert into carro values
(null,'118 I','ABC1234','SP',1);

select *from Motorista;



create table carroAuto(
idAuto int primary key auto_increment,
modelo varchar(45),
placa char(7),
estado char (2)
);

insert into carroAuto values
(null,'Hb20','ABC125','Sp');


create table motoraAuto(
idMotora int auto_increment,
fkcarro int,
foreign key (fkcarro) references carroAuto (idAuto),
primary key(idMotora,fkCarro),
cnh char(11),
validade date,
categoria char(4)
);


alter table motoraAuto add nome varchar(45) after fkcarro;

insert into motoraAuto values
(null,1,'Felipe','00987654321','2023-12-18','B');

select motoraAuto.nome,carroAuto.modelo from motoraAuto join carroAuto on idAuto = fkcarro;




create table motora(
idMotora int primary key auto_increment,
nome varchar (45),
cnh char(11),
validade date,
categoria char(4),
fkcondutorprinci int,
foreign key(fkcondutorprinci) references motora(idMotora)
);



insert into motora(nome) values
('SPTech');

insert into motora values
(null,'Rafael','13579008642','2023-01-24','AB',null);


update motora set fkcondutorprinci =2 where idMotora =1;



select *from motora as motorista join motora as condutor on condutor.idMotora = motorista.fkcondutorprinci;

select motorista.nome, condutor.nome
from motora as condutor join motora as motorista
on condutor.idMotora = motorista.fkcondutorprinci;

select concat('A empresa',motorista.nome,'possui principal condutor o mototista',condutor.nome,'.')Relatorio
from motora as motorista
join motora  as condutor
on motorista.fkcondutorprinci = condutor.idMotora;

create table motoraAluguel(
id int primary key auto_increment,
nome varchar (45),
cnh char(11),
validade date,
categoria char(4)
);


insert into motoraAluguel values
(null,'Vivian','12345678900','2023-10-13','B');


create table carroAluguel(
idCarro int primary key auto_increment,
modelo varchar(45),
placa char(7),
estado char(2)
)auto_increment = 10000;

insert into carroAluguel values
(null,'i30','abc1234','SP'),
(null,'jetta','def5678','SC');



create table aluguel(
idAluguel int auto_increment,
fkMotora int,
foreign key(fkMotora) references motoraAluguel(id),
fkCarro int,
foreign key (fkCarro) references carroAluguel(idCarro),
primary key(idAluguel,fkMotora,fkCarro),
dtInicio datetime default current_timestamp,
dtFim date,
valor decimal(10,2),
check(valor >= 0)
);


insert into aluguel(fkMotora , fkCarro , valor) values
(1,1000,10.99);

desc aluguel;