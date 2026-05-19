create database revisão;

use revisão;

create table clientes (
id int auto_increment primary key,
nome varchar (50),
email varchar (100),
cidade varchar (50),
telefone varchar (50),
profissao varchar (50)
);

INSERT INTO clientes(nome, email, cidade, telefone, profissao)
VALUES
-- ('Juan Silva', 'juanzitosilvita@gmail.com', 'São Luíz', '9 234-5561', 'Engenheiro Civil');
('Lucas Osmar', 'luquinha@yahoo.com', 'Belo Horizonte', '9 5520-1200', 'Desenvolvedor Júnior front/end'),
('José Dias', 'josuedia@hotmail.com', 'Belém', '9 7291-8300', 'Engenheiro Químico'),
('Luiza Alves', '', 'São José do Rio Preto', '1215-2513', 'Confeiteiro'),
('Roberta Silva', 'silvaroberta@hotmail.com', 'Salvador', '2175-0124', 'Analista de Marketing Júnior'),
('Pedro Pereira', 'pedro777@gmail.com', 'Rio Claro', '2552-1516', 'Engenheiro Mecânico'),
('Amanda Santos', 'hsuifah@yahoo.com', 'São José do Rio Preto', '1240-521', 'Padeiro'),
('Lucas Prado', 'lulupra@hotmail.com', 'Campinas', '9 1225-7501', 'Engenheiro de Produção'),
('Maria Cardoso', 'mariii@gmail.com', 'São José do Rio Pardo', '9 1241-0000', 'Programador'),
('Paulo Spindola', 'paudoespingarda@hotmail.com', 'Carapicuíba', '8729-5081', 'Engenheiro Civil Júnior'),
('Henrique Crivelli', 'caravelas@hotmail.com', 'São Francisco do Sul', '9 1344-1247', 'Professor'),
('Madalena da Silva', 'madi@gmail.com', 'São Carlos', '1251-8982', 'Engenheiro');

-- Buscar todos os clientes cujo nome começa com a letra "A".
select *  from clientes
where nome like 'a%';

-- Buscar clientes cujo nome termina com a letra "o".
select * from clientes
where nome like '%o';

-- Buscar clientes que tenham "Silva" em qualquer parte do nome.
select * from clientes
where nome like '%Silva';

-- Buscar clientes cujo email seja do Gmail.
select * from clientes
where email like '%@gmail.com';

-- Buscar clientes cujo email termine com "@hotmail.com".
select * from clientes
where email like '%@hotmail.com';

-- Buscar clientes que moram em cidades que começam com "S".
select * from clientes
where cidade like 's%';

-- Buscar clientes cuja cidade contenha a palavra "Rio".
select * from clientes
where cidade like '%Rio%';

-- Buscar clientes cuja profissão contenha "Eng".
select * from clientes
where profissao like '%Eng%';

-- Buscar clientes cujo nome tenha exatamente 5 letras.
select * from clientes
where nome like '_____';

-- Buscar clientes cujo nome tenha "a" como segunda letra.
select * from clientes
where nome like '_a%';

-- Atualizar a profissão para "Desenvolvedor" para todos que possuem profissão parecida com "Programador".
UPDATE clientes
SET profissao = REPLACE (profissao, 'Programador', 'Desenvolvedor')
where profissao like '%Desenvolvedor%';

select * from clientes
where profissao like '%Desenvolvedor%';

SET SQL_SAFE_UPDATES = 0;

-- Atualizar o email para "@outlook.com" para todos que possuem "@hotmail.com".
UPDATE clientes
SET email = REPLACE (email, '@hotmail.com', '@outlook.com')
where email like '%@hotmail.com';

select * from clientes
where email like '%@outlook.com';

-- Atualizar a cidade para "São Paulo - SP" para clientes cuja cidade comece com "São".
UPDATE clientes
SET cidade = 'São Paulo - SP'
where cidade like 'São%';

select * from clientes
where cidade like 'São%';

-- Atualizar o telefone para começar com "11" para clientes cujo telefone comece com "9".
UPDATE clientes
set telefone = REPLACE (telefone, '9', '11')
where telefone like '9%';

select * from clientes
where telefone like '11%';

-- Excluir clientes cujo email seja do Yahoo.
delete from clientes
where email like '%@yahoo.com';

select * from clientes;

-- Excluir clientes cujo nome contenha "Carlos".
delete from clientes
where nome like '%Carlos%';

-- Excluir clientes cuja profissão termine com "Junior".
delete from clientes
where profissao like '%Junior';

-- Buscar clientes cujo telefone termine com "00".
select * from clientes
where telefone like '%00';

-- Buscar clientes cujo nome possua exatamente 4 caracteres antes de um espaço.
select * from clientes
where nome like '____ %';

-- Buscar clientes cujo email tenha a letra "a" antes do símbolo "@".
select * from clientes
where email like '%a@%';