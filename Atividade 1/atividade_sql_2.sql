CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL (7,2) NOT NULL,
    quantidade INT,
    tamanho VARCHAR(12),
    PRIMARY KEY (id)
);

INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Regata", 40.00, 20, "G");
INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Sobretudo", 519.99, 8, "M");
INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Blusa moletom", 150.00, 2, "14 Infantil");
INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Conjunto moletom", 550.00, 3, "P");
INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Camiseta Xadrez", 80.00, 30, "12 Infantil");
INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Calça Social", 100.00, 110, "42");
INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Calça Jeans", 80.00, 18, "40");
INSERT INTO tb_produto (nome, valor, quantidade, tamanho)
VALUES("Camisa Polo", 80.00, 10, "G");

SELECT * FROM tb_produto;

UPDATE tb_produto SET quantidade = 20 WHERE id = 5;


