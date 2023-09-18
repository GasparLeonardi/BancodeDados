CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	Valor DECIMAL,
	Cor VARCHAR(255) NOT NULL,
	Categoria VARCHAR(255) NOT NULL
	PRIMARY KEY(Id)
);

INSERT INTO tb_produtos
(Nome, Quantidade, Valor, Cor, Categoria)
VALUES
('Mesa', 5, 600, 'Preto', 'Casa'),
('Chuveiro', 12, 200,'Branco','Banheiro'),
('Porta Sabonete', 8, 80, 'Branco', 'Banheiro'),
('Televisão', 2,3000, 'Prata', 'Casa'),
('Fogão', 9,700, 'Vermelho', 'Cozinha')

UPDATE tb_produtos SET Cor = 'Branco' WHERE Id = 5

SELECT * FROM tb_produtos WHERE Valor > 500;
SELECT * FROM tb_produtos WHERE Valor < 500;

SELECT * FROM tb_produtos;