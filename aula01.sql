/*Criando banco de dados*/
create database senai_carapicuiba;

/*Colocando nosso banco em uso*/
use senai_carapicuiba;

/*Criando tabela*/
create table turmas
(
id integer primary key not null auto_increment,
nome varchar(50) not null,
codigo int not null,
descricao varchar(100) not null,
sala varchar(10) not null
);

insert into turmas (nome, codigo, descricao, sala) values
("Desenvolvimento de Sistemas", 12345, "É um ótimo curso", "B10"),
("Exel", 121212, "Já foi um bom curso", "B01"),
("Power BI", 23561, "Parece ser um curso bom", "B03"),
("Banco de dados", 55555, "Esse é tooooop", "B11"),
("Logistica", 33331, "AAffffffffff", "B04");

-- selecionando todos os dados da tabela  

select * from turmas;

select descricao from turmas where id = 3;
select nome from turmas where id <3;
select nome, codigo from turmas where sala = "B11" and id >2;
update turmas set nome= "Informática básica" where id= 4;

update turmas set codigo= 33333 where id= 3;
update turmas set codigo= 12120 where id= 2;

alter table turmas add data_inicio varchar(10) not null;

delete from turmas where id= 3;


