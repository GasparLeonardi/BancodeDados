CREATE DATABASE db_generation_game_online;
GO
USE db_generation_game_online;
GO

CREATE TABLE tb_personagens(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255) NOT NULL,
	Regiao VARCHAR(255) NOT NULL,
	Raça VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id),
	Classes_id BIGINT,
	FOREIGN KEY (Classes_id) REFERENCES tb_classes(Id)
);

CREATE TABLE tb_classes(
	Id BIGINT IDENTITY(1,1),
	Lane VARCHAR(255) NOT NULL,
	Spell VARCHAR(255) NOT NULL, 
	PRIMARY KEY(Id)
)

-- Insere dados na tabela tb_classes
INSERT INTO tb_classes(Lane, Spell)VALUES  ('Atirador','Curar/Exaustão'),		('Suporte','Queimar/Exaustão'),
		('Meio','Queimar/Barreira'),
		('Selva','Golpear'),
		('Topo','Teleporte/Queimar');
-- Insere dados na tabela tb_personagens
INSERT INTO tb_personagens
(Nome, Tipo, Regiao, Raça, Classes_id)
VALUES  ('Kai Sa','Carry','Vazio','Humana/Criatura',1),
		('Rell','Tanque','Noxus','Humana',2),
		('Rek Sai','Lutador','Vazio','Criatura',4),
		('Fiora','Lutador','Demacia','Humana',5),
		('Lux','Mago','Demacia','Humana',3),
		('Sara Fortune','Carry','Aguas de Sentina','Humana',1),
		('Blitzcrank','Tanque','Zaum','Robo',2),
		('Camille','Lutador','Piltover','Humana/Robo',5);

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.Classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.Classes_id
WHERE Nome LIKE 'C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.Classes_id
WHERE Tipo LIKE 'Carry';
	

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

--DROP TABLE tb_classes;
--DROP TABLE tb_personagens;






