USE Exercicio_1_2;


--Insere Valores nas tabelas
INSERT INTO Cliente(Nome,CPF)
VALUES 
	('André feio','51910007811'),
	('João gostoso','51718407811'),
	('gabi saopaulina','01845007811'),
	('everton james','51910098711')

INSERT INTO Empresa(Nome,CNPJ)
VALUES ('Alugueis ltda', '213581239')

INSERT INTO Modelo(Nome)
VALUES 
	('Ka'),
	('Corsa'),
	('Uno'),
	('Fox')

INSERT INTO Marca(Nome)
VALUES 
	('FORD'),
	('Chevrolet')

INSERT INTO Veiculo(IdMarca, IdModelo, IdEmpresa, Placa)
VALUES 
	(1,1,1,'hud3145'),
	(2,2,1,'4123els'),
	(2,3,1,'ha83els'),
	(1,4,1,'hadesql')

INSERT INTO Aluguel(IdCliente, IdVeiculo, Datadecadastro, Dataderetirada)
VALUES 
	(1,1,'2023-08-01', '2023-10-30'),
	(1,2,'2023-08-01', '2023-10-30'),
	(4,4,'2023-08-03', '2023-10-30'),
	(3,2,'2023-10-31', '2023-11-10')


--Visualizando as tabelas
SELECT * FROM Cliente
SELECT * FROM Empresa
SELECT * FROM Modelo
SELECT * FROM Marca
SELECT * FROM Veiculo
SELECT * FROM Aluguel
