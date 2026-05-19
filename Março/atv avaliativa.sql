create database pedro_cardoso_infod;

use pedro_cardoso_infod;

create table livraria (
id int auto_increment primary key,
titulo varchar (100),
autor varchar (50),
ano_publicacao date,
preco int,
estoque int,
data_cadastro date
);

INSERT INTO livraria (titulo, autor, ano_publicacao, preco, estoque, data_cadastro)
VALUE
('Alice no País das Maravilhas', 'Pedro Pascal', '1987-10-25', 80, 1569, '2005-07-06'),
('A Cidade dos Ossos', 'Clarice Lispector', '2001-01-01', 101, 1011, '2011-10-10'),
('Percy Jackson e o Mar de Monstros', 'Cazemiro', '2026-02-05', 800, 5000, '2026-03-01'),
('A Morte é um dia que vale a pena viver', 'Ana Claudia Quintana', '2015-07-04', 45, 160, '2024-02-09'),
('O Homem Mais Rico da Babilônia', 'George Samuel', '2021-05-05', 100, 750, '2023-05-07');

-- Liste todos os livros cadastrados.
select * from livraria;

-- Liste os livros publicados após 2020, mostrando apenas título, autor e ano de publicação.
select titulo, autor, ano_publicacao from livraria
where ano_publicacao > '2020-01-01';

-- Liste os livros com estoque menor que 10, ordenados pelo preço (do maior para o menor).
select * from livraria
where estoque < 10;

-- Liste os livros cadastrados em 2025, mostrando título, autor e data de cadastro.
select titulo, autor, data_cadastro from livraria
where data_cadastro between '2025-01-01' and '2025-12-31';

-- Atualize o preço do livro com id 2 para R$ 150,00.
UPDATE livraria
SET preco = 150
where id = (2);

-- Atualize o estoque do livro com id 3, adicionando 10 unidades ao estoque atual.
UPDATE livraria
SET estoque = estoque + 10
where id = (3);

-- Exclua o livro com id 5.
delete from livraria
where id = (5);

-- Exclua todos os livros publicados antes de 2010.
delete from livraria
where ano_publicacao < '2010-01-01';

select * from livraria;

set sql_safe_updates = 0;
 
 


