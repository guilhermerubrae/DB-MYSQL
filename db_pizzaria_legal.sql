CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    tamanho VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    ingredientes TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, tamanho) VALUES
    ('Salgada Pequena', 'Pequena'),
    ('Salgada Grande', 'Grande'),
    ('Vegetariana', 'Média'),
    ('Doce Pequena', 'Pequena'),
    ('Doce Grande', 'Grande');

INSERT INTO tb_pizzas (nome_pizza, preco, ingredientes, id_categoria) VALUES
    ('Margarita', 25.00, 'Molho de tomate, mussarela, manjericão', 1), -- Salgada Pequena
    ('Calabresa', 35.00, 'Calabresa, cebola, queijo', 2), -- Salgada Grande
    ('Vegetariana Especial', 30.00, 'Tomate, cogumelos, pimentões, cebolas, azeitonas', 3), -- Vegetariana (Média)
    ('Brigadeiro', 20.00, 'Chocolate, granulado, leite condensado', 4), -- Doce Pequena
    ('Frango com Catupiry', 38.00, 'Frango desfiado, catupiry, milho', 2), -- Salgada Grande
    ('Margherita Especial', 28.00, 'Molho de tomate, mussarela, tomate, manjericão', 1), -- Salgada Pequena
    ('Queijo com Chocolate', 22.00, 'Queijo, chocolate, açúcar', 4), -- Doce Pequena
    ('Havaiana', 47.00, 'Presunto, abacaxi, queijo', 2), -- Salgada Grande
    ('Banana com Nutella', 50.00, 'Banana, Nutella, açúcar', 5); -- Doce Grande

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_pizzas.id_categoria = 2 OR tb_pizzas.id_categoria = 4;
