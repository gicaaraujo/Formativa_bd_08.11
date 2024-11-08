create database bd_voo;

create table aeronave(
id_nave int primary key auto_increment,
nome varchar(50),
destino varchar(50),
comunicador varchar(50)
);

create table passageiro(
id_passageiro int primary key auto_increment,
nome varchar(50),
endereco varchar(50),
telefone varchar(50),
id_nave int,
foreign key (id_nave) references aeronave(id_nave)
);

insert into aeronave (nome, destino, comunicador)
values ("Nave 444", "Maldivas", "ETR 12345"), 
 ("Nave 895", "New York", "GRI 98745"), 
  ("Nave 145", "Salvador", "COL 47512"), 
   ("Nave 005", "Los Angeles", "ALT 74692"), 
    ("Nave 778", "Paris", "VUR 35621");
    
    insert into passageiro (nome, endereco, telefone)
values (" Giovana", "Rodolfo Miranda 1126", "159999999"), 
(" Isabella", "Silva Moraes 5678", "158888888"),
 (" Maria Clara", "Francisco Valho 3421", "157777777"),
  (" Beatriz", "William Yared 1000", "1566666666"),
  (" Sophia", "Darcy Vieira 2008", "155555555");
  
select *from aeronave;
select *from passageiro;

update passageiro
set nome = "Gi Araujo"
where id_passageiro = 1;

update aeronave
set nome = "Nave três"
where id_nave = 3;

delete from passageiro
where id_passageiro = 5;

create view VW_Passageiro_voa as
select
passageiro.nome as nome_pass,
aeronave.nome as nome_nave,
aeronave.destino as destino
from
passageiro
inner join
aeronave on passageiro.id_passageiro = aeronave.id_nave;

select *from VW_Passageiro_voa;