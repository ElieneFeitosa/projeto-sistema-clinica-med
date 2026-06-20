# Estrutura do Banco de Dados (Tabelas, Atributos e Chaves)

O banco de dados foi modelado utilizando o conceito relacional no PostgreSQL, sendo composto por entidades independentes e tabelas associativas que gerenciam os relacionamentos do sistema.

### 1. Entidade: Medico
Armazena as informações de identificação dos profissionais de saúde cadastrados no sistema.
* **Chave Primária (PK):** `crm` (Identificador único gerado automaticamente pelo SGBD).
* **Chave Estrangeira (FK):** `id_especialidade` : É a Chave Estrangeira que apenas guarda a cópia do ID que esta na tabela especialidade.
* **Atributos:** `nome` (Texto/Varchar) e `telefone` (Numérico/Integer).
* **Localização do Script:** [https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/blob/main/tabela1.sql.](https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/tree/main/tabela-1)

### 2. Entidade: Paciente
Registra os dados pessoais e de contato de cada paciente atendido.
* **Chave Primária (PK):** `cpf` (Identificador único gerado automaticamente pelo SGBD).
* **Atributos:** `nome` (Texto/Varchar), `data_nasc` (Data/Date) e `telefone` (Numérico/Smallint).
* **Localização do Script:** [https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/blob/main/tabela2.sql](https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/tree/main/tabela-2)
* 
### 3. Relacionamento / Entidade Associativa: Consulta
Tabela responsável por mapear o relacionamento entre **Medico** e **Paciente**, registrando o agendamento, nome do médico, nome do paciente e status.
* **Chave Primária (PK):** `id_consulta` (Identificador único da transação).
* **Atributos Próprios:** `data_hora` (Data e hora/Timestamp) e `status` (Situação da consulta/Varchar).
* **Chaves Estrangeiras (FK):**
  * `crm`: Referencia a chave primária `crm` da tabela `MEDICO` (Restrição: `fk_crm`).
  * `cpf`: Referencia a chave primária `cpf` da tabela `Paciente` (Restrição: `fk_cpf`).
* **Localização do Script:**[ https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/blob/main/tabela3.sql](https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/tree/main/tabela-3)
* **Tipos de relacionamentos** `consulta -> médico`: N -> 1 `medico -> consulta`: 1-> N.

---
