/*selecione todos os produtos que foram comprados por um determinado usuario*/
SELECT ID_pedido, nome_produto, id_cliente
FROM pedido /*tem as chaves estrangeiras*/
JOIN produto
ON pedido.id_produto = produto.id_produto
WHERE id_cliente = 1

/*selecione todos os produtos em uma determinada categoria*/
CREATE TABLE categoria (
	ID_categoria INT PRIMARY KEY);
	
ALTER TABLE categoria ADD COLUMN nome_categoria VARCHAR(252);
INSERT INTO categoria (id_categoria, nome_categoria)
VALUES (1, 'Brinquedo'),
		(2,'Bebida'),
		(3,'Bebida');
ALTER TABLE produto ADD COLUMN id_categoria INT REFERENCES categoria(id_categoria) ;
ALTER TABLE produto ADD COLUMN nome_categoria VARCHAR(252) ;

SELECT id_categoria, nome_categoria from produto;
UPDATE produto
SET id_categoria = 1
WHERE nome_produto = 'Bola';

SELECT id_categoria, nome_categoria from produto;
UPDATE produto
SET id_categoria = 2
WHERE nome_produto = 'Água';

SELECT id_categoria, nome_categoria from produto;
UPDATE produto
SET id_categoria = 2
WHERE nome_produto = 'Refrigerante';

SELECT id_categoria, nome_categoria from produto;
UPDATE produto
SET nome_categoria = 'Brinquedo'
WHERE id_categoria = 1;

SELECT id_categoria, nome_categoria from produto;
UPDATE produto
SET nome_categoria = 'Bebida'
WHERE id_categoria = 2;

SELECT id_categoria, nome_categoria from produto;
UPDATE produto
SET nome_categoria = 'Bebida'
WHERE id_categoria = 3;

SELECT id_categoria, nome_categoria from produto;
UPDATE produto
SET id_categoria = 3
WHERE id_produto = 3;

SELECT (nome_produto) FROM produto WHERE nome_categoria = 'Bebida'


/*selecione todos os pedidos feitos por um detrminado cliente em uma determinada categoria*/
ALTER TABLE pedido ADD COLUMN id_categoria INT REFERENCES categoria(id_categoria) ;

SELECT id_pedido, id_cliente, categoria.nome_categoria, categoria.id_categoria
FROM pedido
join produto
on pedido.id_produto = produto.id_produto
join categoria
on produto.id_categoria = categoria.id_categoria 

select * from pedido


/*selecione os pedidos com os nomes dos produtos de um usuario*/



