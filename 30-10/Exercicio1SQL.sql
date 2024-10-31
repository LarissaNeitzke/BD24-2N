ALTER TABLE cliente ADD COLUMN email VARCHAR(252) NOT NULL;

ALTER TABLE produto RENAME COLUMN preco TO "money";

ALTER TABLE pedido DROP COLUMN quantidade;

CREATE TABLE categoria (
	ID_categoria INT PRIMARY KEY);
	
DROP TABLE categoria;

TRUNCATE TABLE pedido;

TRUNCATE TABLE cliente CASCADE
;