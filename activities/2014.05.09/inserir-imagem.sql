use master
go


create database porpinolli
go

use porpinolli

create table dbo.T_CT_Logo (Logo image null)

insert into T_CT_Logo(Logo) values ('D:\p1.png')

SELECT (Logo) FROM T_CT_Logo


