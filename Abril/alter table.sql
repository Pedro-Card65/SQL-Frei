create database altertable;

use altertable;

create table clientes (
	id INT PRIMARY KEY auto_increment,
    nome varchar (50),
    email varchar(50),
    idade int
);

INSERT INTO clientes (nome, email, idade)
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

select * from clientes;

-- 1.dicione uma coluna telefone na tabela clientes.
ALTER TABLE clientes
ADD COLUMN telefone varchar (13);

-- 2.Adicione uma coluna cpf do tipo VARCHAR(14).,
ALTER TABLE clientes
add column cpf varchar(14);

-- 3.Remova a coluna cpf.
ALTER TABLE clientes
drop column cpf;

-- 4.Modifique a coluna nome para permitir até 200 caracteres.
ALTER TABLE clientes
MODIFY nome varchar(200);

-- 5.Renomeie a coluna email para email_principal.
alter table clientes
rename column email to email_principal;

-- 6.Adicione uma coluna status na tabela clientes com valor padrão 'ativo'.
alter table clientes
add column status varchar(20) DEFAULT 'ativo';

select * from clientes;

-- 7.Adicione uma coluna data_nascimento do tipo DATE.
alter table clientes
add column data_nascimento date;

-- 8.Adicione uma restrição NOT NULL na coluna nome.
alter table clientes
modify column nome varchar(200) not null;

-- 9.Remova a chave estrangeira da tabela pedidos. (Utilizar PRIMARY KEY)
alter table clientes
drop column id;

-- 10.Adicione novamente a chave estrangeira entre pedidos.cliente_id e clientes.id.
alter table clientes
add column id int primary key auto_increment;

-- 11.Renomeie a tabela clientes para usuarios.
rename table clientes to usuarios;

-- 12.Altere o tipo da coluna valor da tabela pedidos para DECIMAL(12,2).
alter table usuarios
add column valor int;

alter table usuarios
modify column valor DECIMAL(12,2);

-- 13.Adicione uma coluna forma_pagamento na tabela pedidos após a coluna valor.
alter table usuarios
add column forma_pagamento int;

-- 14.Adicione uma chave única (UNIQUE) na coluna email_principal.
alter table usuarios
modify column email_principal varchar(50) UNIQUE;

-- 15.Remova a chave primária da tabela clientes.
alter table usuarios
drop column id;