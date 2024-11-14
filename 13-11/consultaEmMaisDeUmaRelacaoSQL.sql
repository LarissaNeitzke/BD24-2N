/*CONSULTAS EM MAIS DE UMA RELAÇÃO*/
/*colunas separadas de duas tabelas diferentes.*/
SELECT Nome_Usuario, Qtde /*coloca as duas colunas*/
FROM Usuarios, Pedidos /*coloca as tabelas*/
WHERE Usuarios.ID_Cliente=Pedidos.ID_Cliente and Qtde > 2; /*qual coluna se relaciona com a outra e signfica a mesa coisa.*/

/*As tabelas Cliente e Pedido possuem colunas. Cliente possui ID e nome. Pedido possui ID e Quantidade. 
O select vai multiplicar as colunas: 
          Cliente Pedido 
ID Cliente | Nome    |ID Pedido | Pedido 
    1      | João    | 1        | 4
    1      | João    | 2        | 5
    2      | Larissa | 1        | 4
    2      | Larissa | 2        | 5      */
	
SELECT nome_cliente, quantidade
FROM cliente, pedido
WHERE pedido.ID_cliente = cliente.ID_cliente AND quantidade > 2

select * from pedido




	
	