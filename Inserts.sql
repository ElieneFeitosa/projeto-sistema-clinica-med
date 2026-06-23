INSERT INTO especialidade (nome_especialidade, valor_especialidade) VALUES
('Cardiologia', 250.00),
('Pediatria', 180.00),
('Dermatologia', 220.00),
('Ortopedia', 240.00),
('Clinica Geral', 150.00);

INSERT INTO medico (crm, nome, telefone) VALUES
('PI-434900','João Silva', '98999990001'),
('MA-777333','Maria Oliveira', '98999990002'),
('PI-334555','Carlos Lima', '98999990003'),
('MA-898000','Fernanda Costa', '98999990004'),
('SP-675444','Ricardo Alves', '98999990005');


INSERT INTO paciente (nome, cpf, data_nasc, telefone) VALUES
('Ana Beatriz', '08038668367', '1998-05-10', '98988880001'),
('Pedro Henrique','08038668368', '2000-08-15', '98988880002'),
('Juliana Costa','08038668369' ,'1995-11-20', '98988880003'),
('Marcos Paulo', '08038668370','1987-03-02', '98988880004'),
('Larissa Souza', '08038668371' ,'2001-09-18', '98988880005');


INSERT INTO consulta (data_hora, status_consulta, crm, cpf) VALUES
('2026-06-01 08:00:00', 'Realizada', 'PI-434900','08038668367'),
('2026-06-01 09:00:00', 'Realizada', 'MA-777333', '08038668368'),
('2026-06-01 10:00:00', 'Cancelada','PI-334555','08038668369'),
('2026-06-02 08:30:00', 'Agendada','MA-898000','08038668370'),
('2026-06-02 09:30:00', 'Realizada', 'SP-675444','08038668371');

INSERT INTO receita (data_receita, orientacoes, id_consulta) VALUES
('2026-06-01', 'Tomar medicamentos conforme prescricao medica.', 1),
('2026-06-01', 'Repouso por 7 dias e hidratacao.', 2),
('2026-06-02', 'Uso continuo conforme orientacao.', 3),
('2026-06-03', 'Retorno em 30 dias.', 4),
('2026-06-03', 'Evitar esforco fisico intenso.', 5);


INSERT INTO item_receita (medicamento, dosagem, id_receita) VALUES
('Antiinflamatório', '500mg 8/8h', 1),
('Antibiótico', '500mg 8/8h', 2),
('anti-hipertensivo', '50mg 1x ao dia', 3),
('(IBP)', '20mg 1x ao dia', 4),
('analgésico', '1g se dor', 5);
