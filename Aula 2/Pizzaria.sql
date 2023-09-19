CREATE DATABASE db_pizzaria_legal;
GO
USE db_pizzaria_legal;
GO

CREATE TABLE tb_pizzas(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Sabor VARCHAR(255) NOT NULL,
	Massa VARCHAR(255) NOT NULL, 
	Valor DECIMAL,
	PRIMARY KEY(Id),
	Categorias_id BIGINT,
	FOREIGN KEY (Categorias_id) REFERENCES tb_categorias(Id)
);
CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Tipo VARCHAR(255) NOT NULL,
	VegVege VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias(Tipo, VegVege)VALUES  ('Normal','Possui carnes, produtos de origem animal e vegetal'),		('Vegetariana','Possui produtos de origem animal e vegetal'),
		('Vegana','Apenas produtos de origem vegetal')

-- Insere dados na tabela tb_pizzas
INSERT INTO tb_pizzas
(Nome, Sabor, Massa, Valor, Categorias_id)
VALUES  ('Portuguesa','presunto, cebola, ovos, queijo','Normal',50,1),
		('Baiana','calabresa, ovos,queijo','Normal',50,1),
		('Quatro Queijos','queijo','Normal',60,2),
		('Brasileira','presunto e queijo','Normal',50,1),
		('Lombo','lombo, queijo','Pan',49,1),
		('Brocolis','Brocolis, queijo','Pan',50,2),
		('Strogonoff','Frango e queijo','Pan',20,1),
		('Berinjela','Berinjela','Pan',40,3);

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categorias_id
WHERE Valor < 45;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categorias_id
WHERE Valor < 45;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categorias_id
WHERE Valor > 45;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categorias_id
WHERE Valor BETWEEN 45 AND 100;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categorias_id
WHERE Valor BETWEEN 45 AND 100;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categorias_id
WHERE Nome LIKE '%M%'



SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;



