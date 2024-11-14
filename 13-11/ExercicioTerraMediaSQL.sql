SELECT * FROM coletados (id_personagem,id_item, id_cenario)
SELECT * FROM personagens (id_personagem,nome)
SELECT * FROM itens (id_item,nome_item,valor)
SELECT * FROM cenarios (id_cenario,nome_cenario)

/*Encontrar os itens coletados por Aragorn*/
SELECT DISTINCT nome_item
FROM itens,coletados
WHERE coletados.id_personagem = 1 AND itens.id_item = coletados.id_item

/*Desobrir os cenários que Legolas visitou*/
SELECT nome_cenario
FROM cenarios,coletados
WHERE cenarios.id_cenario = coletados.id_cenario AND id_personagem = 2

/*Verificar os itens coletados por Gimli no Campo de Batalha de Helm*/
SELECT DISTINCT nome_item, nome_cenario
FROM itens,cenarios,coletados
WHERE itens.id_item = coletados.id_item 
AND cenarios.id_cenario = coletados.id_cenario AND id_personagem = 3


/*Somar o valor dos itens coletados no cenário 'Floresta de Lothlórien'*/
SELECT SUM(valor)
FROM itens,cenarios,coletados
WHERE coletados.id_cenario = 1 
AND itens.id_item = coletados.id_item 
AND coletados.id_cenario = cenarios.id_cenario
