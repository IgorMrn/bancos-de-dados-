create table sala(
idSala int auto_increment primary key,
sala varchar(45),
andar varchar (45)
);

insert into sala values
(null,'A' ,'4'),
(null, 'B' , '2'),
(null, 'A' , '3'
);

create table notebook(
idNotebook int auto_increment primary key,
faculdade varchar(45),
unidade varchar (45),
patrimonio varchar (45),
so1 varchar (45),
so2 varchar (45)
);



insert into notebook values
(null,'sptech','haddock','1409','windows','mac os'),
(null,'sptech','haddock','1327','mac os','windows'),
(null,'sptech','haddock','1410','windows','linux'),
(null,'sptech','haddock','1427','ubuntu','linux'),
(null,'sptech','haddock','1210','linux','ubuntu'
);











-- select concat(o atributos que você quer) from nome da tabela;
-- para mudar o nome:
-- select concat(o atributos que você quer) as 'NomeSala' from nome da tabela;
