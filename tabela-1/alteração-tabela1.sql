----------------------------------------------------------------------------------
-- VÍNCULO ENTRE MÉDICO E ESPECIALIDADE (CHAVE ESTRANGEIRA)
----------------------------------------------------------------------------------
-- 1. Cria a coluna na tabela MEDICO para anotar a especialidade.
-- OBS: Ela tem o mesmo nome da coluna em Especialidade (id_especialidade),
-- mas são variáveis diferentes! 
-- -> Especialidade.id_especialidade: É a Chave Primária (quem cria o ID).
-- -> MEDICO.id_especialidade: É a Chave Estrangeira (apenas guarda a cópia do ID)
ALTER TABLE medico ADD COLUMN id_especialidade integer;

ALTER TABLE medico
ADD CONSTRAINT fk_medico_especialidade FOREIGN KEY (id_especialidade) 
REFERENCES especialidade (id_especialidade);
