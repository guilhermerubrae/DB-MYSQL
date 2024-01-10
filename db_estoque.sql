CREATE DATABASE db_estoque;

DROP DATABASE db_estoque;

USE db_estoque;
-- DB que queremos manipular

CREATE TABLE tb_marcas(id BIGINT AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY(id)
);

DROP TABLE tb_marcas;

TRUNCATE TABLE tb_marcas;
-- Apaga dados da tabela, mas deixa sua estrutura.

INSERT INTO tb_marcas(nome, ativo) VALUES ("nike", true);

SELECT * FROM tb_marcas;

SELECT nome FROM tb_marcas;

UPDATE tb_marcas SET ativo = true WHERE id = 2;

DELETE FROM tb_marcas WHERE id = 2;

ALTER TABLE tb_marcas ADD descricao VARCHAR(255);

UPDATE tb_marcas SET descricao = "Marca Nike" WHERE id = 1;

CREATE TABLE tb_produtos (id BIGINT AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
preco DECIMAL,
marca_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (marca_id) REFERENCES tb_marcas(id)
);

INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("tênis", 99.90, 2);

ALTER TABLE tb_produtos MODIFY COLUMN preco DECIMAL(6, 2);

UPDATE tb_produtos SET preco = 99.90 WHERE id = 2;

SELECT * FROM tb_produtos WHERE marca_id = 4;

SELECT * FROM tb_produtos WHERE marca_id = 4 AND nome LIKE '%cal%';

INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("Nike Unlimited", 405.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("Nike Trae", 405.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("Nike Run", 450.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("Nike MK Tekno", 405.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("Nike Jordan", 1500.99, 4);


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE marca_id = 4 AND nome LIKE '%cal%';

SHOW DATABASES;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

SELECT * FROM Persons;

ALTER TABLE Persons MODIFY COLUMN Age int NOT NULL;
ALTER TABLE Persons MODIFY Age int NOT NULL;

SELECT * FROM tb_marcas;

ALTER TABLE tb_marcas ADD descricao VARCHAR(255);

UPDATE tb_marcas SET descricao = 'Marca Nike' WHERE nome = 'Nike';

DELETE FROM tb_marcas WHERE nome = 'Nike';