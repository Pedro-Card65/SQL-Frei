-- Pedro Henrique Alves Cardoso

create database variavel2;

use variavel2;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);

INSERT INTO clientes (nome, idade)
VALUE
('João', 25),
('Luara', 20),
('Rubens', 17),
('Maria', 35),
('Jonas', 19);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

INSERT INTO produtos (nome, preco)
VALUE
('Notebook',1800),
('Mouse gamer', 350),
('Teclado mecânico', 240),
('Desktop gamer', 10580),
('Cadeira ergonomica', 750),
('Mesa de escritório', 999);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    salario DECIMAL(10,2)
);

INSERT INTO funcionarios (nome, salario)
VALUE
('Leticia', 1900),
('Pedro', 2800),
('Renata', 5950),
('Paulo', 1600),
('Neia', 3400);

select  count(salario) from funcionarios;
select  sum(salario) from funcionarios AS Soma_salarios;

Select max(salario) from funcionarios As Maior_salario;
Select min(salario) from funcionarios As Menor_salario;

-- 1. Verifique se um salário é classificado como "Alto", "Médio" ou "Baixo", de acordo com seu valor.
select *, if (salario < 2000, 'Baixo',
		  if (salario < 3000, 'Médio', 'Alto')) as Categoria from funcionarios;

-- 2. Verifique se uma pessoa é maior ou menor de idade com base na idade informada.
select *, if (idade > 18, 'Maior', 'Menor') as Maioridade from clientes;

-- 3.Verifique se o preço de um produto é considerado caro ou barato.
select *, if (preco > 800, 'Caro', 'Barato') as Preços from produtos;

-- 4. Classifique um número como positivo, negativo ou zero.
set @n = -1;
select @n, if (@n > 0, "Positivio",
						if (@n < 0, 'Negativo', 'Zero')) as Número;

-- 5. Calcule o salário com bônus, aplicando uma porcentagem diferente dependendo do valor do salário.
select *, if (salario < 2000, salario * 0.50,
		  if (salario < 3000, salario * 0.25, salario * 0.10)) as Bônus from funcionarios;

-- 6. Verifique se um cliente pode realizar uma compra com base na idade e no saldo disponível.
set @idade = 19;
set @saldo = 101.50;
select @idade, @saldo, if (@idade < 18 and @saldo < 100, 'Compra negada', 'Compra aprovada') as Compra;

-- 7. Verifique se um produto está em promoção com base no preço.
set @produ = 100;
set @promo = 40;
select @produ, @promo, if (@produ > @promo, 'Sem promoção', 'Em promoção') as Promoções;

-- 8. Classifique uma nota em categorias (A, B, C ou D) de acordo com seu valor.


-- 9. Verifique se um número é múltiplo de 5.


-- 10. Compare dois valores e identifique qual é o maior.