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

--Exemplo 01

EXECUTE
TESTE 

CREATE 
PROCEDURE TESTE AS
BEGIN
SELECT 'O FAMOSO HELLO WORLD!'
END

--Exemplo 02

EXECUTE
TESTE2 10

CREATE
PROCEDURE TESTE2 @N1 INT
AS
BEGIN

UPDATE Funcionarios SET NomeFunc = 'João' WHERE CodFunc = @N1
END

--Exemplo 03

EXECUTE
TESTE3 8

CREATE
PROCEDURE TESTE3 @N1 INT
AS
BEGIN

UPDATE Funcionarios SET NomeFunc = 'Maria' WHERE CodFunc = @N1
SELECT * FROM Funcionarios where CodFunc=@N1
END

--Exemplo 04

EXECUTE
TESTE4 2

CREATE
PROCEDURE TESTE4 @numero INT
AS
BEGIN

SELECT @numero*@numero AS Quadrado_do_numero
END

--Exemplo 05

EXECUTE
TESTE05 3

CREATE PROCEDURE TESTE05
@N1 int
AS
BEGIN
DELETE Funcionarios WHERE CodFunc=@N1
END

--Exemplo 06

EXECUTE 
TESTE06 11

CREATE PROCEDURE TESTE06 @N1 int
AS
BEGIN
IF @N1>10
BEGIN
PRINT 'REGISTRO INEXISTENTE'
END
ELSE
SELECT*FROM Funcionarios where CodFunc=@N1
END

--Exemplo 07

EXECUTE
TESTE07 10

CREATE PROCEDURE TESTE07 @N1 int
AS
BEGIN
DECLARE @C int
SET @C=1
while @C<=@N1
BEGIN
PRINT 'PORPINOLLI'
SET @C=@C+1
END
END

--Exemplo 08
execute fatorial 0

create procedure fatorial @N1 int as begin
declare @C int
declare @FAT int
SET @C=1
set @FAT=1
while @C<=@N1 begin
set @FAT=@FAT*@C
set @C=@C+1
end
print @FAT
end

drop procedure fatorial
