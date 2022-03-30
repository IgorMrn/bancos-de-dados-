use trinta;

create table pet(
idPet int auto_increment primary key,
tipo varchar (45),
nome varchar (45),
raça varchar (45),
dtNasc date
)auto_increment = 101;


insert into pet values
(null, 'cachorro', 'rex', 'vira-lata' , '2019-09-20'),
(null, 'gato' , 'luna', 'siames', '2020-01-21'
);

