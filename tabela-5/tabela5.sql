CREATE TABLE RECEITA (
	id_receita integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	data_receita date,
	orientacoes varchar (800),
	-- coluna id_consulta que ira relacionar id_consulta da tabela consulta com o id necessário aqui

	id_consulta smallint, 

	-- criando o elo apontando para consulta
	CONSTRAINT fk_receita_consulta FOREIGN KEY (id_consulta)
	REFERENCES consulta(id_consulta)
	
)