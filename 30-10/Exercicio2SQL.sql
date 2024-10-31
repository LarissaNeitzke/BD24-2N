INSERT INTO Cliente (ID_Cliente, Nome_Cliente, Data_Nasc, CPF, Email)
VALUES (1,'Joao','1990-04-10','88822233355','joao@gmail.com'),
	(2,'Marcelo','1986-07-20','33344477711','marcelo@gmail.com'),
	(3,'Isadora','1996-03-06','99900044466','isadora@gmail.com');
	

select * from produto;
INSERT INTO Produto (ID_Produto, Nome_Produto, Descricao, Money, Estoque)
VALUES (1,'Bola','Bola Colorida',15.00,13),
	(2,'Água','Água em garrafa',5.00,52),
	(3,'Refrigerante','Guaraná',6.50,30);


select * from pedido;
INSERT INTO Pedido (ID_Pedido, ID_Cliente, ID_Produto)
VALUES (1,3,2),
	(2,1,1),
	(3,2,2);

select * from pedido;


/*Exercício*/
INSERT INTO Pedido (ID_Pedido, ID_Cliente, ID_Produto)
VALUES (4,1,1),
	(5,2,3);

select nome_produto,estoque from produto;
UPDATE produto
SET estoque = 11
WHERE nome_produto = 'Bola';

UPDATE produto
SET estoque = 50
WHERE nome_produto = 'Água';

UPDATE produto
SET estoque = 29
WHERE nome_produto = 'Refrigerante';
select nome_produto,estoque from produto;

select * from pedido;
DELETE FROM pedido WHERE ID_pedido = 1;
DELETE FROM pedido WHERE ID_pedido = 3;
select * from pedido;





