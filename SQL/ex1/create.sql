CREATE TABLE cliente
(id_cliente NUMBER CONSTRAINT pk_cliente PRIMARY KEY,
nome VARCHAR2(20),
endereco VARCHAR2(50),
telefone NUMBER
);

CREATE TABLE produto
(id_produto NUMBER CONSTRAINT pk_produto PRIMARY KEY,
nome VARCHAR2(15),
preco NUMBER,
quantidade_estoque NUMBER
);

CREATE TABLE pedido
(id_pedido NUMBER CONSTRAINT pk_pedido PRIMARY KEY,
id_cliente NUMBER CONSTRAINT fk_funcionario_id_cliente REFERENCES cliente,
data_pedido DATE,
data_entrega DATE
);

CREATE TABLE pedido_produto
(id_pedido NUMBER,
id_produto NUMBER,
preco_venda NUMBER,
quantidade NUMBER,
CONSTRAINT pk_pedido_produto PRIMARY KEY (id_pedido, id_produto),
CONSTRAINT fk_pedido_produto_id_pedido FOREIGN KEY (id_pedido) REFERENCES pedido,
CONSTRAINT fk_pedido_produto_id_produto FOREIGN KEY (id_produto) REFERENCES produto
);

CREATE SEQUENCE s_cliente;

CREATE SEQUENCE s_produto;

CREATE SEQUENCE s_pedido;