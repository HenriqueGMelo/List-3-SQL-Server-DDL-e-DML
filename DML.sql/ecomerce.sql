CREATE DATABASE bd_ecomerce;

USE bd_ecomerce;

CREATE TABLE tb_usuarios (
	Id_usuarios INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Documento VARCHAR(255) NOT NULL,
	Endereco VARCHAR(255) NULL,
);

CREATE TABLE tb_compras (
	Id_compras INT NOT NULL,
	FK_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id_usuarios),
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id_produtos),
	Datas DATE,
	Quantidade_Produtos_Comprados INT NULL,
	Endereco VARCHAR(255) NULL,
);

CREATE TABLE tb_produtos (
	Id_produtos INT NOT NULL PRIMARY KEY,
	Produto VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Valor FLOAT NOT NULL,
	Quantidade_Estoque INT NULL,
);

INSERT INTO tb_produtos
VALUES 
(75, 'Suco', 'Bebida sem alcool', 1.00, 350),
(38, 'Macarrão', 'Comida de massa', 8.70, 120);

SELECT * FROM tb_produtos;

SELECT Produto, Descricao FROM tb_produtos;

SELECT * FROM tb_produtos
WHERE Descricao LIKE 'Co%';
