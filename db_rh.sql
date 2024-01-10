CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
endereco VARCHAR(100) NOT NULL,
idade INT NOT NULL,
admissao DATE,
salario DECIMAL(10, 2),
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores (nome, endereco, idade, admissao, salario)
VALUES
    ('Jon Snow', 'Castle Black, The Wall', 30, '2023-01-01', 5000.00),
    ('Daenerys Targaryen', 'Dragonstone, Westeros', 25, '2022-05-15', 6000.50),
    ('Tyrion Lannister', 'Casterly Rock, Westerlands', 35, '2022-11-10',7000.75),
    ('Arya Stark', 'Winterfell, The North', 28, '2023-03-20', 5500.25),
    ('Cersei Lannister', 'Kings Landing, Crownlands', 40, '2022-08-12', 8000.00);

SELECT * FROM tb_colaboradores WHERE salario > 6000;

SELECT * FROM tb_colaboradores WHERE salario < 6000;

UPDATE tb_colaboradores SET admissao = '2022-01-01' WHERE id = 1;

SELECT * FROM tb_colaboradores;