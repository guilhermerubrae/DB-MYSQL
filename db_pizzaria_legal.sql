CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    ingredientes TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
    ('Margherita', 'Pizza Italiana com molho de tomate, mussarela, manjericão e azeite'),
    ('Pepperoni', 'Pizza de pepperoni assado na manteiga'),
    ('Vegetariana', 'Pizza com uma variedade de vegetais frescos'),
    ('Quatro Queijos', 'Pizza Combinação de quatro tipos de queijo'),
    ('Doce', 'Pizza doce com chocolate ao leite');


INSERT INTO tb_pizzas (nome_pizza, preco, ingredientes, id_categoria) VALUES
    ('Margherita Clássica', 40.00, 'Molho de tomate, mussarela, manjericão, azeite de oliva', 1),
    ('Pepperoni Supreme', 50.00, 'Pepperoni, queijo derretido', 2),
    ('Vegetariana Light', 45.00, 'Tomate, alho, pimentões, cebolas, azeitonas', 3),
    ('Quatro Queijos Especial', 60.00, 'Mussarela, parmesão, gorgonzola, catupiry', 4),
    ('Chocolate', 35.00, 'Chocolate, morango, chantilly', 5),
    ('Calabresa e Bacon', 48.00, 'Calabresa, bacon, queijo', 2),
    ('Margarita com Pesto', 55.00, 'Molho pesto, mussarela, tomate, manjericão', 1),
    ('Banana Caramelada', 38.00, 'Banana, açúcar caramelizado', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;


-- Todas as pizzas que são doce
SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';
