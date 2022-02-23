create table musica(
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
); 

insert into musica values
(1, 'Khabib', 'Central Cee', 'Drill'),
 (2, 'Aerials', 'System Of A Down', 'Rock'), 
 (3, 'Duality', 'Slipknot', 'Rock'),
 (4, 'Unsainted', 'Slipknot', 'Rock'),
 (5, 'O Bem','Arlindo Cruz', 'pagode'),
 (6, 'Quando A Gira Girou', 'Zeca Pagodinho', 'samba'),
 (7, 'iNDUSTRY BABY remix', 'Lil Nas X', 'rave' 
 );
 
 alter table musica add column curtidas int;
 
 
 update musica set curtidas = 1000 where idMusica = 1;
 update musica set curtidas = 300 where idMusica = 2;
 update musica set curtidas = 3200 where idMusica = 3;
 update musica set curtidas = 3300 where idMusica = 4;
 update musica set curtidas = 333 where idMusica = 5;
 update musica set curtidas = 700 where idMusica = 6;
 update musica set curtidas = 320 where idMusica = 7;
 
 alter table musica modify titulo varchar(80);
 
 update musica set curtidas = 2000 where idMusica = 1;
 update musica set curtidas = 3000 where idMusica = 2 or idMusica = 3;
 update musica set titulo = 'o meu lugar' where idMusica = 5;
 
 delete from musica where idMusica = 4;
 
 select *from musica where genero <> 'funk';
 
 
 select *from musica where curtidas <> '20';
 
 
 desc musica;
 
truncate table musica;
 
 
 
 
 
 