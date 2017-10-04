use master --Alessandro Jean, nº01 e Edson Gomes, nº08 - 2ºE (ETIM) - INFO--
go
create database exercicio
go
use exercicio
create table cliente(
cod_cli int identity (1,1),
nome_cli varchar (50) not null,
rua varchar (80) not null,
cidade varchar (50) not null,
idade int not null,
constraint [PK_cliente] primary key clustered (cod_cli asc)
)

create table conta(
cod_agen int not null,
cod_cli int not null,
num_conta int identity(1,1),
saldo float not null,
constraint [PK_conta] primary key clustered (num_conta asc),
constraint [FK_cliente] foreign key (cod_cli) references cliente(cod_cli),
constraint [FK_agencia_2] foreign key (cod_agen) references agencia(cod_agen)
)

create table agencia(
cod_agen int identity (1,1),
nome_agen varchar(50) not null,
gerente varchar(50) not null,
cidade varchar(50),
constraint [PK_agencia] primary key clustered (cod_agen asc)
)

create table emprestimo(
cod_agen int not null,
cod_cli int not null,
num_emprest int identity(1,1),
valor float not null,
constraint [PK_emprestimo] primary key clustered (num_emprest asc),
constraint [FK_cliente_2] foreign key (cod_cli) references cliente(cod_cli),
constraint [FK_agencia] foreign key (cod_agen) references agencia(cod_agen)
)

insert into cliente(nome_cli,rua,cidade,idade) values
('Porpinólli','Rua do porpinólli','Porpinollilandia',16)

insert into conta(cod_agen,cod_cli,saldo) values
(1,1,10)

insert into agencia(nome_agen,gerente,cidade) values
('Agencia do Perdigão','Perdigão','Porpinollilandia')

insert into emprestimo(cod_agen,cod_cli,valor) values
(1,1,1000999)

select*from emprestimo
select  nome_cli,idade from cliente inner join conta on cliente.cod_cli = conta.cod_cli