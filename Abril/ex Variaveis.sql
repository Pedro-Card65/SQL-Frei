-- Pedro Henrique Alves Cardoso

create database variavel;

use variavel;

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




-- 1. Crie uma variável @nome e atribua seu nome. Exiba o valor.
set @nome = 'Pedro';
SELECT * from funcionarios
where nome = @nome;

-- 2. Crie uma variável @idade com valor 20 e exiba.
set @idade = 20;
SELECT * from clientes
where idade = @idade;

-- 3. Crie uma variável @numero e mostre o dobro.
set @numero = 25;
select @numero * 2 AS dobro;

-- 4. Crie duas variáveis @a e @b e mostre a soma.
set @a = 10;
set @b = 55;
select @a + @b AS soma;

-- 5. Crie duas variáveis e mostre a subtração.
set @a = 66;
set @b = 60;
select @a - @b AS subtração;

-- 6. Crie duas variáveis e mostre a multiplicação.
set @a = 50;
set @b = 15;
select @a * @b  AS multiplicação;

-- 7. Crie duas variáveis e mostre a divisão.
set @a = 50;
set @b = 10;
select @a / @b AS Divisão;

-- 8. Atribua valor 100 a uma variável usando SELECT.
set @numero = 1;
select @numero * 100 AS variavel;

-- 9. Atribua o resultado de 10 + 5 a uma variável.
set @soma = 10 + 5;
select @soma;

-- 10. Atribua o resultado de uma multiplicação a uma variável.
set @multi = 10 * 2;
select @multi;

-- 11. Armazene o maior preço da tabela produtos em uma variável.
set @max = round((select max(preco) from produtos) ,2);
select @max as Maior_preço;

-- 12. Armazene o menor preço da tabela produtos.
set @menor = round((select min(preco) from produtos) ,2);
select @menor as Menor_preco;

-- 13. Armazene a média de preços dos produtos.
set @mediaprodutos = round((select avg(preco) from produtos),2);
select @mediaprodutos AS Media_produto;

-- 14. Armazene o total de produtos cadastrados.
set @total = (select count(preco) from produtos);
select @total as Contagem;

-- 15. Armazene o maior salário da tabela funcionarios.
select max(salario) from funcionarios;

-- 16. Armazene o menor salário da tabela funcionarios.
select min(salario) from funcionarios;

-- 17. Armazene a média salarial dos funcionarios.
select avg(salario) from funcionarios;

-- 18. Crie uma variável com valor 100 e mostre produtos com preço maior.
set @var = 100;
select * from produtos
where preco > @var;

-- 19. Crie uma variável com valor 2000 e mostre funcionarios com salário maior.
set @var = 2000;
select * from funcionarios
where salario > @var;

-- 20. Crie uma variável com ID e busque um cliente.
set @id = 1;
select * from clientes
where id = @id;

-- 21. Crie uma variável com nome e filtre produtos.
set @prod = 'Mouse gamer';
select * from produtos
where nome = @prod;

-- 22. Crie uma variável @desconto e aplique desconto nos produtos.
set @desconto = 0.30;
select *, round (preco - (preco * @desconto)) as desconto from produtos;

-- 23. Crie uma variável @aumento e aplique nos salários.
set @aumento = 1.10;
select *, round (salario + (salario * @desconto) ,2) as Aumento from funcionarios;

-- 24. Use variável para somar com uma coluna.
set @aumento = 50;
select *, round (salario + (salario + @aumento) ,2) as Aumento from funcionarios;

-- 25. Use variável para multiplicar uma coluna.
set @multi = 0.25;
select *, round (salario + (salario * @multi) ,2) as Aumento from funcionarios;

-- 26. Use IF com variável para mostrar "Alto" se valor > 100.
set @var = 100;
select *, if (preco > @var, "Alto", "Baixo") as Alto from produtos;

-- 27. Use IF para verificar se número é par ou ímpar.
set @par = preco % 2;
select *, if (preco % 2 > 0, "Impar", "Par") as PorM from produtos;

-- 28. Use IF para mostrar "Aprovado" se nota >= 6.

create table notas (
 id int auto_increment primary key,
 nome varchar(50),
 B1 decimal(4,2),
 B2 decimal(4,2),
 B3 decimal(4,2),
 B4 decimal(4,2)
);

INSERT INTO notas (nome, B1, B2, B3, B4)
VALUE
('Paulo', 8.5, 7, 8, 7.5),
('Miguel', 3, 2, 4, 9),
('Pedro', 6.5, 6.5, 6.5, 6.5);

select *, if ((B1 + B2 + B3 + B4) / 4 >= 6.5, 'Aprovado', 'Reporvado') as Média from notas;

-- 29. Crie uma variável acumuladora para somar preços.
set @acumu = (select  sum(salario) from funcionarios);
select @acumu  as Acumulo;

SET SQL_SAFE_UPDATES = 0;