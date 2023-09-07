CREATE DATABASE Exercicio_1_3

USE Exercicio_1_3

CREATE TABLE TipoDePet(
	IdTipoDePet INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(30) NOT NULL
)

CREATE TABLE Raca(
	IdTipoDePet INT FOREIGN KEY REFERENCES TipoDePet(IdTipoDePet) NOT NULL,
	IdRaca INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
)

CREATE TABLE Dono(
	IdDono INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Endereco VARCHAR(80) NOT NULL
)

CREATE TABLE Pet(
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono) NOT NULL,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca) NOT NULL,
	IdPet INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	DataNascimento DATE NOT NULL
)

CREATE TABLE Clinica(
	IdClinica INT PRIMARY KEY IDENTITY,
	Endereco VARCHAR(80) NOT NULL
)

CREATE TABLE Veterinario(
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
	IdVeterinario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	CRMV VARCHAR(20) NOT NULL
)

CREATE TABLE Atendimento(
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario) NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet) NOT NULL,
	IdAtendimento INT PRIMARY KEY IDENTITY,
	DataDoAtendimento DATE NOT NULL,
	Preco MONEY NOT NULL
)