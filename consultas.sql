 /*Recuperar todos os funcionários do Departamento 4 cujos salários estejam
abaixo de 40.000. */
 SELECT * FROM FUNCIONARIO WHERE dnr = 4 AND SALARIO < 40000;
 
/*Recuperar todos os funcionários que moram em São Paulo. */
  SELECT * FROM FUNCIONARIO WHERE LOCATE('São Paulo',Endereco); 
  
/*Recuperar o nome e o endereço de todos os funcionários que trabalhem no
departamento Pesquisa. */
  SELECT Pnome, Unome, Endereco FROM funcionario INNER JOIN departamento on Dnr=Dnumero WHERE Dnome = 'Pesquisa'; 
  
/*Recuperar todos os valores de salários distintos. */
  SELECT DISTINCT salario FROM funcionario; 
  
/*Recuperar todos os projetos do departamento de pesquisa, em ordem alfabética decrescente pelo nome do projeto. */
  SELECT * FROM projeto INNER JOIN departamento on Dnum=Dnumero WHERE Dnome='Pesquisa' ORDER BY projnome DESC;
  
/*Recuperar o nome dos departamentos localizados em Santo André e o CPF do
gerente responsável. */
  SELECT Dnome,cpf_gerente from departamento,localizacoes_dep WHERE departamento.dnumero=localizacoes_dep.Dnumero and locate('Santo André',localizacoes_dep.Dlocal);
  
/* Para cada funcionário, recupere o primeiro e o último nome do funcionário e o primeiro e último nome do seu supervisor imediato */
  SELECT  e.Pnome funcionario_pnome,e.Unome funcionario_unome,
	m.Pnome supervisor_pnome,m.Unome supervisor_unome
        FROM funcionario e 
        inner join funcionario m on (m.cpf=e.cpf_supervisor) or (m.cpf_supervisor='null' and e.cpf_supervisor='null')
        order by funcionario_pnome; 
        
/* Recuperar o nome de todos os funcionários que não possuem supervisores.*/
  SELECT Pnome FROM funcionario WHERE cpf = NULL; 

/* 9: Listar quantos dependentes possui cada funcionário.*/
  SELECT fcpf, COUNT(fcpf) FROM dependente GROUP BY fcpf; 
  
/*Listar, em ordem alfabética, os nomes dos funcionários que possuem mais de 2 dependentes.*/
  SELECT Pnome FROM funcionario inner join dependente on cpf=fcpf GROUP BY Pnome HAVING COUNT(Fcpf)>2; 
  
/*Exibir o número do departamento, o número de funcionários no departamentoe o salário médio do departamento, para cada departamento da empresa*/
  SELECT Dnumero,count(cpf) numfuncionarios,avg(salario) media FROM departamento inner join funcionario on Dnumero=Dnr group by Dnumero; 
