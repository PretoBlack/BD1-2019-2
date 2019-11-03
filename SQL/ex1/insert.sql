INSERT INTO cliente 
(id_cliente, nome, endereco, telefone) VALUES 
(s_cliente.nextval, 'Maria', 'Av Longe, n 80', 33333333);
INSERT INTO cliente 
(id_cliente, nome, endereco, telefone) VALUES 
(s_cliente.nextval, 'Carlos', 'Rua Demorada, n 99', 44444444);
INSERT INTO cliente 
(id_cliente, nome, endereco, telefone) VALUES 
(s_cliente.nextval, 'Claudia', 'Rua Distante, n 546', 55555555);
INSERT INTO cliente 
(id_cliente, nome, endereco, telefone) VALUES 
(s_cliente.nextval, 'Pedro', 'Beco do Baguela, S/N', 66666666);
INSERT INTO cliente 
(id_cliente, nome, endereco, telefone) VALUES 
(s_cliente.nextval, 'Adriana', 'Av Cafundó, n 1200', 77777777);

INSERT INTO produto 
(id_produto, nome, preco, quantidade_estoque) VALUES 
(s_produto.nextval, 'Bala', 0.50, 125);
INSERT INTO produto 
(id_produto, nome, preco, quantidade_estoque) VALUES 
(s_produto.nextval, 'Chiclete', 2, 100);
INSERT INTO produto 
(id_produto, nome, preco, quantidade_estoque) VALUES 
(s_produto.nextval, 'Pirulito', 1.25, 75);
INSERT INTO produto 
(id_produto, nome, preco, quantidade_estoque) VALUES 
(s_produto.nextval, 'Mandolate', 4, 50);
INSERT INTO produto 
(id_produto, nome, preco, quantidade_estoque) VALUES 
(s_produto.nextval, 'Chocolate', 6.50, 25);

INSERT INTO pedido
(id_pedido,id_cliente, data_pedido, data_entrega) VALUES
(s_pedido.nextval, 5, '11-aug-2019', '05-sep-2019');
INSERT INTO pedido
(id_pedido,id_cliente, data_pedido, data_entrega) VALUES
(s_pedido.nextval, 1, '02-jun-2019', '02-jul-2019');
INSERT INTO pedido
(id_pedido,id_cliente, data_pedido, data_entrega) VALUES
(s_pedido.nextval, 3, '23-may-2019', '30-may-2019');
INSERT INTO pedido
(id_pedido,id_cliente, data_pedido, data_entrega) VALUES
(s_pedido.nextval, 4, '31-jan-2019', '12-mar-2019');
INSERT INTO pedido
(id_pedido,id_cliente, data_pedido, data_entrega) VALUES
(s_pedido.nextval, 2, '29-oct-2019', '22-nov-2019');

INSERT INTO pedido_produto
(id_pedido, id_produto, preco_venda, quantidade) VALUES
(3, 2, 3, 100);
INSERT INTO pedido_produto
(id_pedido, id_produto, preco_venda, quantidade) VALUES
(4, 3, 4.50, 150);
INSERT INTO pedido_produto
(id_pedido, id_produto, preco_venda, quantidade) VALUES
(1, 5, 2.45, 200);
INSERT INTO pedido_produto
(id_pedido, id_produto, preco_venda, quantidade) VALUES
(5, 1, 1.50, 250);
INSERT INTO pedido_produto
(id_pedido, id_produto, preco_venda, quantidade) VALUES
(2, 4, 5, 300);