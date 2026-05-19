create database pedro2;

use pedro2;

create table album_discos (
	id int auto_increment primary key,
	nome varchar (100),
    quantidade int,
    musica_fav varchar (100),
    lancamento date
    );
    
    INSERT INTO album_discos (nome, quantidade, musica_fav, lancamento)
    VALUES
    ('Rima Após a Morte', 8, 'Coração Cirúrgico', '2021-12-10');
    
    select * from album_discos;
    
    INSERT INTO album_discos (nome, quantidade, musica_fav, lancamento)
    VALUES
    ('Uni-verse', 3, 'Universe', '2019-12-13'),
    ('Trap The Fato Deluxe',23, 'Pornstar', '2023-10-06'),
    ('The Marshall Mathers LP', 18, 'The Real Slim Shady', '2000-05-23'),
    ('Certified Lover Boy',21 , 'Fair Trade', '2021-09-03');
    
    delete from album_discos
    where id in(6);
    
    UPDATE album_discos
    set nome='Inferno de kant deluxe', quantidade=14,musica_fav='Oh shit',lancamento='2022-10-27'
    where id=7;
    
    
    
    
    
    drop table album_discos;