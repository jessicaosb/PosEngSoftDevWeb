-- CRIANDO O BANCO DE DADOS PDV

CREATE DATABASE IF NOT EXISTS pdv 
	DEFAULT CHARACTER SET utf8 
	COLLATE utf8_general_ci;

USE pdv;

-- CRIANDO A TABELA CLIENTE

CREATE TABLE IF NOT EXISTS cliente (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200) NOT NULL
);

-- CRIANDO A TABELA COMPRA

CREATE TABLE IF NOT EXISTS compra (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	codigo_cliente INT NOT NULL,
	data_compra DATE NOT NULL,
	hora_compra TIME NOT NULL,
	FOREIGN KEY (codigo_cliente) 
	REFERENCES cliente (codigo)
);

-- CRIANDO A TABELA PRODUTO

CREATE TABLE IF NOT EXISTS produto (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(200) NOT NULL,
	valor_uni FLOAT NOT NULL,
	estoque INT NOT NULL
);



CREATE TABLE IF NOT EXISTS produto (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(200) NOT NULL,
	preco FLOAT NOT NULL
);

-- CRIANDO A TABELA ITEM

CREATE TABLE IF NOT EXISTS registro_compra (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	codigo_compra INT NOT NULL,
	codigo_produto INT NOT NULL,
	quantidade INT NOT NULL,
	desconto FLOAT NOT NULL,
	FOREIGN KEY (codigo_compra) 
	REFERENCES compra (codigo),
	FOREIGN KEY (codigo_produto) 
	REFERENCES produto (codigo)
);


CREATE TABLE IF NOT EXISTS registro_compra (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	codigo_compra INT NOT NULL,
	codigo_produto INT NOT NULL,
	FOREIGN KEY (codigo_compra) 
	REFERENCES compra (codigo),
	FOREIGN KEY (codigo_produto) 
	REFERENCES produto (codigo)
);





