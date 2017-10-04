Use master
Create database aereo
Go 

Use aereo
Go

Create table Passageiro (
cd_passageiro 		int         identity(1,1),
nm_passageiro 		varchar(50) not null,
cpf_passageiro   	char(11) 	not null,
rg_passageiro       char(9)     not null,
tel_cel_passageiro	varchar(10)	not null,
tel_res_passageiro	varchar(10) not null,
ds_email 			varchar(50) not null,
Constraint [PK_Passageiro] Primary Key Clustered (cd_passageiro ASC)
)

create table Passagem(
cd_passagem int identity(1,1),
cd_passageiro 		int  ,
destino_passagem varchar(30),
origem_passagem varchar (30),
horario_passagem smalldatetime not null
Constraint [PK_Passagem] Primary Key Clustered (cd_passagem ASC)
Constraint [FK_Passageiro] Foreign Key (cd_passageiro) References Passageiro (cd_passageiro)
)
insert into Passageiro(nm_passageiro,cpf_passageiro,rg_passageiro,tel_cel_passageiro,tel_res_passageiro,ds_email)
 values('Ana Paula', 87548532142,987125456,9873154,47565215,'anaP@hotmail.com'),
 ('João Victor',74165384562,874354261,9845076123,8541354756,'vivi@bol.com.br'),
 ('Marcos Ferreira Silva',45712321452,416375214,4517630250,4715600253,'mafesi@gmail.com')
 
 insert into Passagem (destino_passagem,cd_passageiro,origem_passagem,horario_passagem)
 values('São Paulo',2,'Rio de Janeiro','03/21/2013 22:12:47')
 insert into Passagem (destino_passagem,cd_passageiro,origem_passagem,horario_passagem)
 values('Curitiba',2,'Vila Velha','01/17/2014 22:12')
 
 select*from Passagem
 --Inner Join - Comando para fazer uma consulta em mais de uma tabela
 select a.cd_passageiro,b.origem_passagem from Passageiro as a inner join Passagem as b on a.cd_passageiro=b.cd_passageiro
 select a.nm_passageiro,b.origem_passagem,b.destino_passagem from Passageiro as a inner join Passagem as b on a.cd_passageiro=b.cd_passageiro
 
insert into Passageiro(nm_passageiro,cpf_passageiro,rg_passageiro,tel_cel_passageiro,tel_res_passageiro,ds_email)
 values('Carlos Ferreira', 87548532142,987125456,9873154,47565215,'Ferreira@hotmail.com')
 
 select a.nm_passageiro,b.origem_passagem,b.destino_passagem from Passageiro as a left join Passagem as b on a.cd_passageiro=b.cd_passageiro
 select a.nm_passageiro,b.origem_passagem,b.destino_passagem from Passageiro as a right join Passagem as b on a.cd_passageiro=b.cd_passageiro
 --Left Join - Na pesquisa, traz todos os elementos declarados na tabela da esquerda e somente os que tem vínculo na tabela da direita
 --Right Join - Faz a pesquisa de todos os elementos da tabela da direita e traz somente os elementos que tem vínculo na esquerda
 --Begin Transaction - Inicia uma transação no BD save transaction nome: comando que nomeia a transição
 begin transaction
 save transaction teste
 update Passageiro set nm_passageiro='Carlos Ferreira' where cd_passageiro=2
 --Rollback - Serve para desfazer uma alteração da transação
 rollback transaction teste
 select*from Passageiro where cd_passageiro=2