/*Turma: Informática D
Nomes: Gustavo Enzo dos Santos Queiroz
		 Pedro Henrique Alves Cardoso */

create database perguntas_capciosas;

use perguntas_capciosas;

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    estoque INT,
    data_cadastro DATE,
    marca VARCHAR(50)
);

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro, marca) VALUES
('Smartphone G5', 'Eletrônicos', 1500.00, 25, '2023-01-10', 'TechMax'),
('Notebook Ultra', 'Eletrônicos', 4500.00, 10, '2023-02-15', 'LogiX'),
('Monitor 24 Pol', 'Periféricos', 850.00, 15, '2023-01-20', 'Vision'),
('Teclado Mecânico', 'Periféricos', 250.00, 40, '2023-03-05', 'KeyMaster'),
('Mouse Gamer', 'Periféricos', 120.00, 55, '2023-03-12', 'KeyMaster'),
('Cadeira Office', 'Móveis', 750.00, 8, '2023-04-01', 'Comfort'),
('Mesa de Madeira', 'Móveis', 1200.00, 5, '2023-04-10', 'WoodDesign'),
('Fone Bluetooth', 'Acessórios', 199.90, 100, '2023-05-05', 'SoundPro'),
('Carregador Rápido', 'Acessórios', 89.00, 150, '2023-05-10', 'TechMax'),
('Webcam Full HD', 'Periféricos', 320.00, 20, '2023-06-01', 'Vision'),
('HD Externo 1TB', 'Armazenamento', 350.00, 30, '2023-06-15', 'LogiX'),
('SSD 500GB', 'Armazenamento', 280.00, 45, '2023-06-20', 'Speedy'),
('Placa de Vídeo RT', 'Hardware', 2800.00, 4, '2023-07-01', 'GigaCore'),
('Processador i7', 'Hardware', 1900.00, 12, '2023-07-10', 'IntelTech'),
('Memória RAM 16GB', 'Hardware', 450.00, 25, '2023-07-12', 'Speedy'),
('Impressora Laser', 'Escritório', 1100.00, 7, '2023-08-05', 'PrintLine'),
('Papel A4 500fls', 'Escritório', 25.00, 500, '2023-08-10', 'PrintLine'),
('Grampeador Metal', 'Escritório', 45.00, 80, '2023-08-12', 'OfficeTools'),
('Roteador Wi-Fi 6', 'Redes', 550.00, 18, '2023-09-01', 'LinkFast'),
('Cabo Ethernet 5m', 'Redes', 15.00, 200, '2023-09-05', 'LinkFast'),
('Switch 8 Portas', 'Redes', 120.00, 15, '2023-09-10', 'LinkFast'),
('Tablet Pro', 'Eletrônicos', 2200.00, 14, '2023-10-01', 'TechMax'),
('Smartwatch V2', 'Eletrônicos', 650.00, 35, '2023-10-15', 'TechMax'),
('Luminária LED', 'Móveis', 85.00, 42, '2023-11-01', 'LightWay'),
('Estante de Livros', 'Móveis', 400.00, 10, '2023-11-10', 'WoodDesign'),
('Microfone Condensador', 'Acessórios', 450.00, 22, '2023-12-01', 'SoundPro'),
('Caixa de Som BT', 'Acessórios', 299.00, 38, '2023-12-10', 'SoundPro'),
('Hub USB-C', 'Acessórios', 150.00, 60, '2023-12-15', 'LogiX'),
('Fonte 600W', 'Hardware', 380.00, 14, '2024-01-05', 'GigaCore'),
('Cooler Fan 120mm', 'Hardware', 45.00, 100, '2024-01-10', 'GigaCore'),
('Gabinete Gamer', 'Hardware', 520.00, 9, '2024-01-15', 'GigaCore'),
('Pasta Térmica', 'Hardware', 35.00, 120, '2024-01-20', 'Speedy'),
('Mochila Notebook', 'Acessórios', 180.00, 50, '2024-02-01', 'Comfort'),
('Suporte Monitor', 'Escritório', 110.00, 30, '2024-02-10', 'OfficeTools'),
('Quadro Branco', 'Escritório', 210.00, 12, '2024-02-15', 'OfficeTools'),
('Pen Drive 64GB', 'Armazenamento', 45.00, 200, '2024-03-01', 'LogiX'),
('Cartão SD 128GB', 'Armazenamento', 95.00, 85, '2024-03-05', 'LogiX'),
('Projetor HD', 'Eletrônicos', 1800.00, 6, '2024-03-10', 'Vision'),
('Adaptador HDMI', 'Acessórios', 25.00, 150, '2024-03-15', 'LinkFast'),
('Controle Gamer', 'Periféricos', 310.00, 28, '2024-04-01', 'KeyMaster'),
('Fone de Ouvido P2', 'Acessórios', 45.00, 90, '2024-04-05', 'SoundPro'),
('Régua de Energia', 'Acessórios', 55.00, 65, '2024-04-10', 'TechMax'),
('Bateria Externa', 'Acessórios', 140.00, 44, '2024-04-12', 'TechMax'),
('Ar Condicionado Portátil', 'Eletro', 2100.00, 4, '2024-04-20', 'CoolAir'),
('Ventilador Turbo', 'Eletro', 180.00, 25, '2024-04-25', 'CoolAir'),
('Cafeteira Elétrica', 'Eletro', 250.00, 18, '2024-04-28', 'ElectroHome'),
('Torradeira Inox', 'Eletro', 140.00, 20, '2024-05-01', 'ElectroHome'),
('Liquidificador', 'Eletro', 190.00, 15, '2024-05-02', 'ElectroHome'),
('Batedeira Orbital', 'Eletro', 450.00, 10, '2024-05-03', 'ElectroHome'),
('Ferro de Passar', 'Eletro', 110.00, 30, '2024-05-04', 'ElectroHome');

