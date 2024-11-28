/*TRIGGERS - triggers sao gatilhos disparados a aprtir de ações executadas nas tabelas.*/

CREATE TRIGGER nome)trigger
BEFORE|AFTER
INSERT|DELETE|UPDATE
ON nome_tabela
FOR EACH ROW
EXECUTE
PROCEDURE|FUNCTION nome_funcao;

CREATE OR REPLACE FUNCTION nome_funcao()RETURNS
TRIGGER AS $$
BEGIN
//comandos
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

