create database cliente;

use cliente;

create table cliente (
id int auto_increment primary Key,
nome varchar (100),
email varchar (100),
cidade varchar (100)
);

INSERT INTO cliente (nome, email, cidade)
VALUES

('Thomas','l=thomas777@outlook.com','São Paulo'),
('Linguine','ratoseboso@gmail.com','São Gonçalo'),
('Killua','deathgon@gmail.com','São Bernado');

select* from cliente;

UPDATE cliente
set cidade = 'São Paulo'
where id = 2;

delete from cliente
where id in(1);

create table fornecedores (
id int auto_increment primary key,
nome varchar (100), 
telefone varchar (11),
categoria varchar (100)
);

INSERT INTO fornecedores (nome, telefone, categoria)
VALUE
('Camil','11936368282','Alimentos'),
('Michelins','11993865647','Pneus'),
('Adria','11956748566','Alimentos'),
('Castor','11946845489','Colchões');

select * from fornecedores;

UPDATE fornecedores
set telefone = '11955647891'
where id = 3;

delete from fornecedores
where categoria = 'Alimentos';

select * from fornecedores;

SET SQL_SAFE_UPDATES = 0;

create table cursos (
id int auto_increment primary key,
nome varchar (100),
duração time,
professor varchar (100)
);

INSERT INTO cursos (nome, duração, professor)
VALUE
('Artes', '00:50:00','Miguel'),
('Artes Cênicas','00:50:00','José Rodolfo'),
('Matemática','00:50:00','Pedro Ricardo'),
('Artesanato','00:50:00','Douglas de Mello'),
('Ed. Física','00:50:00','Balestrim Ramalho');

select * from cursos;

UPDATE cursos
set professor = 'Carlos Silva'
where id = 4;

delete from cursos
where id in (2);

select * from cursos;

create table compromissos (
id int auto_increment primary key,
descricao varchar (100),
data_ date,
local_ varchar (100)

);
INSERT INTO compromissos (descricao, data_, local_)
VALUES

('Beber água','2026-03-02','sala da chefe'),
('Reunião telemarketing','2026-04-27','Sala 41'),
('Happy Houer','2026-05-11','Bala Layka Drinks');

Select * from compromissos;

UPDATE compromissos
set local_ = 'sala 3'
where id = 1;

delete from compromissos
where id in (2);

select * from compromissos;

create table animais (
id int auto_increment primary key,
nome varchar (100),
especies varchar (100),
dono varchar (100)
);

INSERT INTO animais (nome, especies, dono)
VALUES
/*('Bob Bobo','cão','Eminem'),*/
('Miau','TIGRE DENTE DE SABRE','Uga buga'),
('Shadow','Gato','João'),
('Gray','Gato','Rachel');

select * from animais;

UPDATE animais
set dono = 'Maria'
where id in (3)
;

delete from animais
where especies = 'gatos';








