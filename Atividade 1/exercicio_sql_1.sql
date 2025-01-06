CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionario(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nascimento DATE,
    salario DECIMAL(7,2) NOT NULL,
    cpf INT(11),
    PRIMARY KEY (id)
);

SELECT * FROM tb_funcionario

ALTER TABLE tb_funcionario MODIFY cpf BIGINT (11);

INSERT INTO tb_funcionario(nome, nascimento, salario, cpf)
VALUES ("Frank Sinatra", "1999-01-25", 4000.00, "22242314571");
INSERT INTO tb_funcionario(nome, nascimento, salario, cpf)
VALUES ("Cássio Gabus Mendes", "1980-03-15", 1800.00, "86546786578");
INSERT INTO tb_funcionario(nome, nascimento, salario, cpf)
VALUES ("Allan", "1998-10-08", 1950.55, "87654443211");
INSERT INTO tb_funcionario(nome, nascimento, salario, cpf)
VALUES ("Fernanda", "1999-01-25", 6000.00, "10203947652");
INSERT INTO tb_funcionario(nome, nascimento, salario, cpf)
VALUES ("Bernard", "1992-08-11", 3000.00, "64538275601");

SELECT * FROM tb_funcionario WHERE salario>2000;

SELECT * FROM tb_funcionario WHERE salario<2000;

UPDATE tb_funcionario SET salario = 6200.00 WHERE id =4;

