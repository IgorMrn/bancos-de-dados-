create database cliente;
use cliente;

create table cliente(
idCliente int primary key auto_increment,
nomeCliente varchar(45),
email varchar(45),
bairro varchar(45),
cep varchar(45),
fkIndicado int,
foreign key (fkIndicado) references cliente (idCliente)
);



create table venda(
idvenda int auto_increment primary key,
totalvenda varchar (45),
datavenda date,
fkCliente int,
foreign key (fkCliente) references cliente (idCliente)
)auto_increment = 50;




create table produto(
idproduto int primary key,
nomeproduto varchar (45),
descri varchar (100),
preco double
)auto_increment = 100;


alter table produto modify column descri varchar(100);

create table venda_has_preço(
fkvenda int,
foreign key (fkvenda) references venda(idvenda),
fkproduto int,
foreign key (fkproduto) references produto(idproduto),
desconto varchar(45),
qtdvenda varchar (45)
);


insert into cliente(nomeCliente, email, bairro, cep, fkIndicado) values
('roger','roger@gmail.com','rua são josé' ,'01214242',null),
('jorje','jorje@gmail.com','rua são jorje','01214202',1),
('raphaella','raphaella@gmail.com','rua rei','01214252',2);



insert into venda values
(null,'60','2022-05-04',1),
(null,'80','2022-08-17',2),
(null,'10','2022-11-01',1),
(null,'5','2022-01-21',2),
(null,'100','2022-09-21',1);


insert into produto values
(1,'podrao','lanche que tem de tudo um pouco','15.90'),
(2,'miojo nissin','macarrao instantaneo','2.00'),
(3,'açai trufado','açai trufado com a cobertura que voce quiser','19.99'),
(4,'jorje limpeza','um kit de limpeza que tem tudo que voce precisa','35.50');


select *from cliente  join venda on fkCliente = idCliente;  



select *from cliente join venda on fkCliente = idCliente where idCliente  = '1';  









