create database usuarios;
use usuarios;
create table usuarios2 (
	id INT PRIMARY KEY auto_increment,
    nome varchar (50),
    email varchar(50),
    idade int
);

INSERT INTO usuarios2 (nome, email, idade)
VALUES
('José', 'josezin@gmail.com', 15),
('Ana', 'anaana@hotmail.com', 17),
('Paulo', 'paulospingarda@gmail.com', 19),
('Julia', 'anajulia@hotmail.com', 22),
('Pedro', 'pedromago@hotmail.com', 18),
('Luiza', 'lulu@gmail.com', 21),
('Miguel', 'guelguel22@hotmail.com', 22),
('Mariana', 'mari@hotmail.com', 20),
('Lucas', 'luquinhasdoasfalta@gmail.com', 16),
('Clara', 'claraegema@hotmail.com', 23);

ALTER TABLE usuarios2
add column telefone int After email;

ALTER TABLE usuarios2
add column cpf varchar (14);

alter table usuarios2
drop column telefone;

ALTER TABLE usuarios2
MODIFY nome VARCHAR(150);

alter table usuarios2
rename column email to email_principal;

alter table usuarios2
add column status varchar(20) DEFAULT 'ativo';

alter table usuarios2
add column data_nascimento date;

alter table usuarios2
modify column nome varchar(200) not null;

alter table usuarios2
drop column id;

alter table usuarios2
add column id int primary key auto_increment;

rename table usuarios2 to usuariozinhos;

alter table usuariozinhos
add column valor int;

alter table usuariozinhos
modify column valor DECIMAL(12,2);

alter table usuarios
add column forma_pagamento int;

alter table usuarios
modify column email_principal varchar(50) UNIQUE;

alter table usuarios
drop column id;
 
 



