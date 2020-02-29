-- CONSULTANDO DADOS SEM AGRUPAMENTO

-- AVG

SELECT AVG(quantidade) FROM registro_compra;

-- MIN

SELECT MIN(quantidade) FROM registro_compra;

-- MAX

SELECT MAX(quantidade) FROM registro_compra;

-- SUM

SELECT SUM(quantidade) FROM registro_compra;

-- COUNT

SELECT COUNT(quantidade) FROM registro_compra;

-----------------------------------------------------------------


-- CONSULTANDO DADOS COM AGRUPAMENTO

-- AVG

SELECT codigo_compra, AVG(quantidade) 
FROM registro_compra GROUP BY codigo_compra;

-- MIN

SELECT codigo_compra, MIN(quantidade) 
FROM registro_compra GROUP BY codigo_compra;

-- MAX

SELECT codigo_compra, MAX(quantidade) 
FROM registro_compra GROUP BY codigo_compra;

-- SUM

SELECT codigo_compra, SUM(quantidade) 
FROM registro_compra GROUP BY codigo_compra;

-- COUNT

SELECT codigo_compra, COUNT(quantidade) 
FROM registro_compra GROUP BY codigo_compra;