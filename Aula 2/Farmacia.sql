CREATE DATABASE db_farmacia_bem_estar;
GO
USE db_farmacia_bem_estar;
GO

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255) NOT NULL,
	Valor DECIMAL,
	Validade DATE,
	PRIMARY KEY(Id),
	Categorias_id BIGINT,
	FOREIGN KEY (Categorias_id) REFERENCES tb_categorias(Id)
);

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Categoria VARCHAR(255) NOT NULL,
	Fragancia VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias(Categoria, Fragancia)VALUES  ('Perfume','Lavanda'),		('Perfume','Morango'),
		('Perfume','Ypê'),
		('Remedio','Não se aplica')

INSERT INTO tb_produtos(Nome, Tipo, Valor, Validade,Categorias_id)
VALUES  ('Dipirona','Remedio',50,'2025-02-01',4),
		('Sabonete Natura','Perfumaria',120,'2025-02-01',2),
		('Rivotril','Remedio',110,'2025-02-01',4),
		('Sabonete Liquido','Perfumaria',120,'2025-02-01',3),
		('Neosoro','Remedio',20,'2025-02-01',4),
		('Dorflex','Remedio',40,'2025-02-01',4),
		('Amaciante','Perfumaria',90,'2025-02-01',1),
		('Saboente Jequiti','Perfumaria',80,'2025-02-01',3);


SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Categorias_id
WHERE Valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Categorias_id
WHERE Tipo LIKE 'Remedio';

