USE empresa;

SET FOREIGN_KEY_CHECKS = 0; /* desabilitar a checagem de chaves estrangeiras */

INSERT INTO FUNCIONARIO VALUES 
		('João','B','Silva','12345678966','1965-01-09','Rua da Flores, 751, São Paulo, SP','M','30.000','33344555587','5'),
        ('Fernando','T','Wong','33344555587','1955-12-08','Rua da Lapa, 34, São Paulo, SP','M','40.000','88866555576','5'),
        ('Alice','T','Zelaya','99988777767','1968-01-19','Rua Souza Lima, 35, Curitiba, PR','F','25.000','98765432168','4'),
        ('Jennifer','S','Souza','98765432168','1941-09-20','Av. Arthur de Lima, 54, Santo André, SP','F','43.000','88866555576','4'),
        ('Ronaldo','K','Lima','66688444476','1962-09-15','Rua Rebouças, 65, Piracicaba, SP','M','38.000','33344555587','5'),
        ('Joice','A','Leite','45345345376','1972-07-31','Av. Lucas Obes, 74, São Paulo, SP','F','25.000','33344555587','5'),
        ('André','V','Pereira','98798798733','1969-03-29','Rua Timbira, 35, São Paulo, SP','M','25.000','98765432168','4'),
        ('Jorge','E','Brito','88866555576','1937-11-10','Rua do Horto, 35, São Paulo, SP','M','55.000','NULL','1');

INSERT INTO LOCALIZACAO_DEP VALUES 
		('1','São Paulo'),
        ('4','Mauá'),
        ('5','Santo André'),
        ('5','Itu'),
        ('5','São Paulo');
        
INSERT INTO TRABALHA_EM VALUES 
		('12345678966','1','32.5'),
		('12345678966','2','7.5'),
		('66688444476','3','40.0'),
		('45345345376','1','20.0'),
		('45345345376','2','40.0'),
		('33344555687','2','10.0'),
		('33344555687','3','10.0'),
		('33344555687','10','10.0'),
		('33344555687','20','10.0'),
		('99988777767','30','30.0'),
		('99988777767','10','10.0'),
		('98798798733','10','35.0'),
		('98798798733','30','5.0'),
		('98765432168','30','20.0'),
		('98765432168','20','15.0'),
		('88866555576','20','15.0');

INSERT INTO PROJETO VALUES 
		('ProdutoX','1','Santo André','5'),
        ('ProdutoY','2','itu','5'),
        ('ProdutoZ','3','São Paulo','5'),
        ('Informatização','10','Mauá','4'),
        ('Reorganização','20','São Paulo','1'),
        ('Novosbeneficios','30','Mauá','4');
        
INSERT INTO DEPARTAMENTO VALUES 
		('Pesquisa','5','33344555587','1988-05-22'),
        ('Administração','4','98765432168','1995-01-01'),
        ('Matriz','1','88866555576','1981-06-19');
        

INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco) VALUES 	
		('33344555587','Alicia','F','1986-04-05','Filha'),
		('33344555587','Tiago','M','1983-10-25','Filho'),
        ('33344555587','Janaina','F','1958-05-03','Esposa'),
        ('98765432168','Antonio','M','1942-02-28','Marida'),
        ('12345678966','Michael','M','1988-01-04','Filho'),
        ('12345678966','Alicia','F','1988-12-30','Filha'),
        ('12345678966','Elizabeth','F','1967-05-05','Esposa');
        
SET FOREIGN_KEY_CHECKS = 1; /* Habilitar a checagem de chaves estrangeiras */
        
