CREATE TABLE item_receita (
	id_item smallint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	medicamento varchar (255),
	dosagem varchar (255),

	id_receita integer,

	CONSTRAINT fk_item_receita FOREIGN KEY (id_receita)
	REFERENCES RECEITA(id_receita)
);