-- select 
	#1 - selecione todos os produtos da tabela
    
-- Resposta:
select * from Produtos;

	#2- Selecione apenas as colunas marca e preço
    
-- Resposta:
select marca, preco from Produtos;


-- in 
	#3- Mostre todos os produtos que sejam da categoria: moveis, eletro ou redes
    
-- Resposta:
select Categoria
from Produtos
where Categoria in ( 'Móveis', 'Eletro', 'Redes');

	#4- Mostre todos os produtos da marca: techmax, electrohome ou vision
    
-- Resposta:
select Marca
from Produtos
where Marca in ('techmax', 'electrohome', 'vision');


-- or
	#5 - Selecione produtos que são da categoria eletro ou da marca TechMax

-- Resposta:
select * from Produtos
where categoria = 'Eletro' or marca = 'TechMax';

	#6 - Selecione produtos com o valor acima de 2000 ou com estoque menor que 10.

-- Resposta: 
select * from Produtos
where preco > 2000 or estoque < 10;


-- and 
	#7- selecione todos que são da categoria armazenamento e estoque maior que 15
    
-- Resposta:
select * from Produtos 
where categoria = 'Armazenamento' or estoque >= 15;

	#8- selecione todos os produtos que sejam cafeteira e que o preco seja maior que 200.00
    
-- Resposta:
select * from Produtos
where nome like '%cafeteira%' and preco > 200;


-- where
	#9 - Indentifique na tabela todos os produtos da categoria Hardware

-- Resposta: 
select * from Produtos
where categoria = 'Hardware';

	#10 - Selecione todos os produtos da marca SoundPro

-- Resposta:
select * from Produtos
where marca = 'SoundPro';

	#11 - Selecione produtos com o valor acima de 550 reais

-- Resposta:
select * from Produtos
where preco > 550;


-- between
	#12 - Selecione produtos com valor entre 500 e 600

-- Resposta:
select * from Produtos
where preco between 500 and 600;

	#13 - Selecione produtos com data de cadastro entre 10/05/2023 e 16/12/23

-- Resposta:
select * from Produtos
where data_cadastro between '2023-05-10' and '2023-12-16';
 

-- update

SET SQL_SAFE_UPDATES = 0;

	#14 - troque todos da coluna categoria, eletro para armazenamento

-- Resposta:
update Produtos
set categoria = 'armazenamento'
where categoria = 'eletro';

	#15 - mude todos da coluna marca, electrohome para soundpro

-- Resposta:
update Produtos
set marca = 'soundpro'
where marca = 'electrohome';

-- like 
	#16 - selecione todos os produtos que começem com a letra 'A'
    
-- Resposta:
select * from Produtos
where nome like 'a%';

	#17 - selecione todas as marcas que tenham a letra 'L' 
    
-- Resposta:
select * from Produtos 
where marca like '%L%';


-- delete

SET SQL_SAFE_UPDATES = 0;

	#18 - Delete todos os produtos com o estoque menor ou igual a 5.
delete from Produtos
where marca = 'GigaCore';

select * from Produtos
where marca = 'GigaCore';


	#19 - Delete os produtos com estoque menor ou igual a 5.
delete from Produtos
where estoque <= 5;

select * from Produtos
where estoque > 5;


-- order by
	#20 - Coloque os dados da coluna com o preço maior que 365 ordenado pelo estoque em ordem descendente.
-- Reposta:
select * from Produtos
where preco > 365 order by estoque desc;

	#21 - Coloque os dados da categoria Eletrônicos ordenados pela data de cadastro
-- Resposta:
select * from Produtos
where categoria = 'Eletrônicos' order by data_cadastro;
