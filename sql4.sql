-- 1.  Escreva uma consulta para listar todos os carros disponíveis na loja
select * from carros where quantidade_estoque > 0;

-- 2.  Recupere os detalhes de um carro específico usando seu ID.
select * from carros where id_carros = 1;

-- 3.  Mostre o nome, o CPF e o e-mail de todos os clientes cadastrados
select nome_cliente, cpf, email from clientes;

-- 4.  Recupere os detalhes de uma compra específica, incluindo o nome do cliente, a data da compra e o total.
select nome_cliente, compras.data_compra, compras.total_compras from clientes inner join compras on clientes.cliente_id_=compras.cliente_id where id_compras = 3;

-- 5.  Liste os carros que estão em estoque, juntamente com a quantidade disponível.
select nome_carros, quantidade_carros from carros where quantidade_carros;

-- 6.  Crie uma consulta para mostrar os clientes que compraram um determinado carro (usando o ID do carro).
select clientes.nome_cliente, carros.nome_carros from clientes inner join compras on clientes.id_clientes=compras.cliente_id 
inner join carros_compra on compras.id_compras=carros_compra.compra_id 
inner join carros on carros.id_carros=carros_compra.carro_id 
where carros_compra.carro_id=1;

-- 7.  Exiba o total de cada compra, juntamente com os nomes dos carros comprados, para um cliente específico.

-- 8. Mostre os carros que foram comprados em uma determinada data.

-- 9.  Recupere o total de vendas de cada cliente (nome e total) em ordem decrescente.

-- 10.  Exiba o nome do cliente que fez a compra mais cara até o momento.

-- 11.  Crie uma consulta para calcular a quantidade total de carros em estoque.

-- 12.  Liste as compras feitas por um cliente específico, incluindo a data da compra e o total.

-- 13.  Mostre os carros que nunca foram comprados.

-- 14.  Mostre os clientes que ainda não fizeram nenhuma compra.











select clientes.nome_cliente, compras.total_compra from clientes inner join compras on clientes.id_clientes=compras.cliente_id order by compras.total_compra desc;

select clientes.nome_cliente, max(total_compra) from clientes inner join compras on clientes.id_clientes=compras.cliente_id order by compras.total_compra;

select nome_cliente, compras.data_compra, compras.total_compras from clientes inner join compras on clientes.cliente_id_=compras.cliente_id where id_compras = 3;














