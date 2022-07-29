CREATE DATABASE bd_marketplace;

USE bd_marketplace;

CREATE TABLE tb_usuarios (
	Id_usuarios INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
);

CREATE TABLE tb_compras (
	Id_compras INT NOT NULL,
	FK_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_usuarios),
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id_produtos),
	Datas DATE
);

CREATE TABLE tb_produtos (
	Id_produtos INT NOT NULL PRIMARY KEY,
	Produto VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Valor FLOAT NOT NULL,
	Foto VARCHAR(255) NULL,
	FK_Criador INT NOT NULL,
	FK_Categoria VARCHAR(255) NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id_usuarios),
	FOREIGN KEY (FK_Categoria ) REFERENCES tb_categorias (Id_categorias)
);

CREATE TABLE tb_categorias (
	Id_categorias VARCHAR(255) NOT NULL PRIMARY KEY,
	Catagoria VARCHAR(255) NOT NULL,
);

INSERT INTO tb_categorias
VALUES (100, 'Esporte');

INSERT INTO tb_categorias
VALUES (80, 'Atletismo');

SELECT * FROM tb_categorias;

SELECT Catagoria FROM tb_categorias;

SELECT * FROM tb_categorias
WHERE Catagoria LIKE '%mo';