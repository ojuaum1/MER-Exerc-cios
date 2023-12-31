CREATE DATABASE Exercicio_1_4

USE Exercicio_1_4

CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
)

CREATE TABLE Artista(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(60) NOT NULL
)

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100) NOT NULL,
	Senha VARCHAR(70) NOT NULL,
	Email VARCHAR(70) NOT NULL,
	Permiss�o BIT NOT NULL
)

CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista) NOT NULL,
	Titulo VARCHAR(80) NOT NULL,
	Tempo TIME NOT NULL,
	DataLancamento DATE NOT NULL,
	Localizacao VARCHAR(100) NOT NULL,
	Ativo BIT NOT NULL
)

CREATE TABLE AlbumUsuario(
	IdAlbumUsuario INT PRIMARY KEY IDENTITY,
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum) NOT NULL,

)

CREATE TABLE AlbumEstilo(
	IdAlbumEstilo INT PRIMARY KEY IDENTITY,
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum) NOT NULL,
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo) NOT NULL
)

