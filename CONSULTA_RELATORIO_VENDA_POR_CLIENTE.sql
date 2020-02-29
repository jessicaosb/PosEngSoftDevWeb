/* Consulta que apresenta um relatório 
de venda do banco pdv por cliente*/

SELECT cliente.nome as Cliente, 
	CONCAT('R$ ',FORMAT(SUM(produto.valor_uni*quantidade),2,'de_DE')) 
	as 'Valor Total em Compras', SUM(desconto) as 'Desc(%) Total', 	
	CONCAT('R$ ',FORMAT(SUM((produto.valor_uni*quantidade))-
	SUM((produto.valor_uni*quantidade)*desconto/100),2,'de_DE')) 
	as 'Total Pago com Desconto' FROM registro_compra
	INNER JOIN produto ON produto.codigo = registro_compra.codigo_produto
	INNER JOIN compra on compra.codigo = registro_compra.codigo_compra
	INNER JOIN cliente ON cliente.codigo = compra.codigo_cliente
	GROUP BY cliente.nome;
	
	
	
	CONCAT('R$ ',FORMAT(SUM(produto.valor_uni*quantidade),2,'de_DE')) 
	as ValorTotalSemDesconto, SUM(desconto) as DescTotal,	CONCAT('R$',FORMAT(SUM((produto.valor_uni*quantidade))-SUM((produto.valor_uni*quantidade)*desconto/100),2,'de_DE')) as ValorTotalComDesconto