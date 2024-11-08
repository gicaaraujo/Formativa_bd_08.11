create database bd_universidade;

create table universidade(
id_uni int primary key auto_increment not null,
nome_uni varchar (100),
telefone_uni varchar (100),
rua_uni varchar (100),
bairro_uni varchar (100),
numero_uni varchar (100),
cep_uni varchar (100),
cidade_uni varchar (100)
);

create table estudante(
id_estu int primary key auto_increment,
nome_estu varchar (100),
telefone_estu varchar (100),
rua_estu varchar (100),
bairro_estu varchar (100),
numero_estu varchar (100),
cep_estu varchar (100),
cidade_estu varchar (100)
);

insert into universidade(nome_uni, telefone_uni, rua_uni, bairro_uni, numero_uni, cep_uni, cidade_uni)
values ("FAMEMA", "159999999", "R. Monte Carmelo", "villa maria", 800, "1234567", "Marília"),
 ("MANDIC", "1588888", "R. Dr. José Rocha Junqueira", "villa nova", 13, "12345678", "Campinas"),
  ("USCS", "15777777", "Av. Dr. Ciro Albuquerque", "villa horizonte", 4750, "123456789", "Itapetininga"),
   ("ALBERT EINSTEIN", "1566666666", "Av. Padre Lebret", "villa morumbi", 5600, "12345678910", "São Paulo"),
    ("Pequeno Príncipe", "155555555", "Av. Iguaçu","villa altar", 333, "1234567891011", "Curitiba");
    
    insert into estudante(nome_estu, telefone_estu, rua_estu, bairro_estu, numero_estu, cep_estu, cidade_estu)
values ("Giovana", "159999999", "R. Monte silva", "villa nova", 1000, "1234567", "Marília"),
 ("Isabella", "1588888", "R. Dr. José Rocha ", "villa novo horizonte", 133, "12345678", "Campinas"),
  ("Maria Clara", "15777777", "Av. Dr. monteiro", "villa maria", 895, "123456789", "Itapetininga"),
   ("Beatriz", "1566666666", "Av. Padre Bunet", "villa caxias", 4126, "12345678910", "São Paulo"),
    ("Pedro", "155555555", "Av. 5 de novembro","villa duque pedro", 3698, "1234567891011", "Curitiba");
    
    select *from universidade;
     select *from estudante;
    
    update estudante
set nome_estu = "Gi Araujo"
where id_estu = 1;

update universidade
set nome_uni = "PUC"
where id_uni = 3;

delete from estudante
where id_estu = 5;

create view VW_Estudante_universidade as
select
estudante.nome_estu as nome_estudante,
universidade.nome_uni as nome_universidade,
universidade.telefone_uni as telefone
from
estudante
inner join
universidade on estudante.id_estu = universidade.id_uni;

select *from VW_Estudante_universidade;