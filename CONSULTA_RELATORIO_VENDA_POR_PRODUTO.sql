/* Consulta que apresenta um relatório 
de venda do banco pdv por produto*/

SELECT produto.descricao as Produto, 
	CONCAT('R$ ',FORMAT(produto.valor_uni,2,'de_DE')) 
	as 'Preço Uni',	SUM(quantidade) as QTD,
	CONCAT('R$ ',FORMAT((produto.valor_uni*SUM(quantidade)),2,'de_DE')) 
	as SubTotal, SUM(desconto) as 'Desc(%)', 	
	CONCAT('R$ ',FORMAT((produto.valor_uni*SUM(quantidade))-
	(produto.valor_uni*SUM(quantidade)*SUM(desconto)/100),2,'de_DE')) 
	as Total FROM item
	INNER JOIN produto ON produto.codigo = item.codigo_produto
	INNER JOIN compra on compra.codigo = item.codigo_compra
	INNER JOIN cliente ON cliente.codigo = compra.codigo_cliente
	GROUP BY produto.descricao;