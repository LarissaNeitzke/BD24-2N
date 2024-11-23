/*
SINTAXE
CREATE INDEX ON nome_tabela(atributo_tabela)

MULTICOLUNA
CREATE INDEX ON nome_tabela(atributo1_tabela,atribut2_tabela)

APLICANDO UM TIPO ESPEIFICO DE FUNÇÃO DE ORNAÇÃO(ESTRUTURA)
CREATE INDEX ON nome_tabela USING HASH(atributo_tabela) */

CREATE INDEX ON cliente(id_cliente)

CREATE INDEX ON produto USING HASH(id_produto)

CREATE INDEX ON pedido(id_pedido)



