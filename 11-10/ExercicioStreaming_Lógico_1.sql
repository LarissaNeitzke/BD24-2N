/* ExercicioStreaming_Lógico_1: */

CREATE TABLE Director (
    Director_ID NUMERIC(3) PRIMARY KEY,
    Nationality VARCHAR(30),
    Name VARCHAR(30),
    Date_of_Birth DATE
);

CREATE TABLE Genre (
    Genre_ID NUMERIC(3) PRIMARY KEY,
    Name VARCHAR(30)
);

CREATE TABLE Actor (
    Nationality VARCHAR(30),
    Name VARCHAR(30),
    Date_of_Birth DATE,
    Actor_ID NUMERIC(3) PRIMARY KEY
);

CREATE TABLE E__Assoc__2 (
    fk_Actor_Actor_ID NUMERIC(3),
    fk_Movies_Movie_ID NUMERIC(3)
);

CREATE TABLE E__Assoc__3 (
    fk_Movies_Movie_ID NUMERIC(3),
    fk_Playlist_Playlist_ID NUMERIC(3)
);

CREATE TABLE Movies (
    Movie_ID NUMERIC(3) PRIMARY KEY,
    Title VARCHAR(30),
    Rating NUMERIC(5),
    Duration TIME,
    Release_Year DATE,
    fk_Director_Director_ID NUMERIC(3),
    fk_Genre_Genre_ID NUMERIC(3)
);

CREATE TABLE Playlist (
    Creation_Date DATE,
    Playlist_ID NUMERIC(3) PRIMARY KEY,
    Name VARCHAR(30)
);

CREATE TABLE Basic (
    fk_User_User_ID NUMERIC(3) PRIMARY KEY
);

CREATE TABLE Review (
    Rate NUMERIC(5),
    Comment VARCHAR(30),
    Review_ID NUMERIC(3) PRIMARY KEY,
    Date DATE,
    fk_User_User_ID NUMERIC(3)
);

CREATE TABLE Premium (
    fk_User_User_ID NUMERIC(3) PRIMARY KEY
);

CREATE TABLE User (
    Email VARCHAR(50),
    Signing_Date DATE,
    Name VARCHAR(30),
    User_ID NUMERIC(3) PRIMARY KEY,
    History VARCHAR(252)
);

CREATE TABLE Assign (
    fk_Movies_Movie_ID NUMERIC(3),
    fk_Review_Review_ID NUMERIC(3)
);

CREATE TABLE Watch (
    fk_Movies_Movie_ID NUMERIC(3),
    fk_User_User_ID NUMERIC(3)
);

CREATE TABLE Make (
    fk_User_User_ID NUMERIC(3),
    fk_Playlist_Playlist_ID NUMERIC(3)
);
 
ALTER TABLE E__Assoc__2 ADD CONSTRAINT FK_E__Assoc__2_1
    FOREIGN KEY (fk_Actor_Actor_ID)
    REFERENCES Actor (Actor_ID);
 
ALTER TABLE E__Assoc__2 ADD CONSTRAINT FK_E__Assoc__2_2
    FOREIGN KEY (fk_Movies_Movie_ID)
    REFERENCES Movies (Movie_ID);
 
ALTER TABLE E__Assoc__3 ADD CONSTRAINT FK_E__Assoc__3_1
    FOREIGN KEY (fk_Movies_Movie_ID)
    REFERENCES Movies (Movie_ID);
 
ALTER TABLE E__Assoc__3 ADD CONSTRAINT FK_E__Assoc__3_2
    FOREIGN KEY (fk_Playlist_Playlist_ID)
    REFERENCES Playlist (Playlist_ID);
 
ALTER TABLE Movies ADD CONSTRAINT FK_Movies_2
    FOREIGN KEY (fk_Director_Director_ID)
    REFERENCES Director (Director_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Movies ADD CONSTRAINT FK_Movies_3
    FOREIGN KEY (fk_Genre_Genre_ID)
    REFERENCES Genre (Genre_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Basic ADD CONSTRAINT FK_Basic_2
    FOREIGN KEY (fk_User_User_ID)
    REFERENCES User (User_ID)
    ON DELETE CASCADE;
 
ALTER TABLE Review ADD CONSTRAINT FK_Review_2
    FOREIGN KEY (fk_User_User_ID)
    REFERENCES User (User_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Premium ADD CONSTRAINT FK_Premium_2
    FOREIGN KEY (fk_User_User_ID)
    REFERENCES User (User_ID)
    ON DELETE CASCADE;
 
ALTER TABLE Assign ADD CONSTRAINT FK_Assign_1
    FOREIGN KEY (fk_Movies_Movie_ID)
    REFERENCES Movies (Movie_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Assign ADD CONSTRAINT FK_Assign_2
    FOREIGN KEY (fk_Review_Review_ID)
    REFERENCES Review (Review_ID)
    ON DELETE SET NULL;
 
ALTER TABLE Watch ADD CONSTRAINT FK_Watch_1
    FOREIGN KEY (fk_Movies_Movie_ID)
    REFERENCES Movies (Movie_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Watch ADD CONSTRAINT FK_Watch_2
    FOREIGN KEY (fk_User_User_ID)
    REFERENCES User (User_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Make ADD CONSTRAINT FK_Make_1
    FOREIGN KEY (fk_User_User_ID)
    REFERENCES User (User_ID)
    ON DELETE SET NULL;
 
ALTER TABLE Make ADD CONSTRAINT FK_Make_2
    FOREIGN KEY (fk_Playlist_Playlist_ID)
    REFERENCES Playlist (Playlist_ID)
    ON DELETE SET NULL;