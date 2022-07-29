CREATE DATABASE bd_classificados;

USE bd_classificados;

CREATE TABLE tb_usuarios (
	Id_usuarios INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
);

CREATE TABLE tb_categoria (
	Id_categoria VARCHAR(255) NOT NULL PRIMARY KEY,
	Catagoria VARCHAR(255) NOT NULL,
);

CREATE TABLE tb_anuncios (
	Id_anuncios INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Contato VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
	Datas DATE NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Categoria VARCHAR(255) NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_usuarios),
	FOREIGN KEY (FK_Categoria) REFERENCES tb_categoria (Id_categoria)
);

INSERT INTO tb_usuarios
VALUES (1, 'SQL', 'Henrique', '12345', 'URLFOTO');

INSERT INTO tb_usuarios
VALUES (10, 'SQL', 'Jaqueline', '54321', 'URLFOTO');

SELECT * FROM tb_usuarios;

SELECT Usuario FROM tb_usuarios;

SELECT * FROM tb_usuarios
WHERE Usuario LIKE '%ri%';


