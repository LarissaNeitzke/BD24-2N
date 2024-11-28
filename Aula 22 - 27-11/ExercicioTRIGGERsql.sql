/*Crie  a relação historico_salarial, com os atributos(ID_historico, ID_cliente, data_alteracao,salario)*/
CREATE TABLE historico_salarial (
	ID_historico SERIAL PRIMARY KEY,
	ID_cliente INT REFERENCES cliente(ID_cliente),
	data_alteracao DATE,
	salario NUMERIC
); 

select * from historico_salarial

/*Criar a função que vai atualizar a tabela*/
CREATE OR REPLACE FUNCTION atualizacao_salario() RETURNS
TRIGGER AS $$/*O início do corpo da função em PL/pgSQL, 
onde o código será escrito. O $$ é usado para indicar que o corpo da função começa aqui.*/
BEGIN /*Inicia o bloco de código da função. Toda a lógica da função será escrita entre o BEGIN e o END.*/
INSERT INTO historico_salarial (ID_cliente, data_alteracao,salario)
VALUES (NEW.ID_cliente,NOW(), NEW.salario); /*NEW-Refere-se ao valor de ID_cliente do novo dado que foi inserido
ou alterado na tabela original (onde a trigger é associada). NOW-Retorna a data e hora atual do sistema. 
Isso vai ser registrado na coluna data_alteracao para indicar quando a mudança ocorreu.*/
RETURN NULL; 
END; /* Finaliza o bloco de código da função.*/
$$ /*Indica o fim do corpo da função em PL/pgSQL.*/
LANGUAGE plpgsql; /*linguagem postgresql*/

/*Esse é um sistema que vai funionar por trás as atualizações e modificações de uma tabela, por exemplo.
Então sempre que eu alterar os dados da tabela escolhida, outra tabela está sendo criada que vai
conter todas essas alterações*/

/*Criar a trigger*/
CREATE TRIGGER trigger_atualiza_salario
AFTER INSERT OR UPDATE ON cliente FOR EACH ROW EXECUTE FUNCTION atualizacao_salario()

/*alterou um dado*/
UPDATE cliente SET salario = 1500
WHERE id_cliente = 3
/*conferir se o trigger funcionou*/
select * from historico_salarial

/*Atualizar 3 salarios de clientes e se o trigger estiver correto irá adicionar automaticamente os
dados da tabela historico_salarial*/
select * from cliente

UPDATE cliente SET salario = 2000
WHERE id_cliente = 3

UPDATE cliente SET salario = 4500
WHERE id_cliente = 4

UPDATE cliente SET salario = 3800
WHERE id_cliente = 5

select * from historico_salarial

/*Crie um trigger com historico de preço de produto*/

CREATE TABLE historico_preco_produto (
	ID_historicopreco SERIAL PRIMARY KEY,
	ID_produto INT REFERENCES produto(ID_produto),
	data_alteracao DATE,
	preco NUMERIC
); 


CREATE OR REPLACE FUNCTION atualizacao_precoproduto() RETURNS
TRIGGER AS 
$$ 
BEGIN 
INSERT INTO historico_preco_produto (ID_produto, data_alteracao,preco)
VALUES (NEW.ID_produto,NOW(), NEW.preco); 
RETURN NULL; 
END; 
$$ 
LANGUAGE plpgsql; 


CREATE TRIGGER trigger_atualiza_precoproduto
AFTER INSERT OR UPDATE ON produto FOR EACH ROW EXECUTE FUNCTION atualizacao_precoproduto()

UPDATE produto SET preco = 18
WHERE id_produto = 3

select * from historico_preco_produto


