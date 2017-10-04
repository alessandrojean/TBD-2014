Use master
create database empresa
go

use empresa
go
create table Passageiro(
cd_passageiro int identity(1,1),
nm_passageiro varchar(50) not null,
cpf_passageiro char(11) not null,
rg_passageiro char(9) not null,
tel_cel_passageiro varchar(10),
tel_res_passageiro varchar(10),
email_passageiro varchar(50),
constraint [PK_Passageiro] primary key clustered (cd_passageiro)
)

create table Passagem(
cd_passagem int identity(1,1),
cd_passageiro int not null,
destino_passagem varchar(30) not null,
origem_passagem varchar(30) not null,
horario_passagem smalldatetime not null,
constraint [PK_Passagem] primary key clustered (cd_passagem),
constraint [FK_Passageiro] foreign key (cd_passageiro) references Passageiro(cd_passageiro)
)

insert into Passageiro (nm_passageiro, cpf_passageiro , rg_passageiro, tel_cel_passageiro, tel_res_passageiro, email_passageiro) values
('Porpinólli', '12345678910', '164728791', '44756478', '54782369', 'porpinolli@annanias.com.br'),
('XANDALLAS','1547895463','66555554','5787452','67841930','xandallas@kinderman.org.com'),
('SADIA','67834343476','43346346','27457928','79796431','sadia_perdigao@brasilfoods.com.br'),
('EPSON','346245497','34758424','12346589','32165487','epson_hp@apple.inc')

insert into Passagem (cd_passageiro, destino_passagem, origem_passagem, horario_passagem) values
(1,'Porpinollilândia','Sua mãe','2013/11/11 21:12:25'),
(2,'PerdigãoLândia','Seu pai','2013/11/11'),
(3,'UbuntuLândia','Sua vó','2013/11/11'),
(4,'Inferno','Seu vô','2013/11/11')


select*from Passagem
