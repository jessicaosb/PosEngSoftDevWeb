DELIMITER ##
CREATE PROCEDURE subtrai_estoque
(codigo_produto INT, quantidade_comprada INT)
BEGIN
UPDATE produto SET estoque = estoque - quantidade_comprada
WHERE codigo = codigo_produto;
END ##
DELIMITER ;

DELIMITER ##
CREATE PROCEDURE soma_estoque
(codigo_produto INT, quantidade_nova INT)
BEGIN
UPDATE produto SET estoque = estoque + quantidade_nova
WHERE codigo = codigo_produto;
END ##
DELIMITER ;

--TRIGGER AFTER INSERT = OK
DELIMITER ##
CREATE TRIGGER registro_compra_insert 
AFTER INSERT ON registro_compra
FOR EACH ROW
BEGIN		
CALL subtrai_estoque(NEW.codigo_produto, NEW.quantidade);
END ##
DELIMITER ;


--TRIGGER AFTER UPDATE = OK

DELIMITER ##
CREATE TRIGGER registro_compra_update 
AFTER UPDATE ON registro_compra
FOR EACH ROW
BEGIN 
CALL soma_estoque(OLD.codigo_produto, 
OLD.quantidade-NEW.quantidade);
END ##
DELIMITER ;

--TRIGGER AFTER DELETE = OK
DELIMITER ##
CREATE TRIGGER registro_compra_delete 
AFTER DELETE ON registro_compra
FOR EACH ROW
BEGIN 
CALL soma_estoque(OLD.codigo_produto, OLD.quantidade);
END ##
DELIMITER ;


-- TESTANDO AS TRIGGERS
SELECT * FROM produto;

INSERT INTO registro_compra
(codigo_compra, codigo_produto, 
quantidade, desconto) VALUES
(1, 5, 3, 4);







//EXIBIR AS TRIGGERS:
 SHOW TRIGGERS;

//EXIBIR AS PROCEDURES:
SELECT ROUTINE_TYPE, ROUTINE_NAME
    FROM INFORMATION_SCHEMA.ROUTINES
    WHERE ROUTINE_SCHEMA='pdv';
	
SHOW CREATE PROCEDURE subtrai_estoque;