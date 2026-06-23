-- Consultas com médico e paciente

SELECT
    c.id_consulta,
    m.nome AS medico,
    p.nome AS paciente,
    c.data_hora,
    c.status_consulta
FROM consulta c
INNER JOIN medico m
    ON c.crm = m.crm
INNER JOIN paciente p
    ON c.cpf = p.cpf
ORDER BY c.id_consulta;


--Receitas emitidas para cada paciente


SELECT
    r.id_receita,
    p.nome AS paciente,
    r.data_receita,
    r.orientacoes
FROM receita r
INNER JOIN consulta c
    ON r.id_consulta = c.id_consulta
INNER JOIN paciente p
    ON c.cpf = p.cpf
ORDER BY r.id_receita;



--  Quantidade de consultas por status

SELECT
    status_consulta,
    COUNT(*) AS quantidade
FROM consulta
GROUP BY status_consulta
ORDER BY quantidade DESC;