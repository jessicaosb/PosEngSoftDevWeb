
/* Consulta que apresenta um relatório de venda do banco pdv */

SELECT codigo_compra as Compra, cliente.nome as Cliente, 
produto.descricao as Produto, 
CONCAT('R$ ',FORMAT(produto.valor_uni,2,'de_DE')) 
as 'Preço Uni',	quantidade as QTD,
CONCAT('R$ ',FORMAT((produto.valor_uni*quantidade),2,'de_DE')) 
as SubTotal, desconto as 'Desc(%)', 	
CONCAT('R$ ',FORMAT((produto.valor_uni*quantidade)-
(produto.valor_uni*quantidade*desconto/100),2,'de_DE')) 
as Total FROM registro_compra
INNER JOIN produto ON produto.codigo = registro_compra.codigo_produto
INNER JOIN compra on compra.codigo = registro_compra.codigo_compra
INNER JOIN cliente ON cliente.codigo = compra.codigo_cliente LIMIT 8;