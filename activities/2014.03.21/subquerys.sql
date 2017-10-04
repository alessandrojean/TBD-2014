use master
go

create database Mercado
go

create table Produtos(
cd_prod int identity(1,1),
nome_prod varchar(30) not null,
valor_prod float not null,
desc_prod varchar(50),
Desconto float,
Constraint [PK_Produtos] Primary Key Clustered (cd_prod ASC)
)

insert into Produtos(nome_prod,valor_prod,desc_prod,Desconto)
 values('Linguiça Perdigão', 10.50,'Não comprem',0.25),
 ('Sucrilhos', 18.50,'Keylogs',0.50),
 ('Bolacha', 6.00,'Biscoito',0)
 
 drop table Produtos
 
SELECT * FROM Produtos WHERE valor_prod not in(SELECT valor_prod FROM Produtos WHERE Desconto = 0.25) --IN serve para consultar dados iguais entre a consulta principal e a sub consulta. NOT IN faz exatamente o contrário, mostra os campos que são diferentes do parâmetro da consulta

Select cd_prod, valor_prod from Produtos where valor_prod = (Select Max(valor_prod) from Produtos) --Nesse caso a consulta retornará o produto com maior valor

http://www.criarweb.com/artigos/subconsultas-em-sql.html

