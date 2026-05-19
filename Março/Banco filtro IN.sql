-- Pedro Henrique & Pedro Miguel

create database cmdin;

use cmdin;

CREATE TABLE vendas (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    idade INT,
    produto VARCHAR(100),
    categoria VARCHAR(50),
    cidade VARCHAR(100),
    valor DECIMAL(10,2)
);

INSERT INTO vendas (nome, idade, produto, categoria, cidade, valor) 
VALUES
('Ana Silva', 28, 'Mouse', 'Eletrônicos', 'São Paulo', 80),
('Bruno Costa', 34, 'Notebook', 'Eletrônicos', 'Curitiba', 3500),
('Juliana Lima', 22, 'Mesa', 'Móveis', 'Belo Horizonte', 500),
('Carlos Pereira', 40, 'Monitor', 'Eletrônicos', 'Rio de Janeiro', 900),
('Fernanda Alves', 31, 'Cadeira', 'Móveis', 'São Paulo', 700),
('Ricardo Souza', 29, 'Teclado', 'Eletrônicos', 'Fortaleza', 120),
('Patrícia Gomes', 27, 'Mouse', 'Eletrônicos', 'Recife', 80),
('Lucas Martins', 24, 'Notebook', 'Eletrônicos', 'Salvador', 4000),
('Amanda Ribeiro', 33, 'Mesa', 'Móveis', 'Curitiba', 500),
('Roberto Santos', 45, 'Cadeira', 'Móveis', 'Porto Alegre', 700),
('Camila Rocha', 26, 'Monitor', 'Eletrônicos', 'São Paulo', 900),
('Diego Fernandes', 38, 'Mouse', 'Eletrônicos', 'Goiânia', 80),
('Juliana Nunes', 25, 'Teclado', 'Eletrônicos', 'Curitiba', 120),
('Marcos Vinicius', 41, 'Notebook', 'Eletrônicos', 'Manaus', 3500),
('Fernanda Dias', 30, 'Mesa', 'Móveis', 'Rio de Janeiro', 500),
('Eduardo Teixeira', 35, 'Cadeira', 'Móveis', 'São Paulo', 700),
('Larissa Melo', 28, 'Monitor', 'Eletrônicos', 'Belo Horizonte', 900),
('Carlos Mendes', 37, 'Mouse', 'Eletrônicos', 'Curitiba', 80),
('Bianca Castro', 23, 'Notebook', 'Eletrônicos', 'Brasília', 4000),
('Rafael Carvalho', 32, 'Mesa', 'Móveis', 'Salvador', 500),
('Ana Paula', 30, 'Cadeira', 'Móveis', 'São Paulo', 700),
('Gustavo Pires', 39, 'Monitor', 'Eletrônicos', 'Rio de Janeiro', 900),
('Juliana Duarte', 28, 'Mouse', 'Eletrônicos', 'Curitiba', 80),
('Thiago Barbosa', 36, 'Teclado', 'Eletrônicos', 'Fortaleza', 120),
('Fernanda Pinto', 35, 'Notebook', 'Eletrônicos', 'Belo Horizonte', 3500),
('Vanessa Freitas', 27, 'Mesa', 'Móveis', 'São Paulo', 500),
('Leonardo Azevedo', 42, 'Cadeira', 'Móveis', 'Curitiba', 700),
('Renata Lopes', 29, 'Monitor', 'Eletrônicos', 'Recife', 900),
('Carlos Souza', 33, 'Mouse', 'Eletrônicos', 'Rio de Janeiro', 80),
('Paulo Henrique', 44, 'Notebook', 'Eletrônicos', 'Porto Alegre', 4000),
('Fernanda Gomes', 26, 'Mesa', 'Móveis', 'São Paulo', 500),
('André Nogueira', 31, 'Cadeira', 'Móveis', 'Curitiba', 700),
('Juliana Rocha', 22, 'Monitor', 'Eletrônicos', 'Belo Horizonte', 900),
('Rodrigo Martins', 38, 'Mouse', 'Eletrônicos', 'Salvador', 80),
('Ana Clara', 25, 'Teclado', 'Eletrônicos', 'São Paulo', 120),
('Felipe Cardoso', 34, 'Notebook', 'Eletrônicos', 'Curitiba', 3500),
('Tatiane Alves', 28, 'Mesa', 'Móveis', 'Rio de Janeiro', 500),
('Bruno Ribeiro', 30, 'Cadeira', 'Móveis', 'Belo Horizonte', 700),
('Carla Mendes', 27, 'Monitor', 'Eletrônicos', 'São Paulo', 900),
('Roberto Lima', 41, 'Mouse', 'Eletrônicos', 'Curitiba', 80),
('Daniela Santos', 36, 'Notebook', 'Eletrônicos', 'Fortaleza', 4000),
('Marcelo Teixeira', 45, 'Mesa', 'Móveis', 'Rio de Janeiro', 500),
('Aline Barros', 24, 'Cadeira', 'Móveis', 'Salvador', 700),
('Carlos Eduardo', 35, 'Monitor', 'Eletrônicos', 'São Paulo', 900),
('Fernanda Monteiro', 28, 'Mouse', 'Eletrônicos', 'Curitiba', 80),
('Igor Freitas', 33, 'Teclado', 'Eletrônicos', 'Recife', 120),
('Patrícia Rocha', 29, 'Notebook', 'Eletrônicos', 'Belo Horizonte', 3500),
('Juliana Viana', 30, 'Mesa', 'Móveis', 'São Paulo', 500),
('Roberto Alves', 47, 'Cadeira', 'Móveis', 'Curitiba', 700),
('Ana Beatriz', 28, 'Monitor', 'Eletrônicos', 'Rio de Janeiro', 900);

