/* Lógico_LegendOfZelda: */

CREATE TABLE Personagens (
    ID_Personagem INT PRIMARY KEY,
    Nome VARCHAR(252),
    Descricao VARCHAR(252),
    Afiliacao VARCHAR(252),
    Resistencia INT,
    Forca INT,
    Agilidade INT,
    Personagens_TIPO INT,
    fk_Locais_ID_Local INT
);

CREATE TABLE Itens (
    ID_Item INT PRIMARY KEY,
    Nome VARCHAR(252),
    Tipo VARCHAR(252),
    Efeito VARCHAR(252),
    Raridade VARCHAR(252)
);

CREATE TABLE Locais (
    ID_Local INT PRIMARY KEY,
    Nome VARCHAR(252),
    Descricao VARCHAR(252),
    Tipo VARCHAR(252)
);

CREATE TABLE Inventario (
    Quantidade INT,
    fk_Personagens_ID_Personagem INT,
    fk_Itens_ID_Item INT
);

CREATE TABLE Relacionamento (
    fk_Personagens_ID_Personagem INT,
    fk_Personagens_ID_Personagem_ INT,
    Tipo_Relacao VARCHAR(252)
);
 
ALTER TABLE Personagens ADD CONSTRAINT FK_Personagens_2
    FOREIGN KEY (fk_Locais_ID_Local)
    REFERENCES Locais (ID_Local)
    ON DELETE RESTRICT;
 
ALTER TABLE Inventario ADD CONSTRAINT FK_Inventario_1
    FOREIGN KEY (fk_Personagens_ID_Personagem)
    REFERENCES Personagens (ID_Personagem);
 
ALTER TABLE Inventario ADD CONSTRAINT FK_Inventario_2
    FOREIGN KEY (fk_Itens_ID_Item)
    REFERENCES Itens (ID_Item);
 
ALTER TABLE Relacionamento ADD CONSTRAINT FK_Relacionamento_1
    FOREIGN KEY (fk_Personagens_ID_Personagem)
    REFERENCES Personagens (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Relacionamento ADD CONSTRAINT FK_Relacionamento_2
    FOREIGN KEY (fk_Personagens_ID_Personagem_)
    REFERENCES Personagens (ID_Personagem)
    ON DELETE RESTRICT;