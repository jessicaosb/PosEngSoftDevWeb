CREATE DATABASE IF NOT EXISTS escola 
	DEFAULT CHARACTER SET utf8 
	COLLATE utf8_general_ci;
	

CREATE TABLE IF NOT EXISTS departamento (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	data_cadastro TIMESTAMP 
	DEFAULT CURRENT_TIMESTAMP 
	ON UPDATE CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS curso (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	codigo_departamento INT NOT NULL,
	FOREIGN KEY(codigo_departamento)
	REFERENCES departamento(codigo)
);

CREATE TABLE IF NOT EXISTS disciplina (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	data_cadastro TIMESTAMP 
	DEFAULT CURRENT_TIMESTAMP 
	ON UPDATE CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS aluno (
	codigo INT NOT NULL 
	AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	cpf bigint(11) UNSIGNED ZEROFILL,
	data_nascimento DATE NOT NULL,
	logradouro varchar(100) NOT NULL,
	casa varchar(20) NOT NULL,
	bairro varchar(100) NOT NULL,
	cidade varchar(100) NOT NULL,
	estado char(2) NOT NULL	
);


CREATE TABLE IF NOT EXISTS inscricao (
	codigo_aluno INT NOT NULL,
	codigo_curso INT NOT NULL,
	PRIMARY KEY(codigo_aluno,codigo_curso),
	data_inscricao TIMESTAMP 
	DEFAULT CURRENT_TIMESTAMP 
	ON UPDATE CURRENT_TIMESTAMP NOT NULL,
	FOREIGN KEY(codigo_aluno)
	REFERENCES aluno(codigo),
	FOREIGN KEY(codigo_curso)
	REFERENCES curso(codigo)
);


CREATE TABLE IF NOT EXISTS disciplina_pre_requisito (
	codigo_disciplina INT NOT NULL,
	codigo_disciplina_pre_requisito INT NOT NULL,
	PRIMARY KEY(codigo_disciplina,codigo_disciplina_pre_requisito),
	data_cadastro TIMESTAMP 
	DEFAULT CURRENT_TIMESTAMP 
	ON UPDATE CURRENT_TIMESTAMP NOT NULL,
	FOREIGN KEY(codigo_disciplina)
	REFERENCES disciplina(codigo),
	FOREIGN KEY(codigo_disciplina_pre_requisito)
	REFERENCES disciplina(codigo)
);





