/*Adicionar atributo genero a relação cliente*/
ALTER TABLE cliente ADD genero VARCHAR(252);

/*Adicionar atributo salario a relação cliente*/
ALTER TABLE cliente ADD salario NUMERIC;

/*Adicionar 3 registros da tabela cliente sendo um com nome repetido*/
INSERT INTO Cliente (ID_Cliente, Nome_Cliente, Data_Nasc, CPF, Email)
VALUES (4,'Joao','1989-05-02','77722233355','joaob@gmail.com'),
	(5,'Caio','1992-02-13','22555577711','caio@gmail.com'),
	(6,'Luana','1999-01-06','99456446600','luana@gmail.com');

select * from cliente;

/*Inserir registros de CPF, salario e genero a todos os registros na relação usuario*/
select * from cliente;

UPDATE cliente SET genero = 'masculino' WHERE id_cliente = '1';
UPDATE cliente SET genero = 'masculino' WHERE id_cliente = '2';
UPDATE cliente SET genero = 'feminino' WHERE id_cliente = '3';
UPDATE cliente SET genero = 'masculino' WHERE id_cliente = '4';
UPDATE cliente SET genero = 'masculino'  WHERE id_cliente = '5';
UPDATE cliente SET genero = 'feminino'  WHERE id_cliente = '6';

UPDATE cliente SET salario = 1200 WHERE id_cliente = '1';
UPDATE cliente SET salario = 2300 WHERE id_cliente = '2';
UPDATE cliente SET salario = 4500 WHERE id_cliente = '3';
UPDATE cliente SET salario = 5000 WHERE id_cliente = '4';
UPDATE cliente SET salario = 2100 WHERE id_cliente = '5';
UPDATE cliente SET salario = 3800 WHERE id_cliente = '6';

ALTER TABLE cliente ALTER COLUMN salario TYPE money;
