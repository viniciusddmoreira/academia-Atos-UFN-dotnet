--criando base de dados
CREATE DATABASE empresa_db;

--usando a base de dados empresa_db
USE empresa_db;

--criando tabela Departamento
CREATE TABLE departamentos (
	idDepartamento int NOT NULL PRIMARY KEY,
	nome varchar(50) NOT NULL,
	localizacao varchar(50) NOT NULL,
	orcamento varchar(50) NOT NULL
);

--criando tabela Empregado
CREATE TABLE empregados (
	idEmpregado int NOT NULL PRIMARY KEY,
	nome varchar(50) NOT NULL,
	idGerente int NULL,
	funcao varchar(50) NULL,
	idDepartamento int,
	dataAdmissao date NOT NULL,
	salario int NULL,
	comissao int NULL
	FOREIGN KEY (idDepartamento) REFERENCES departamentos(idDepartamento),
	FOREIGN KEY (idGerente) REFERENCES empregados(idEmpregado)
);

--inserindo dados nas tabelas
INSERT INTO departamentos VALUES('1','Banco de Dados','Porto Alegre','2346');
INSERT INTO departamentos VALUES('2','Balconistas','Pelotas','10000');
INSERT INTO departamentos VALUES('3','Intelig�ncia Artific','Pelotas','333');
INSERT INTO departamentos VALUES('4','Compiladores','Novo Hamburgo','5050');
INSERT INTO departamentos VALUES('5','Redes','Taquara','12122');
INSERT INTO empregados VALUES('1','Mariewa',NULL,'Gerente','1','2000-04-05','2300','0');
INSERT INTO empregados VALUES('2','Zico','1','Oper�rio','1','1999-08-13','100','0');
INSERT INTO empregados VALUES('3','Lula',NULL,'Presidente','5','1950-01-01','10000','0');
INSERT INTO empregados VALUES('5','Luana Pyovany',NULL,'Gerente','2','1998-06-23','2300','0');
INSERT INTO empregados VALUES('4','Vera Fixer','5','Balconista','2','1999-05-05','3300','0');
INSERT INTO empregados VALUES('6','Daniela Schicarelli',NULL,'Gerente','3','1999-10-10','2300','0');
INSERT INTO empregados VALUES('7','Luize Altenhofen',NULL,'Gerente','4','1999-04-26','2300','0');
INSERT INTO empregados VALUES('8','Helo Pinheiro',NULL,'Gerente','5','1997-09-25','2300','0');
INSERT INTO empregados VALUES('9','Pel�','1','Oper�rio','1','2000-09-09','100',NULL);
INSERT INTO empregados VALUES('10','Rom�rio','1','Oper�rio','5','2001-12-25','100','0');
INSERT INTO empregados VALUES('11','Malu Mader','5','Balconista','2','2001-10-20','3400','0');
INSERT INTO empregados VALUES('12','Ant�nio Fagundes','7','Vendedor','3','2002-12-22','5000','10');