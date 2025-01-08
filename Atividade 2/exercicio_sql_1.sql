CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(40),
    buff VARCHAR(255)

);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    ataque INT,
    defesa INT,
    taxa_de_acerto VARCHAR(20),
    classe_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe, buff)
VALUES ("Arqueiro" , "Velocidade de movimento");
INSERT INTO tb_classes (classe, buff)
VALUES ("Paladino" , "20% de defesa");
INSERT INTO tb_classes (classe, buff)
VALUES ("Mago" , "5% de mana adicional por LVL");
INSERT INTO tb_classes (classe, buff)
VALUES ("Berserker" , "20% de dano no corpo a corpo");
INSERT INTO tb_classes (classe, buff)
VALUES ("Curandeiro" , "10% de mana e velocidade de movimento");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("CLEBER", 2500, 1200, "20%", 4 );
INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("Candelabro_Games2011" , 1200, 2500, "10%", 2);
INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("Fernando Pessoa" , 1800, 1800, "50%", 1);
INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("Bruno", 900, 2100, "25%", 5);
INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("Valesca", 2800, 300, "40%", 3 );
INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("Albuquerque", 2500, 1200, "20%", 4 );
INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("Arlindo Cruz", 1800, 1800, "50%", 1);
INSERT INTO tb_personagens(nome, ataque, defesa, taxa_de_acerto, classe_id)
VALUES("Renata", 1200, 2500, "10%", 2);

-- Selects pro exercicio

SELECT * FROM tb_personagens WHERE ataque>2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%"

SELECT nome, ataque, defesa, taxa_de_acerto, tb_classes.classe, tb_classes.buff
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;


SELECT nome, ataque, defesa, taxa_de_acerto, tb_classes.classe, tb_classes.buff
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.id = 1;

