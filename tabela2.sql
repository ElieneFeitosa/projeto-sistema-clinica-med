CREATE TABLE Paciente (
	cpf integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome varchar (255),
	data_nasc date,
	telefone smallint
);