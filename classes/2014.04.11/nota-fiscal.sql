use master

create database teste
go
use teste
go
create table notaFiscal(
numeroNota int,
valorTotal float,
Constraint [PK_NotaFiscal] Primary Key Clustered (numeroNota asc)
)


insert into notaFiscal(numeroNota,valorTotal) values (38376,32.99)
insert into notaFiscal(numeroNota,valorTotal) values (04855,43.66)
insert into notaFiscal(numeroNota,valorTotal) values (67566,45.76)

go
create trigger primeira_trigger
on notaFiscal for insert,delete,update as
select*from notaFiscal 
