CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Notas INT,
	Periodo VARCHAR(255) NOT NULL,
	Professor VARCHAR(255) NOT NULL,
	Materia VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);
ALTER TABLE tb_alunos ALTER COLUMN Notas DECIMAL(6,2)

INSERT INTO tb_alunos
(Nome, Notas, Periodo, Professor, Materia)
VALUES
('Carla', 7.5,'Noite','Kamila','Artes'),
('Eduardo', 6.5,'Tarde','Kamila','Artes'),
('Hugo', 8.0,'Manha','Kamila','Artes'),
('Fernando', 10.0,'Manha','Kamila','Artes'),
('Gabriel', 8.5 ,'Tarde','Samantha','História'),
('Samira', 3.0,'Tarde','Samantha','História'),
('Diego', 5.75,'Noite','Samantha','História'),
('Ariel', 9.0,'Noite','Samantha','História')

SELECT * FROM tb_alunos WHERE Notas > 7.0;
SELECT * FROM tb_alunos WHERE Notas < 7.0;

UPDATE tb_alunos SET Notas = 7.0 WHERE Id = 2

SELECT * FROM tb_alunos;