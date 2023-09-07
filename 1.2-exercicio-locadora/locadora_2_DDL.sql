--ATIVIDADE DA AULA 5 -- DDL

--Criando a Database
CREATE DATABASE Exercicio_1_2

--Usando a Database Criada
 use Exercicio_1_2;
 
 CREATE TABLE Cliente(
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100) NOT NULL,
	CPF VARCHAR(11) NOT NULL
 )

 CREATE TABLE Empresa(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100) NOT NULL,
	CNPJ VARCHAR(14) NOT NULL
 )

 CREATE TABLE Modelo(
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
 )

 CREATE TABLE Marca(
	IdMarca INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
 )


 CREATE TABLE Veiculo(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca) NOT NULL,
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo) NOT NULL,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa) NOT NULL,
	Placa VARCHAR(7) NOT NULL
 )

 CREATE TABLE Aluguel(
	IdALuguel INT PRIMARY KEY IDENTITY,
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente) NOT NULL,
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo) NOT NULL,
	Datadecadastro DATE NOT NULL,
	Dataderetirada DATE NOT NULL
 )