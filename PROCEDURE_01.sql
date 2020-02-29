
DELIMITER ##
CREATE PROCEDURE consulta_compra(codigo_compra INT)
BEGIN
SELECT * FROM compra WHERE codigo = codigo_compra;
END ##
DELIMITER ;

CALL consulta_compra(3);



-------------------------------------------------

DELIMITER ##

CREATE PROCEDURE procedure_relatorio_venda(codigo_clienteX int)
	BEGIN
		SELECT codigo_compra as Compra, compra.codigo_cliente as 'Código Cliente',
		cliente.nome as Cliente, produto.descricao as Produto, 
		CONCAT('R$ ',FORMAT(produto.valor_uni,2,'de_DE')) 
		as 'Preço Uni',	quantidade as QTD,
		CONCAT('R$ ',FORMAT((produto.valor_uni*quantidade),2,'de_DE')) 
		as SubTotal, desconto as 'Desc(%)', 	
		CONCAT('R$ ',FORMAT((produto.valor_uni*quantidade)-
		(produto.valor_uni*quantidade*desconto/100),2,'de_DE')) as Total
		FROM item 
		INNER JOIN produto ON produto.codigo = item.codigo_produto
		INNER JOIN compra on compra.codigo = item.codigo_compra
		INNER JOIN cliente ON cliente.codigo = compra.codigo_cliente
		WHERE compra.codigo_cliente = codigo_clienteX;
	END ##

DELIMITER ;
	
CALL procedure_relatorio_venda(3);