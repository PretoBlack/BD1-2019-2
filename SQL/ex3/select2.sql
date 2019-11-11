--16
SELECT c.nome 
FROM cliente c INNER JOIN pedido ped
ON c.id_cliente = ped.id_cliente
INNER JOIN pedido_produto p_p
ON ped.id_pedido = p_p.id_pedido
INNER JOIN produto p
ON p.id_produto = p_p.id_produto
WHERE p.nome <> 'mesa';

--17
SELECT id_pedido
FROM pedido_produto
GROUP BY id_pedido HAVING COUNT(*) > 1;

--18

--19
SELECT c.nome,MAX(p_p.valor_venda)
FROM cliente c INNER JOIN pedido ped
ON c.id_cliente = ped.id_cliente
INNER JOIN pedido_produto p_p
ON ped.id_pedido = p_p.id_pedido
GROUP BY c.nome;