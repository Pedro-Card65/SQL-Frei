create database pedro;

use pedro;

create table aula1 (
	Nome varchar (100),
	Idade int,
    Escolaridade varchar (100)
);

INSERT INTO aula1 (Nome, Idade, Escolaridade)
VALUES
('Pedro Miguel',17,'Ensino medio'),
('Pedro Cardoso',21,'Ensino médio completo'),
('Mike Wazalski',25,'Universade U&N'),
('Robson',32,'Pós-graduação'),
('Pumba',31,'Faculdade da vida');	

select * from aula1;

create table livros (
	nome varchar (100),
    editora varchar (100),
    autores varchar (100),
    paginas int,
    ano_de_publicacao int
);



INSERT INTO livros (nome, editora, autores, paginas, ano_de_publicacao)
VALUE
('Laranja Mecânica','Laranja Mecânica','Editora Aleph',352,1962),
('A Morte é um Dia que Vale a Pena Viver','Ana Claudia Quintana Arantes','Sextante',192,2019),
('Diario de um Banana','VR Editora','Jeff Kiney',230,2007),
('A Morte De Ivan Litch','Liev Tolstói','Editora 34',86, 1886),
('O Homem Mais Rico da Babilônia', 'HarperCollins', 'George S. Clason', 160, 1926); 

select * from livros;

drop table livros;

create table musicas(
	id int auto_increment primary key,
	nome_musica varchar (100),
    cantor varchar (100),
    genero varchar (100),
    gravadora varchar (100),
    data_lancamento date
    );
    
    INSERT INTO musicas (nome_musica,cantor,genero,gravadora,data_lancamento)
    value
    ('Shake it Bololo','Carol de niteroi e MC Bin Laden','funk','AOM','2016-04-25'),
    ('Vampiro de Madureira','MC Carol e MC Gorila','funk','Ubuntu Produções','2023-10-25'),
	('Rasom','Lil tecca','Trap','Nick Mira','2019-09-06'),
    ('R U mine','Artisc Monkeys','Rock','Recor CO.','2012-02-27'),
    ('Quer Voar','Matue','Trap','30 PRAUM','2021-08-10'),
    ('Fair Trade','Drake Feat Travis Scott','Trap','Republic Records','2021-09-03'),
    ('Rap do Sasuke e Itachi- A canção dos renegados','7 Minutoz','Rap','7 Minutoz','2020-06-16'),
    ('6 balas','k a m a i t a c h i','acustico','k a m a i t a c h i','2018-02-11'),
    ('Eu entro no BTS','MC Maha','Funk','MC Maha','2020-10-30'),
    ('Minecraf a Música','AuthenticGames','Pop','Marco Tulio','2017-10-14'),
    ('Party Tonight','Mordecay and the Rigbys','Alternative','Regular Show','2010-09-06'),
    ('Hero','Skillet','Rock Cristão','Atlantic Records','2009-05-16'),
    ('Monster','Skillet','Rock Cristão','Atlantic Records','2009-07-14'),
    ('I Hate Everything About You',' Three Days Grace','Rock alternativo','Jive Records','2003-04-28'),
    ('Carry on Wayward Son','Kansas','Hard rock','Kirshner','1976-11-19'),
    ('Eu não venci o sistema','Sid, Chiocki','Rap','Bendita Gravadora','2023-06-08'),
    ('Isso vale minha vida','Sid, Tavin','Rap','Bendita Gravadora','2020-03-05'),
    ('Não existe ateu','Fabio Brazza, Chiocki','Rap','WhiteMonkey Recordings', '2024-02-23'),
    ('Pequenos gigantes','Fabio Brazza, Chiocki','Rap','WhiteMonkey Recordings','2024-03-01'),
    ('Coração Cirúrgico','Fabio Brazza, Paiva','Rap','WhiteMonkey Recordings','2021-10-15'),
    ('Estrelar','Marcos Valle','MPB','Som Livre','1983-05-02');
    
    select * from musicas;
    
    delete from musicas
    where id in (1,2,3,4,5,6,7,8,9,10,11);
    
    create table banco (
    id int auto_increment primary key,
    nome varchar (100),
    idade int,
    banco varchar (100),
    data_criacao date
    );
    
    INSERT INTO banco (nome, idade, banco, data_criacao)
    VALUES
    ('Mbappe',27,'BNP Paribas','2015-12-20');    

select * from banco;

	INSERT INTO banco (nome, idade, banco, data_criacao)
    VALUES
    ('Tatá Werneck',42,'Next','2021-08-20'),
    ('Miguel Costa',22,'Inter','2021-11-03'),
    ('Kanye Omari West', 48, 'JPMorgan Chase', '2022-01-07');



drop table banco;
    
    
    
    
	
