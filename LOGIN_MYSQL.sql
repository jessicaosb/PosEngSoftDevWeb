-- CRIANDO LOGIN

GRANT USAGE ON *.* TO 'brunoliborio'@'%' 
	IDENTIFIED BY 'brunoliborio';

GRANT ALL PRIVILEGES ON `brunoliborio\_%`.* 
	TO 'brunoliborio'@'%';
	
DROP USER NOME_LOGIN;