drop table clientes_produtos;

-- 1. Liste todos os clientes que moram em São Paulo ou Curitiba.
select * from vendas
where cidade in ("São Paulo", "Curitiba");

-- 2. Liste os clientes que têm idade 22 ou 25.
select * from vendas
where idade in (22, 25);

-- 3. Liste todos os pedidos dos produtos Notebook ou Mouse.
select * from vendas
where produto in ("Notebook", "Mouse");

-- 4. Liste os pedidos com valores 80 ou 120.
select * from vendas
where valor in ('80', '120');

-- 5. Liste apenas os nomes dos clientes Ana e Carlos.
select * from vendas
where nome in ('Ana', 'Carlos');

-- 6. Liste clientes que moram em Rio de Janeiro ou Belo Horizonte.
select * from vendas
where cidade in ('Rio de Janeiro', 'Carlos'); 

-- 7. Liste todos os pedidos feitos pelos clientes 1 e 2.
select * from vendas
where id in (1, 2);

-- 8. Liste os produtos que são Mesa ou Cadeira.
select * from vendas
where produto in ('Mesa', 'Cadeira');

-- 9. Liste clientes com idade 28, 30 ou 35.
select * from vendas
where id in (28, 30, 35);

-- 10. Liste pedidos com valor 500 ou 700.
select * from vendas
where valor in (500, 700);

-- 11. Liste clientes que NÃO moram em São Paulo ou Curitiba.
select * from vendas
where not cidade in ('São Paulo', 'Curitiba');

-- 12. Liste pedidos que NÃO são dos produtos Mouse ou Teclado.
select * from vendas
where not produto in ('Mouse', 'Teclado');

-- 13. Liste clientes que NÃO se chamam Ana ou Marcos.
select * from vendas
where not nome in ('Ana', 'Marco');

-- 14. Liste pedidos feitos pelos clientes 3, 4 e 5.
select * from vendas
where id in (3, 4, 5);
-- 15. Liste clientes que NÃO têm idade 22 ou 25.
select * from vendas
where not idade in (22, 25);
-- 16. Liste os produtos e valores dos pedidos com valor 900 ou 3500.
select * from vendas
where valor in (900, 3500);

-- 17. Liste nome e cidade dos clientes que moram em São Paulo ou Belo Horizonte.
select * from vendas
where cidade in ('São Paulo', 'Belo Horizonte');

-- 18. Liste pedidos que NÃO foram feitos pelos clientes 1 e 2.
select * from vendas
where not id in (1,2);

-- 19. Liste clientes que têm idade 25, 28 ou 30 e moram em São Paulo ou Rio de Janeiro.
select * from vendas
where idade in (25, 28, 30) and cidade in ('São Paulo', 'Rio de Janeiro');

-- 20. Liste pedidos com valor 80, 120 ou 500 e produtos Mouse, Teclado ou Mesa.
select * from vendas
where valor in (80, 120, 500) and produto in ('Mouse', 'Teclado', 'Mesa');

-- 21. Liste clientes que moram em São Paulo ou Curitiba, mas não têm idade 22.
select * from vendas
where cidade in ('São Paulo', 'Curitiba') and idade not in (22);

-- 22. Liste pedidos feitos pelos clientes 1, 3 e 5, mas com valor diferente de 80.
select * from vendas
where id in (1, 3, 5) and valor not in (80);

-- 23. Liste nomes dos clientes que são Ana, Juliana ou Fernanda e têm idade 25, 28 ou 35.
select * from vendas
where nome in ('Ana', 'Juliana', 'Fernanda') and idade in (25, 28, 35);

-- 24. Liste pedidos dos produtos Notebook ou Monitor com valores 900, 3500 ou 4000.
select * from vendas
where produto in ('Notebook', 'Monitor') and valor in (900, 3500, 4000);

-- 25. Liste clientes que não moram no Rio de Janeiro e têm idade 30, 35 ou 40.
select * from vendas
where cidade not in ('Rio de Janeiro') and idade in (30, 35, 40);

-- 26. Liste pedidos que não são do produto Mesa e têm valor 500, 700 ou 900.
select * from vendas
where produto not in ('Mesa') and valor in (500, 700, 900);

-- 27. Liste clientes chamados Roberto ou Carlos que moram em Curitiba ou Rio de Janeiro.
select * from vendas
where nome in ('Roberto', 'Carlos') and cidade in ('Curitiba', 'Rio de Janeiro');

-- 28. Liste pedidos feitos pelos clientes 2, 4 ou 6 e com produtos Mouse, Notebook ou Mesa.
select * from vendas
where id in (2, 4, 6) and produto in ('Mouse', 'Notebook', 'Mesa');

-- 29. Liste clientes com idade 22, 25 ou 28, mas que não moram em Belo Horizonte.
select * from vendas
where idade in (22, 25, 28) and cidade not in ('Belo Horizonte');

-- 30. Liste pedidos com valor diferente de 120 feitos pelos clientes 1, 2, 3 ou 4.
select * from vendas
where valor not in (120) and id in (1, 2, 3, 4);

-- 31. Liste clientes que moram em São Paulo, Curitiba ou Rio de Janeiro e têm idade 25, 28 ou 30, mas não se chamam Ana.
select * from vendas
where cidade in ('São Paulo', 'Curitiba', 'Rio de Janeiro') and idade in (25, 28, 30) and nome not in ('Ana');

-- 32. Liste pedidos com produtos Notebook, Monitor ou Mesa, com valor 500, 900 ou 3500, mas que não sejam do cliente 1.
select * from vendas
where produto in ('Notebook', 'Monitor', 'Mesa') and valor in (500, 900, 3500) and id not in (1);