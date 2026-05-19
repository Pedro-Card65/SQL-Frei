create database rev;

use rev;

CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    vendedor VARCHAR(50) NOT NULL,
    produto VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10, 2) NOT NULL
);

INSERT INTO vendas (vendedor, produto, categoria, quantidade, valor_unitario) VALUES
('Carlos', 'Notebook Dell', 'Informática', 2, 3500.00),
('Ana', 'Mouse Sem Fio', 'Informática', 10, 89.90),
('Bruno', 'Teclado Mecânico', 'Informática', 5, 250.00),
('Carlos', 'Monitor 24"', 'Informática', 1, 1200.00),
('Mariana', 'Smartphone Galaxy', 'Celulares', 1, 2400.00),
('Ana', 'Carregador Tipo C', 'Celulares', 15, 45.00),
('Bruno', 'Fone de Ouvido Bluetooth', 'Áudio', 4, 199.00),
('Mariana', 'Caixa de Som JBL', 'Áudio', 2, 650.00),
('Carlos', 'Cadeira Gamer', 'Móveis', 1, 1500.00),
('Ana', 'Mesa de Escritório', 'Móveis', 1, 850.00),
('Bruno', 'Impressora HP', 'Informática', 2, 799.00),
('Mariana', 'Cartucho HP', 'Informática', 8, 120.00),
('Carlos', 'SSD 1TB', 'Informática', 5, 450.00),
('Ana', 'Memória RAM 16GB', 'Informática', 4, 380.00),
('Bruno', 'Placa de Vídeo RTX', 'Informática', 1, 4200.00),
('Mariana', 'iPhone 15', 'Celulares', 1, 6500.00),
('Carlos', 'Película de Vidro', 'Celulares', 20, 15.00),
('Ana', 'Capa de Celular', 'Celulares', 12, 35.00),
('Bruno', 'Smartwatch', 'Celulares', 3, 1200.00),
('Mariana', 'Suporte de Mesa', 'Móveis', 3, 99.00),
('Carlos', 'Roteador Wi-Fi 6', 'Informática', 3, 499.00),
('Ana', 'Cabo HDMI 2m', 'Informática', 25, 25.00),
('Bruno', 'Webcam Full HD', 'Informática', 2, 350.00),
('Mariana', 'Microfone Condensador', 'Áudio', 1, 550.00),
('Carlos', 'Notebook Lenovo', 'Informática', 1, 2900.00),
('Ana', 'Mouse Pad Gigante', 'Informática', 7, 79.90),
('Bruno', 'Hub USB-C', 'Informática', 6, 120.00),
('Mariana', 'Película de Vidro', 'Celulares', 10, 15.00),
('Carlos', 'Capa de Celular', 'Celulares', 5, 35.00),
('Ana', 'Smartphone Motorola', 'Celulares', 2, 1400.00),
('Bruno', 'Fone de Ouvido Básico', 'Áudio', 12, 49.90),
('Mariana', 'Caixa de Som PC', 'Áudio', 4, 150.00),
('Carlos', 'Luminária de Mesa', 'Móveis', 2, 130.00),
('Ana', 'Armário de Escritório', 'Móveis', 1, 1100.00),
('Bruno', 'Filtro de Linha', 'Informática', 15, 40.00),
('Mariana', 'Pasta Térmica', 'Informática', 3, 35.00),
('Carlos', 'HD Externo 2TB', 'Informática', 2, 480.00),
('Ana', 'Processador Core i5', 'Informática', 2, 1150.00),
('Bruno', 'Placa-Mãe Asus', 'Informática', 1, 950.00),
('Mariana', 'Cooler Fan 120mm', 'Informática', 6, 45.00),
('Carlos', 'Power Bank 20000mAh', 'Celulares', 4, 180.00),
('Ana', 'Suporte Veicular', 'Celulares', 8, 40.00),
('Bruno', 'Ring Light', 'Áudio', 2, 110.00),
('Mariana', 'Soundbar Sony', 'Áudio', 1, 1800.00),
('Carlos', 'Estabilizador 500VA', 'Informática', 2, 220.00),
('Ana', 'Pendrive 64GB', 'Informática', 30, 39.90),
('Bruno', 'Cartão de Memória 128GB', 'Celulares', 10, 89.90),
('Mariana', 'Gabinete Gamer', 'Informática', 1, 450.00),
('Carlos', 'Fonte 650W 80 Plus', 'Informática', 2, 380.00),
('Ana', 'Notebook Asus', 'Informática', 1, 3200.00);

-- vendas (vendedor, produto, categoria, quantidade, valor_unitario)
-- 1. Soma total dos valores vendidos
select round(sum(valor_unitario),2) as Valores_Vendidos from vendas;

-- 2. Média de valor dos produtos
select round(avg(valor_unitario),2) as Medias_Valores from vendas;

-- 3. Maior valor de venda
select max(valor_unitario) as Maior_vendido from vendas;

-- 4. Menor valor de venda
select min(valor_unitario) as Menor_venda from vendas;

-- 5. Quantidade de registros
select count(vendedor) as Quant_Registros from vendas;

-- 6. Quantidade total de produtos vendidos
select sum(quantidade) as Total_ProdVendidos from vendas;

-- 7. Média de quantidade vendida
select round(avg(quantidade),2) as Media_vendas from vendas;

-- 8. Total vendido por vendedor
select vendedor, sum(valor_unitario) as Total_Vendas 
from vendas
group by vendedor;

-- 9. Quantidade de vendas por vendedor
select vendedor, count(quantidade) as Total_Vendas 
from vendas
group by vendedor;

-- 10. Maior valor vendido por vendedor
select vendedor, max(valor_unitario) as Max_Venda
from vendas
group by vendedor;

-- 11. Menor valor por categoria
select categoria, min(valor_unitario) as Max_Venda
from vendas
group by categoria;

-- 12. Média de preços por categoria
select categoria, round(avg(valor_unitario),2) as Media_preços
from vendas
group by categoria;

-- 13. Total de produtos vendidos por categoria
select categoria, sum(quantidade) as Quant_ProdVendidos
from vendas
group by categoria;

-- 14. Quantidade de produtos diferentes
select categoria, count(quantidade) as Produtos_Diferentes
from vendas
group by categoria;

-- 15. Total arrecadado em Informática
select categoria, sum(valor_unitario) as Total_Info_Vendas
from vendas
group by categoria
having categoria = "Informática";

-- vendas (vendedor, produto, categoria, quantidade, valor_unitario)
-- 16. Total vendido maior que 3000
select categoria, sum(valor_unitario) as Total_MaiorQue_3000
from vendas
group by categoria
having sum(valor_unitario) > 3000;

-- 17. Média de vendas por vendedor
select vendedor, round(avg(valor_unitario),2) as Media_Vendas
from vendas
group by vendedor;

-- 18. Soma das quantidades por vendedor
select vendedor, sum(valor_unitario) as Media_Vendas
from vendas
group by vendedor;

-- 19. Categoria com maior total de vendas
select categoria, sum(valor_unitario) as Maior_Venda
from vendas
group by categoria
order by sum(valor_unitario) desc
limit 1;


-- 20. Vendedor com maior número de vendas
select vendedor, count(quantidade) as Número_Vendas
from vendas
group by vendedor
order by count(quantidade) desc
limit 1;

