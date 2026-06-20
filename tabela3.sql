-- esta tabela relaciona a tabela 1 e a tabela 2, contendo uma PK e duas FK
CREATE TABLE Consulta (
	id_consulta smallint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	data_hora timestamp,
	status varchar,
	crm int,
	cpf int,

	CONSTRAINT fk_crm FOREIGN KEY (crm)
	REFERENCES medico(crm),
	CONSTRAINT fk_cpf FOREIGN KEY (cpf)
	REFERENCES paciente(cpf)
	
);