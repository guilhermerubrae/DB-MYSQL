CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
habilidade VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,
	id_classe BIGINT,
    nome_personagem VARCHAR(30) NOT NULL,
    nivel INT NOT NULL,
    vida INT NOT NULL,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (tipo, habilidade) VALUES
    ('Guerreiro', 'Espada Valiriana'),
    ('Mago', 'Dragões de Fogo'),
    ('Arqueiro', 'Flecha Precisa'),
    ('Assassino', 'Magia Profana'),
    ('Metamorfo', 'Clonar Pessoas');

INSERT INTO tb_personagens (id_classe, nome_personagem, nivel, vida) VALUES
    (1, 'Jon Snow', 30, 100),
    (2, 'Daenerys Targaryen', 25, 80),
    (5, 'Arya Stark', 28, 90),
    (4, 'Tyrion Lannister', 35, 75),
    (1, 'Khal Drogo', 32, 110),
    (4, 'Sansa Stark', 26, 95),
    (4, 'Cersei Lannister', 33, 70),
    (2, 'Bran Stark', 22, 85);
    
ALTER TABLE tb_personagens ADD poder_ataque INT NOT NULL;

UPDATE tb_personagens SET poder_ataque = 2700 WHERE id_personagem = 1;
UPDATE tb_personagens SET poder_ataque = 1000 WHERE id_personagem = 2;
UPDATE tb_personagens SET poder_ataque = 2000 WHERE id_personagem = 3;
UPDATE tb_personagens SET poder_ataque = 4000 WHERE id_personagem = 4;
UPDATE tb_personagens SET poder_ataque = 6000 WHERE id_personagem = 5;
UPDATE tb_personagens SET poder_ataque = 1000 WHERE id_personagem = 6;
UPDATE tb_personagens SET poder_ataque = 2000 WHERE id_personagem = 7;
UPDATE tb_personagens SET poder_ataque = 1700 WHERE id_personagem = 8;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%e%';

SELECT * FROM tb_classes
INNER JOIN tb_personagens 
ON tb_classes.id = tb_personagens.id_classe;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id_classe
WHERE tb_personagens.id_classe = 4;