/* FilmeCorraLógico: */

CREATE TABLE Personagem (
    Personagem_ID INT PRIMARY KEY,
    Etnia VARCHAR(252),
    Genero VARCHAR(252),
    Personagem_Nome VARCHAR(252),
    fk_Tratamento_Tratamento_ID INT
);

CREATE TABLE Familia (
    Familia_ID INT PRIMARY KEY,
    Familia_Nome VARCHAR(252)
);

CREATE TABLE Contexto_Sociocultural (
    Origem VARCHAR(252),
    Classe_Social VARCHAR(252),
    Crenca VARCHAR(252),
    fk_Familia_Familia_ID INT,
    fk_Personagem_Personagem_ID INT
);

CREATE TABLE Tratamento (
    Tratamento_ID INT PRIMARY KEY,
    Tratamento_Nome VARCHAR(252),
    Descricao VARCHAR(252)
);

CREATE TABLE MembroFamilia (
    Estado_Psicologico INT,
    fk_Personagem_Personagem_ID INT,
    fk_Familia_Familia_ID INT
);
 
ALTER TABLE Personagem ADD CONSTRAINT FK_Personagem_2
    FOREIGN KEY (fk_Tratamento_Tratamento_ID)
    REFERENCES Tratamento (Tratamento_ID)
    ON DELETE CASCADE;
 
ALTER TABLE Contexto_Sociocultural ADD CONSTRAINT FK_Contexto_Sociocultural_1
    FOREIGN KEY (fk_Familia_Familia_ID)
    REFERENCES Familia (Familia_ID);
 
ALTER TABLE Contexto_Sociocultural ADD CONSTRAINT FK_Contexto_Sociocultural_2
    FOREIGN KEY (fk_Personagem_Personagem_ID)
    REFERENCES Personagem (Personagem_ID);
 
ALTER TABLE MembroFamilia ADD CONSTRAINT FK_MembroFamilia_1
    FOREIGN KEY (fk_Personagem_Personagem_ID)
    REFERENCES Personagem (Personagem_ID);
 
ALTER TABLE MembroFamilia ADD CONSTRAINT FK_MembroFamilia_2
    FOREIGN KEY (fk_Familia_Familia_ID)
    REFERENCES Familia (Familia_ID);