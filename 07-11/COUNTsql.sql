/*Se colocar * vai contar tudo da tabela. Se colocar um atributo, o count vai ser referente a ele*/
SELECT COUNT (*) FROM cliente;

/*Pode criar um apelido para o calculo que vai aparecer*/
SELECT COUNT (*) as numero_de_clientes FROM cliente;

/*Filtrar por quantidade mais específica*/
SELECT COUNT (*) as clientes_mulheres
FROM cliente
WHERE genero = 'feminino';







