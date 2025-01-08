CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2)NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    id_categoria BIGINT,
	FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);


CREATE TABLE tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    categoria VARCHAR(255),
    desc_categoria VARCHAR(255)

);

INSERT INTO tb_categorias (categoria, desc_categoria) VALUES
('Salgadas', 'Pizzas com recheios salgados'),
('Doces', 'Pizzas com recheios doces'),
('Veganas', 'Pizzas sem ingredientes de origem animal'),
('Especiais', 'Pizzas com ingredientes diferenciados'),
('Clássicas', 'Pizzas tradicionais e populares');

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome, ingredientes, valor, tamanho, id_categoria) VALUES
('Margherita', 'Molho de tomate, queijo, manjericão', 40.00, 'Média', 5),
('Calabresa', 'Molho de tomate, queijo, calabresa, cebola', 50.00, 'Grande', 1),
('Chocolate com Morango','Chocolate, morangos, leite condensado', 55.00, 'Média', 2),
('Brocolis', 'Molho de tomate, queijo vegano, brocolis', 45.00, 'Média', 3),
('Frango com Catupiry', 'Molho de tomate, queijo, frango, catupiry', 60.00, 'Grande', 5),
('Pizza de Nutella', 'Nutella, morangos, avelãs', 70.00, 'Média', 2),
('Quatro Queijos', 'Queijo muçarela, gorgonzola, parmesão, provolone', 65.00, 'Grande', 1),
('Pizza de Abobrinha', 'Molho de tomate, queijo, abobrinha grelhada', 50.00, 'Média', 3);

SELECT * FROM tb_pizzas;

-- CONSULTAS

SELECT * FROM tb_pizzas WHERE valor>45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50  AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, ingredientes, valor, tamanho, tb_categorias.categoria, tb_categorias.desc_categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT nome, ingredientes, valor, tamanho, tb_categorias.categoria, tb_categorias.desc_categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE categoria = 'doces';
