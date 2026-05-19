create database banco2502;

use banco2502;

CREATE TABLE funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    data_contratacao DATE NOT NULL,
    idade INT NOT NULL
);

INSERT INTO funcionarios (nome, salario, departamento, data_contratacao, idade)
VALUES
('José', 5070.80,'TI', '2020-05-21', 26),
('Maria', 4260.22, 'Vendas', '2019-02-08', 35),
('Roberto', 2100.60, 'RH', '2025-09-15', 20),
('Nicole', 3198.05 , 'TI', '2023-03-04', 24),
('Santana de Abreu', 4530.02 , 'RH', '2019-01-19', 33 ),
('Saloca Abrao', 2907.53, 'Vendas', '2025-06-21',21 ),
('Lilas da Silva', 3321.78, 'RH', '2022-08-22', 38),
('Jucelino Kubisckeki', 12568.59, 'TI', '2017-10-14', 43);

-- Selecione todos os registros do departamento de TI.
select * from funcionarios
where departamento = 'TI';

-- Selecione todos os registros com salário maior que 4000.
select * from funcionarios
where salario > 4000;

-- Selecione todos os registros com salário entre 3000 e 4000.
select * from funcionarios
where salario between 3000 and 4000;

-- Selecione todos os registros do departamento de Vendas com salário maior que 3300.
select * from funcionarios
where departamento = 'Vendas' and salario > 3300;

-- Selecione todos os registros com idade entre 25 e 35 anos.
select * from funcionarios
where idade between 25 and 35;

-- Selecione todos os registros que NÃO pertencem ao departamento de RH.
select * from funcionarios
where departamento <> 'RH';

-- Selecione todos os registros com salário menor que 3500 OU idade maior que 30.
select * from funcionarios
where salario < 3500 and idade > 30;

-- Selecione todos os registros com data de contratação entre 2019 e 2021.
select * from funcionarios
where data_contratacao between '2019-01-01' and '2021-12-31';

-- Selecione todos os registros do departamento de TI OU Vendas.
select * from funcionarios 
where departamento = 'TI' or departamento = 'Vendas';

-- Selecione todos os registros com salário maior que 3800 E idade menor que 35.
select * from funcionarios
where salario > 3800 and idade < 35;

-- 🔹 Funcionários – Novos Enunciados

-- 1️⃣ Selecione todos os funcionários com salário acima da média salarial da empresa.
select AVG (salario)
from funcionarios;

select * from funcionarios
where salario > 4744.70;

-- 1️⃣  / 2° Selecione todos os funcionários com salário acima de 5000.
select * from funcionarios
where salario > 5000;

-- 2️⃣ Selecione todos os funcionários do departamento de TI contratados após 2020.
select * from funcionarios
where departamento = 'TI' and data_contratacao > '2020-01-01';

-- 3️⃣ Selecione todos os funcionários com idade maior que 40 e salário menor que 5000.
select * from funcionarios
where idade > 40 and salario < 5000;

-- 4️⃣ Selecione todos os funcionários cujo nome começa com a letra “A”.
select * from funcionarios
where nome LIKE 'A';

-- 5️⃣ Selecione todos os funcionários contratados antes de 2018 ou que pertençam ao departamento de RH.
select * from funcionarios
where data_contratacao < '2018-01-01' or departamento = 'RH';

-- 6️⃣ Selecione todos os funcionários com salário entre 2500 e 4500, exceto os do departamento de Vendas.
select * from funcionarios
where salario between 2500 and 4500 and departamento <> 'Vendas';

-- 7️⃣ Selecione todos os funcionários que possuem mais de 30 anos e não pertencem ao departamento de TI.
select * from funcionarios
where idade > 30 and departamento <> 'TI';

-- 8️⃣ Selecione todos os funcionários do departamento de Vendas com idade entre 25 e 40 anos.
select * from funcionarios
where departamento = 'Vendas' and idade between 25 and 40;

-- 9️⃣ Selecione todos os funcionários com salário maior que 6000 ou idade menor que 23.
select * from funcionarios
where salario > 6000 or idade < 23;

-- 🔟 Selecione todos os funcionários contratados no ano de 2022.
select * from funcionarios
where data_contratacao between '2022-01-01' and '2022-12-31';

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    estoque INT NOT NULL
);

INSERT INTO produtos (nome, preco, categoria, estoque)
VALUES
('Notebook Gamer', 14699.00, 'Eletrônicos', 58),
('Caixa de som', 1299.99, 'Eletrônicos', 225),
('Sofá de couro', 1349.59, 'Móveis', 15),
('Mesa de jantar', 579.99, 'Móveis', 77),
('Bola de futebol', 37.19, 'Esportivos', 1980),
('Óculos de natação', 47.47, 'Esportivos', 2597),
('Monitor 60hz 23 polegadas', 879.00, 'Eletrônicos', 5079),
('Cadeira de plastico kit com 10', 439.00, 'Móveis', 86460),
('Relógio digital', 199.99, 'Eletrônicos', 22);

-- Selecione todos os registros com preço entre 300 e 1000.
select * from produtos
where preco between 300 and 1000;

-- Selecione todos os registros da categoria Eletrônicos com estoque entre 10 e 25.
select * from produtos
where categoria = 'Eletrônicos' and estoque between 10 and 25;

-- Selecione todos os registros com preço entre 200 e 500 OU estoque maior que 15.
select * from produtos
where preco between 200 and 500 or estoque > 15;

-- Selecione todos os registros que NÃO são da categoria Móveis.
select * from produtos
where categoria <> 'Móveis';

-- Selecione todos os registros com preço menor que 500 E estoque maior que 5.
select * from produtos
where preco < 500 and estoque > 5;

-- Selecione todos os registros com preço entre 800 e 2500 E categoria Eletrônicos.
select * from produtos
where preco between 800 and 2500 and categoria = 'Eletrônicos';

-- Selecione todos os registros com estoque entre 5 e 15 OU preço menor que 400.
select * from produtos
where estoque between 5 and 15 or preco > 400;

-- Selecione todos os registros com preço entre 100 e 1000 E que NÃO sejam da categoria Móveis.
select * from produtos
where preco between 100 and 1000 and categoria <> 'Móveis';

-- Selecione todos os registros com estoque entre 10 e 30 E preço maior que 300.
select * from produtos
where estoque between 10 and 30 and preco > 300;

-- Selecione todos os registros com preço entre 200 e 800 OU estoque menor que 10.
select * from produtos
where preco between 200 and 800 or estoque < 10;