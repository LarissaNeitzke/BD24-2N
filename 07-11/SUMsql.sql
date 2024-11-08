SELECT SUM(salario) FROM cliente;

SELECT SUM(preco/3) FROM produto;

/*Criar a média salarial da relação usuario para o genero masculino e feminino*/
SELECT AVG(salario) FROM cliente GROUP BY genero;

SELECT AVG(salario) FROM cliente
WHERE genero = 'feminino';

SELECT AVG(salario) FROM cliente
WHERE genero = 'masculino';


/*Exibir a quantidade de usuarios do sexo masculino como usuarios_masculinos e a quantidade de usuarios do sexo feminino como usuarios_femininos*/
SELECT COUNT (*) as usuarios_masculinos
FROM cliente
WHERE genero = 'masculino';

SELECT COUNT (*) as usuarios_femininos
FROM cliente
WHERE genero = 'feminino';

SELECT
    (SELECT COUNT(*) FROM cliente WHERE genero = 'masculino') AS usuarios_masculinos,
    (SELECT COUNT(*) FROM cliente WHERE genero = 'feminino') AS usuarios_femininos;


/*Crie uma expressão que somará de todos os preços da relação produto com 10* de desconto*/
SELECT SUM(preco/10) FROM produto;

