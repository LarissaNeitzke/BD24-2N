/* QuidditchLógicO: */

CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Nome VARCHAR(252),
    Email VARCHAR(252),
    Data_Nasc DATE
);

CREATE TABLE Jogo (
    ID_Jogo INT PRIMARY KEY,
    Genero VARCHAR(252),
    Faixa_Etaria INT,
    Data_Lancamento DATE,
    Plataforma VARCHAR(252)
);

CREATE TABLE Partida (
    ID_Partida INT PRIMARY KEY,
    Num_Jogadores INT,
    Dificuldade VARCHAR(252),
    Mapa VARCHAR(252),
    Posicao_Jogador INT,
    Casa VARCHAR(252)
);

CREATE TABLE Ranking (
    ID_Ranking INT PRIMARY KEY,
    Pontuacoes INT,
    Trofeus VARCHAR(252),
    Medalha_Equipe VARCHAR(252)
);

CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY,
    Nome VARCHAR(252)
);

CREATE TABLE Itens (
    ID_Itens INT PRIMARY KEY
);