CREATE DATABASE EMPRESA;
USE EMPRESA;

CREATE TABLE FUNCIONARIO(
 Pnome 				VARCHAR(15) 	NOT NULL,
 Minicial		 	CHAR,
 Unome 				VARCHAR(15) 	NOT NULL,
 Cpf 				CHAR(11) 		NOT NULL,
 Datanasc 			DATE			NOT NULL,
 Endereco 			VARCHAR(50),
 Sexo 				CHAR,
 Salario 			DECIMAL(10,3),
 Cpf_supervisor 	CHAR(11),
 Dnr 				INT 			NOT NULL,
 PRIMARY KEY (Cpf),
 FOREIGN KEY (Cpf_supervisor) REFERENCES FUNCIONARIO (Cpf)
);

CREATE TABLE DEPARTAMENTO(
 Dnome 					VARCHAR(15) 	NOT NULL,
 Dnumero 				INT 			NOT NULL,
 Cpf_gerente 			CHAR(11) 		NOT NULL,
 Data_inicio_gerente 	DATE,

 PRIMARY KEY (Dnumero),
 FOREIGN KEY (Cpf_gerente) REFERENCES FUNCIONARIO(Cpf)
);

 ALTER TABLE FUNCIONARIO ADD FOREIGN KEY (Dnr) REFERENCES DEPARTAMENTO(Dnumero);

CREATE TABLE lOCALIZACAO_DEP(
 Dnumero 	INT 			NOT NULL,
 Dlocal 	VARCHAR(50) 	NOT NULL,
 
 PRIMARY KEY (Dnumero, Dlocal),
 FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO (Dnumero)
 );
 
 CREATE TABLE PROJETO(
  Projnome 		VARCHAR(20) NOT NULL,
  Projnumero 	INT 		NOT NULL,
  Projlocal 	VARCHAR(50),
  Dnum 			INT   		NOT NULL,
  
  PRIMARY KEY (Projnumero),
  FOREIGN KEY (Dnum) REFERENCES DEPARTAMENTO (Dnumero)
 );
 
 CREATE TABLE DEPENDENTE(
  Fcpf 				CHAR(11) 		NOT NULL,
  Nome_dependente 	VARCHAR(20) 	NOT NULL,
  Sexo 				CHAR			NOT NULL,
  Datanasc 			DATE 			NOT NULL,
  Parentesco 		VARCHAR(10)		NOT NULL,
  
  PRIMARY KEY (Fcpf, Nome_Dependente),
  FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO (Cpf)
 );
 
  CREATE TABLE TRABALHA_EM(
  Fcpf 		CHAR(11) 		NOT NULL,
  Pnr 		INT 			NOT NULL,
  Horas 	FLOAT 			NOT NULL,

  PRIMARY KEY (Fcpf, Pnr),
  FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO (Cpf),
  FOREIGN KEY (Pnr) REFERENCES PROJETO (Projnumero)
 );
 

 
