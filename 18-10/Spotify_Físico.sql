/* Spotify_Lógico: */

CREATE TABLE Artista (
    Musica VARCHAR(252),
    Album VARCHAR(252),
    ID_Artista NUMERIC(3) PRIMARY KEY,
    Nome_Artista VARCHAR(252),
    fk_Conteudo_ID_Conteudo NUMERIC(3)
);

CREATE TABLE Genero (
    Rock VARCHAR(252),
    ID_Genero NUMERIC(3) PRIMARY KEY,
    Sertanejo VARCHAR(252),
    Pop VARCHAR(252),
    Kpop VARCHAR(252),
    Funk VARCHAR(252),
    fk_Conteudo_ID_Conteudo NUMERIC(3)
);

CREATE TABLE Podcast (
    fk_Conteudo_ID_Conteudo NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Episodio (
    Nome_Episodio VARCHAR(252),
    Sinopse_Episodio VARCHAR(252),
    Duracao_Episodio VARCHAR(252),
    ID_Episodio NUMERIC(3) PRIMARY KEY,
    fk_Podcast_fk_Conteudo_ID_Conteudo NUMERIC(3)
);

CREATE TABLE Musica (
    Nome_Musica VARCHAR(252),
    Letras_Musica VARCHAR(252),
    fk_Conteudo_ID_Conteudo NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Conteudo (
    Duracao_Conteudo VARCHAR(252),
    Nome_Conteudo VARCHAR(252),
    ID_Conteudo NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Plano (
    Tipo VARCHAR(252),
    ID_Plano NUMERIC(3) PRIMARY KEY,
    Valor VARCHAR(252),
    fk_Usuario_ID_Usuario NUMERIC(3)
);

CREATE TABLE Playlist (
    Tempo_Ouvido VARCHAR(252),
    fk_Usuario_ID_Usuario NUMERIC(3),
    fk_Conteudo_ID_Conteudo NUMERIC(3)
);

CREATE TABLE Usuario (
    Estado VARCHAR(252),
    Rua VARCHAR(252),
    Cidade VARCHAR(252),
    CEP NUMERIC(8),
    ID_Usuario NUMERIC(3) PRIMARY KEY,
    Senha VARCHAR(10),
    Nome_Usuario VARCHAR(20),
    Data_Nasc DATE,
    Email VARCHAR(252),
    fk_Avaliacao_ID_Avaliacao NUMERIC(3)
);

CREATE TABLE Avaliacao (
    ID_Avaliacao NUMERIC(3) PRIMARY KEY,
    Nota NUMERIC(5),
    fk_Conteudo_ID_Conteudo NUMERIC(3)
);
 
ALTER TABLE Artista ADD CONSTRAINT FK_Artista_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Genero ADD CONSTRAINT FK_Genero_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Podcast ADD CONSTRAINT FK_Podcast_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Episodio ADD CONSTRAINT FK_Episodio_2
    FOREIGN KEY (fk_Podcast_fk_Conteudo_ID_Conteudo)
    REFERENCES Podcast (fk_Conteudo_ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE Musica ADD CONSTRAINT FK_Musica_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE Plano ADD CONSTRAINT FK_Plano_2
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Playlist ADD CONSTRAINT FK_Playlist_1
    FOREIGN KEY (fk_Usuario_ID_Usuario)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Playlist ADD CONSTRAINT FK_Playlist_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Avaliacao_ID_Avaliacao)
    REFERENCES Avaliacao (ID_Avaliacao)
    ON DELETE RESTRICT;
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;