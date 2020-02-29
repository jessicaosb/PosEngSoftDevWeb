-- INSERINDO DADOS NA TABELA CLIENTE

INSERT INTO cliente (nome) VALUES
	('AMÁVEL PINTO'),('CARLOS DO PINTO VALENTE'),
	('JACINTO LEITE AQUINO RÊGO'),('JACINTO PINTO'),
	('JACINTO REGOROXO');

-- INSERINDO DADOS NA TABELA COMPRA

INSERT INTO compra 
	(codigo_cliente, data_compra, hora_compra) VALUES	
	(1, '2019-05-01', '13:10:00'),(2, '2019-05-02', '16:20:00'),
	(3, '2019-05-01', '13:30:00'),(4, '2019-05-02', '16:10:00'),
	(5, '2019-05-01', '13:20:00');

-- INSERINDO DADOS NA TABELA PRODUTO

INSERT INTO produto (descricao, valor_uni, estoque) VALUES
	('ARROZ', 5.99, 10),('LEITE EM PÓ', 7.85, 10),
	('AÇÚCAR', 5.49, 10),('REFRIGERANTE', 4.9, 10),
	('CERVEJA ITAIPAVA', 1.98, 10);

-- INSERINDO DADOS NA TABELA ITEM

INSERT INTO registro_compra 
	(codigo_compra, codigo_produto, 
	quantidade, desconto) VALUES
	(1, 1, 1, 0),(1, 2, 1, 0),(1, 3, 1, 0),(1, 4, 1, 0),
	(1, 5, 2, 0),(2, 1, 1, 0),(2, 2, 1, 0),(2, 3, 1, 0),
	(2, 4, 2, 0),(2, 5, 1, 0),(3, 1, 1, 0),(3, 2, 1, 0),
	(3, 3, 2, 0),(3, 4, 1, 0),(3, 5, 1, 0),(4, 1, 1, 0),
	(4, 2, 2, 0),(4, 3, 1, 0),(4, 4, 1, 0),(4, 5, 1, 0),
	(5, 1, 2, 0),(5, 2, 1, 0),(5, 3, 1, 0),(5, 4, 1, 0),
	(5, 5, 1, 0);