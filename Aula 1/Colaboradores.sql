CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_dadoscolab(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Departamento VARCHAR(255) NOT NULL,
	Idade INT,
	Admissao DATE,
	Salario DECIMAL NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_dadoscolab
(Nome, Departamento, Idade, Admissao, Salario)
VALUES
('Danilo', 'Vendas', 37,'2022-09-07',2700),
('Michel', 'Vendas',23,'2022-11-18',2700),
('Davi', 'Vendas',22,'2022-07-18',2700),
('Caique', 'RH',25,'2022-02-18',2000),
('Maria', 'RH',34,'2022-03-20',2000)

UPDATE tb_dadoscolab SET Salario = 1999 WHERE Id = 4
UPDATE tb_dadoscolab SET Salario = 1999 WHERE Id = 5

SELECT * FROM tb_dadoscolab WHERE Salario > 2000;
SELECT * FROM tb_dadoscolab WHERE Salario < 2000;




SELECT * FROM tb_dadoscolab;
