CREATE TABLE Especialidade(
	id_especialidade integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome_especialidade varchar (100),
	valor_especialidade decimal
);