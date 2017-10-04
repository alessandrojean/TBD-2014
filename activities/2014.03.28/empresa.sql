use master
go

create database Empresa
go
use Empresa

create table Funcionarios(
CodFunc INT identity (1,1),
NomeFunc varchar(100) not null,
SexoFunc varchar(1) not null,
BairroFunc varchar(50) not null,
SalFunc float not null,
SetorFunc varchar (50) not null,
Constraint [PK_Funcionarios] Primary Key Clustered (CodFunc ASC))

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Larissa Menezes','F','Jabaquara',1200,'Marketing')

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Selma Nunes','F','Grajaú',3800,'Vendas') 

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Leandro Henrique','M','Socorro',2950,'RH')

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Amélia Jeremias','F','Socorro',4200,'Marketing') 

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Cláudio Jorge Silva','M','Jabaquara',1480,'Vendas') 
go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Luciano Souza','M','Pedreira',1000,'Vendas')

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Gabriela Santos Nunes','F','Jurubatuba',4150,'Marketing')

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Suzana Crispim','F','Pedreira',2900,'Marketing')

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Jarbas Silva Nunes','M','Jurubatuba',5300,'Produção')

go

insert into Funcionarios(NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc) values
('Ralf Borges','M','Jabaquara',1600,'Marketing')

go

select*from Funcionarios

--Exercícios--

--1-A soma dos salarios de todos os funcionários

select SUM(SalFunc) as Soma_SalFunc from Funcionarios

--2-O nome do funcionário que mora no Jabaquara e tem o menor salário

select NomeFunc from Funcionarios where SalFunc=(select MIN(SalFunc) from Funcionarios where BairroFunc='Jabaquara')

--3-A média do salário de todos os funcionários que moram em Jurubatuba ou no Grajaú, que sejam mulheres e que possuam sobrenome Nunes.

select AVG(SalFunc) as Media_Func from Funcionarios where SexoFunc='F' and BairroFunc in (select BairroFunc from Funcionarios where BairroFunc='Jurubatuba' or BairroFunc='Grajaú') and NomeFunc in (select NomeFunc from Funcionarios where NomeFunc like '%Nunes%')

--4-A quantidade de funcionários do setor de Marketing

select count (*) as total_func_marketing from Funcionarios where SetorFunc='Marketing';

--5-A média dos salários dos funcionários por departamento, ordenado pela média (decrescente)

select SetorFunc,AVG(SalFunc) as Media_Salarios from Funcionarios group by SetorFunc order by Media_Salarios DESC

--6-A quantidade de funcionários que ganham menos de R$3.000,00 e que mora no bairro do Socorro

select COUNT (*) as total_func from Funcionarios where BairroFunc='Socorro' and SalFunc<3000

--7 - Os bairros que possuem mais do que 2 funcionários que ganhem até R$2.000,00 de salário (mostrar o bairro e a quantidade de funcionários). 

select BairroFunc,COUNT(NomeFunc) as Total_Func from Funcionarios where SalFunc<=2000 group by BairroFunc having count(NomeFunc)>2 


