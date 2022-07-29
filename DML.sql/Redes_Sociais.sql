CREATE DATABASE bd_redes_sociais;

USE bd_redes_sociais;

CREATE TABLE tb_usuarios (
	Id_usuarios INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
);

CREATE TABLE tb_grupos (
	Id_grupos VARCHAR(255) NOT NULL PRIMARY KEY,
	Grupo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id_usuarios),
);

CREATE TABLE tb_postagens (
	Id_postagens INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
	Datas DATE NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Grupo VARCHAR(255) NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id_usuarios),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id_grupos)
);

CREATE TABLE tb_usuarios (
	FK_Grupo VARCHAR(255) NOT NULL,
	datas DATE NOT NULL
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id_grupos)
);

INSERT INTO tb_usuarios
VALUES 
( 27, 'Henrique', 'Henrique Melo', '1357', 'URLFOTO'),
( 86, 'Jorge', 'Jorge', '670021', 'URLFOTO'),
( 52, 'Carol', 'Carol', '873031', 'URLFOTO');

SELECT * FROM tb_usuarios

SELECT Senha FROM tb_usuarios

SELECT * FROM tb_usuarios
WHERE Senha LIKE '%3%';
