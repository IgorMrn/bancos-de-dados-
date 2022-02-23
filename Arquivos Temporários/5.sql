create table Filme(
idFilme int primary key,
titulo varchar (50),
genero varchar (40),
diretor varchar (40)
);


insert into filme values
(01, 'Cidade de Deus', 'Crime/Drama', 'Fernando Meirelles, Kátia Lund'),
 (02, 'Velozes e Furiosos 5: Operação Rio', 'Ação', 'Justin Lin'),
 (03, 'Fique Rico ou Morra Tentando', 'Biografia', 'Jim Sheridan'),
 (04, 'Homem-Aranha: Sem Volta para Casa', 'Ação', 'Jon Watts'),
 (05, 'Tropa de Elite 2: O Inimigo Agora é Outro','Ação', 'José Padilha'),
 (06, 'O Poderoso Chefão', 'crime', 'Francis Ford Coppola'),
 (07, 'Jogos Mortais', 'terror', 'James Wan' 
);


select *from filme;

alter table filme add column protagonista varchar (50);


update filme set protagonista = 'cleber' where idFilme = 1;
update filme set protagonista = 'antonio' where idFilme = 2;
update filme set protagonista = 'junin' where idFilme = 3;
update filme set protagonista = 'roger' where idFilme = 4;
update filme set protagonista = 'juan' where idFilme = 5;
update filme set protagonista = 'eduardo' where idFilme = 6;
update filme set protagonista = 'rafael' where idFilme = 7;


alter table filme modify column diretor varchar (150);

desc filme;

update filme set diretor = 'antonio carlos' where idFilme = 5;
update filme set diretor = 'juan e maria' where idFilme = 2 or idFilme = 7;

update filme set titulo = 'poderoso chefão 3' where idFilme = 6;

delete from filme where idFilme = 3;

select *from filme where genero <> 'drama';

update filme set genero = 'suspense' where idFilme = 7;


select *from filme where genero ='suspense';

desc filme;

truncate table filme;




