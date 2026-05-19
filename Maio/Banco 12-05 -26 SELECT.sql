-- Nome: Pedro Henrique Alves Cardoso
-- Turma: Informática D

create database selec;

use selec;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    marca VARCHAR(50),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT DEFAULT 0
);

INSERT INTO produtos (nome, categoria, marca, preco, estoque) VALUES
('Smartphone Galaxy S23', 'Eletrônicos', 'Samsung', 4500.00, 15),
('Smartphone Galaxy A54', 'Eletrônicos', 'Samsung', 1800.00, 0),
('Monitor UltraWide 29', 'Informática', 'LG', 1250.00, 8),
('Notebook Inspiron 15', 'Informática', 'Dell', 3800.00, 5),
('Notebook Vostro', 'Informática', 'Dell', 4200.00, 2),
('Monitor Gamer 24', 'Informática', 'Samsung', 950.00, 12),
('Mouse Óptico USB', 'Informática', 'Logitech', 45.00, 50),
('Teclado Mecânico RGB', 'Games', 'Razer', 550.00, 10),
('Console PlayStation 5', 'Games', 'Sony', 3900.00, 4),
('Controle DualSense Pro', 'Games', 'Sony', 450.00, 15),
('Smart TV OLED 55', 'Eletrônicos', 'LG', 5500.00, 3),
('Fone de Ouvido Buds Pro', 'Eletrônicos', 'Samsung', 690.00, 20),
('Caixa de Som Go 3', 'Eletrônicos', 'JBL', 250.00, 30),
('Roteador Wi-Fi 6', 'Informática', 'TP-Link', 380.00, 12),
('HD Externo 1TB', 'Informática', 'Seagate', 320.00, 18),
('Microfone HyperX', 'Games', 'Kingston', 420.00, 7),
('Cadeira Gamer Elite', 'Games', 'DT3', 1300.00, 2),
('Webcam C920 Pro', 'Informática', 'Logitech', 399.00, 9),
('Tablet Galaxy Tab S9', 'Eletrônicos', 'Samsung', 3200.00, 6),
('Smartphone iPhone 15', 'Eletrônicos', 'Apple', 6500.00, 10),
('MacBook Air M2', 'Informática', 'Apple', 8900.00, 4),
('Impressora LaserJet', 'Informática', 'HP', 1100.00, 0),
('Monitor 21.5 Pol', 'Informática', 'Dell', 750.00, 14),
('Mousepad Extra Grande', 'Games', 'HyperX', 85.00, 40),
('Headset Cloud II', 'Games', 'HyperX', 480.00, 11),
('Modem 4G Portátil', 'Informática', 'D-Link', 190.00, 5),
('Cabo HDMI 2.0', 'Acessórios', 'Pix', 35.00, 100),
('Suporte Articulado', 'Acessórios', 'ELG', 160.00, 25),
('Mesa Digitalizadora', 'Informática', 'Wacom', 450.00, 8),
('Projetor CineBeam', 'Eletrônicos', 'LG', 2800.00, 2),
('Smartwatch Watch 6', 'Eletrônicos', 'Samsung', 1500.00, 13),
('Placa de Vídeo RTX 4060', 'Informática', 'Asus', 2200.00, 5),
('SSD 980 Pro 1TB', 'Informática', 'Samsung', 780.00, 15),
('Memória RAM 8GB', 'Informática', 'Kingston', 210.00, 35),
('Fonte ATX 650W', 'Informática', 'Corsair', 450.00, 9),
('Cooler Master Hyper', 'Informática', 'Cooler Master', 180.00, 20),
('Gabinete Mid Tower', 'Informática', 'Pichau', 320.00, 6),
('Pendrive 128GB Pro', 'Informática', 'SanDisk', 140.00, 50),
('Hub USB-C 7 em 1', 'Acessórios', 'Baseus', 220.00, 15),
('Carregador de Parede', 'Acessórios', 'Samsung', 99.00, 40),
('Lâmpada Inteligente', 'Casa', 'Xiaomi', 75.00, 60),
('Fritadeira Air Fryer', 'Casa', 'Mondial', 450.00, 12),
('Cafeteira Dolce Gusto', 'Casa', 'Arno', 520.00, 8),
('Liquidificador Power', 'Casa', 'Philco', 180.00, 15),
('Ventilador Turbo', 'Casa', 'Arno', 250.00, 25),
('Aspirador de Pó Vertical', 'Casa', 'Electrolux', 380.00, 10),
('Batedeira Prática', 'Casa', 'Mondial', 160.00, 0),
('Ferro de Passar Vapor', 'Casa', 'Black+Decker', 120.00, 18),
('Mixer Multiuso', 'Casa', 'Oster', 145.00, 22),
('Moedor de Café', 'Casa', 'Hamilton Beach', 199.00, 5);

#1. Liste todos os produtos.
select * from produtos;

#2. Mostre apenas o nome e o preço dos produtos.
select nome, preco from produtos;

#3. Liste os produtos com preço maior que 100.
select * from produtos
where preco > 100;

#4. Mostre os produtos com estoque menor que 10.
select * from produtos
where estoque < 10;

#5. Liste os produtos da categoria "Eletrônicos".
select * from produtos
where categoria = 'Eletrônicos';

#6. Mostre os produtos da marca Samsung.
select * from produtos
where marca = 'Samsung';

#7. Liste os produtos com preço entre 50 e 500.
select * from produtos
where preco between 50 and 500;

#8. Mostre os produtos cujo estoque seja igual a 0 ou menor que 5.
select * from produtos
where estoque = 0 or estoque < 5;

#9. Liste os produtos da categoria "Informática" e da marca Dell.
select * from produtos
where categoria = 'Informática' and marca = 'Dell';

/*10. Mostre os produtos que pertencem às categorias:
	Eletrônicos
	Informática
	Games*/
select * from produtos
where categoria in ('Eletrônicos','Informática','Games');

#11. Liste os produtos cujo nome começa com a letra "M".
select * from produtos
where nome like 'M%' ;

#12. Mostre os produtos cujo nome termina com "Pro".
select * from produtos
where nome like '%Pro';

#13. Liste os produtos que possuem a palavra "Note" no nome.
select * from produtos
where nome like '%Note%';

#14. Mostre os produtos com preço maior que 1000 e estoque maior que 3.
select * from produtos
where preco > 1000 and estoque < 3;

#15. Liste os produtos da marca LG ou Samsung.
select * from produtos
where marca = 'LG' or marca = 'Samsung';