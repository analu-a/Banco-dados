create database loja_de_carros;

use loja_de_carros;

create table carros
(
id_carros integer not null key,
nome_carros varchar(50),
descricao varchar (150),
preco integer,
categoria varchar (50),
quantidade_carros numeric

);

insert into carros (id_carros, nome_carros, descricao, preco, categoria, quantidade_carros) values
(1,"Fiat Pulse", "Ótimo carro manual", 96.290, "SUV", 300),
(2,"Ford ranger", "Carro super atual", 289.990, "Caminhonete", 50 ),
(3, "Selta", "Não é atual", 20.000, "Sedan", 200);


create table clientes
(
id_clientes integer not null primary key,
nome_cliente varchar(50),
cpf bigint (11),
endereco varchar (100),
telefone bigint (9),
email varchar (50)
);

insert into clientes (id_clientes, nome_cliente, cpf, endereco, telefone, email)value
(1, "Ana Luiza", 11122233344, "Rua dos bobos N°0", 122223333,"aninha@gmail.com"),
(2, "Vitoria", 55566677788, "Rua xxx N°404", 677778888,"vilinda@hotmail"),
(3, "Jesica", 99988877766, "Rua 123 N°4", 766665555,"jess@gamil.com");

create table compras
(
id_compras integer not null key,
cliente_id integer not null,
data_compra date,
total_compra integer,

foreign key(cliente_id) references clientes (id_clientes)
);

insert into compras (id_compras, cliente_id, data_compra, Total_compra) value
(1, 1, 20230825, 200000),
(2, 2, 20220722, 300000),
(3, 3, 20190712, 100000);

create table carros_compra
(
id_carros_compra integer not null key,
compra_id integer not null,
carro_id integer not null,
quantidade_carros numeric,
subtotal integer,

foreign key(compra_id) references compras (id_compras),
foreign key(carro_id) references carros (id_carros)
);

insert into carros_compra (id_carros_compra, compra_id, carro_id, quantidade_carros,subtotal) value
(1,1,1,300,200.000),
(2,2,2,50,200.000),
(3,3,3,200,100.00);

create table estoque
(
id_estoque integer not null key,
carro_id integer not null,
quantidade_estoque numeric,

foreign key (carro_id) references carros (id_carros)
);

insert into estoque (id_estoque, carro_id, quantidade_estoque) value
(1,1,300),
(2,2,50),
(3,3,200);

select * from clientes;

select nome_cliente, cpf, email from clientes;



select nome_cliente,cliente_id, data_compra, total_compra from clientes inner join compras on clientes.id_clientes= compras.cliente_id where id_compras=1;

select nome_carros, quantidade_estoque from carros inner join estoque on carro.id_carros=estoque.carro_id;

select sum(quantidade_estoque) from estoque;

SELECT * FROM Carros WHERE Categoria = 'Caminhonete' AND Preco < 300000;

SELECT * FROM Carros WHERE Categoria = 'SUV' OR Preco > 60.000;

SELECT * FROM Carros WHERE NOT Categoria = 'Esportivo';

SELECT * FROM Carros WHERE Descricao IS NULL;

SELECT * FROM Carros WHERE Descricao IS NOT NULL;

SELECT * FROM Carros WHERE Preco BETWEEN 200.000 AND 400.000;

SELECT * FROM Carros WHERE Categoria IN ('Esportivo', 'SUV');

SELECT * FROM Carros WHERE Nome_carros LIKE 'Ford%';























