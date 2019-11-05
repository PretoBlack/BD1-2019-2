1
SELECT nome 
FROM produto 
ORDER BY nome ASC;

2
SELECT nome, quantidade_estoque, preco 
FROM produto
WHERE quantidade_estoque > 50 OR preco < 10;

3
SELECT pedido.id_pedido, pedido.data_pedido, cliente.nome
FROM pedido INNER JOIN cliente
ON pedido.id_cliente = cliente.id_cliente;

4
SELECT pedido_produto.id_pedido, pedido_produto.id_produto, produto.nome, pedido_produto.preco_venda
FROM pedido_produto INNER JOIN produto
ON pedido_produto.id_produto=produto.id_produto
ORDER BY pedido_produto.id_pedido ASC;

5
SELECT produto.nome, pedido_produto.quantidade
FROM pedido_produto INNER JOIN produto
on pedido_produto.id_produto = produto.id_produto
WHERE pedido_produto.quantidade > 10;

6
SELECT pedido_produto.id_pedido, pedido.data_pedido, cliente.nome
FROM pedido 
INNER JOIN cliente ON pedido.id_cliente = cliente.id_cliente
INNER JOIN pedido_produto ON pedido.id_pedido = pedido_produto.id_pedido
WHERE pedido_produto.id_produto = 1;

7
SELECT pedido_produto.id_pedido, pedido.data_pedido, cliente.nome
FROM pedido_produto
INNER JOIN pedido ON pedido_produto.id_pedido = pedido.id_pedido
INNER JOIN cliente ON pedido.id_cliente = cliente.id_cliente
INNER JOIN produto ON pedido_produto.id_produto = produto.id_produto
WHERE produto.nome LIKE 'Mesa';

8
SELECT pedido.id_pedido, cliente.nome, pedido.data_pedido 
FROM pedido
INNER JOIN cliente ON cliente.id_cliente = pedido.id_cliente
WHERE pedido.data_entrega is NULL;

9
SELECT pedido_produto.id_produto, cliente.nome, produto.nome, pedido_produto.preco_venda
FROM pedido_produto
INNER JOIN pedido ON pedido_produto.id_pedido = pedido.id_pedido
INNER JOIN cliente ON pedido.id_cliente = cliente.id_cliente
INNER JOIN produto ON pedido_produto.id_produto = produto.id_produto
ORDER BY pedido.id_pedido ASC, produto.nome ASC;