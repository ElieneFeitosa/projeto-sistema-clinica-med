# Estrutura do Banco de Dados (Tabelas, Atributos e Chaves)

O banco de dados foi modelado utilizando o conceito relacional no PostgreSQL, sendo composto por entidades independentes e tabelas associativas que gerenciam os relacionamentos do sistema.

### 👥 1. Entidade: MEDICO
Armazena as informações de identificação dos profissionais de saúde cadastrados no sistema.
* **Chave Primária (PK):** `crm` (Identificador único gerado automaticamente pelo SGBD).
* **Atributos:** `nome` (Texto/Varchar) e `telefone` (Numérico/Integer).
* **Localização do Script:** Definida nas linhas 1 a 5 do arquivo [`script_criacao.sql`](./script_criacao.sql).

### 🏥 2. Entidade: Paciente
Registra os dados pessoais e de contato de cada paciente atendido.
* **Chave Primária (PK):** `cpf` (Identificador único gerado automaticamente pelo SGBD).
* **Atributos:** `nome` (Texto/Varchar), `data_nasc` (Data/Date) e `telefone` (Numérico/Smallint).
* **Localização do Script:** Definida nas linhas 7 a 12 do arquivo [`script_criacao.sql`](./script_criacao.sql).

### 📅 3. Relacionamento / Entidade Associativa: Consulta
Tabela responsável por mapear o relacionamento entre **MEDICO** e **Paciente**, registrando o agendamento e o histórico de atendimentos.
* **Chave Primária (PK):** `id_consulta` (Identificador único da transação).
* **Atributos Próprios:** `data_hora` (Data e hora/Timestamp) e `status` (Situação da consulta/Varchar).
* **Chaves Estrangeiras (FK):**
  * `crm`: Referencia a chave primária `crm` da tabela `MEDICO` (Restrição: `fk_crm`).
  * `cpf`: Referencia a chave primária `cpf` da tabela `Paciente` (Restrição: `fk_cpf`).
* **Localização do Script:** Definida nas linhas 14 a 23 do arquivo [`script_criacao.sql`](./script_criacao.sql).

---

### 🔗 Arquivos Relacionados no Repositório
* 🛠️ [Script SQL de Criação das Tabelas](./script_criacao.sql): Contém a estrutura DDL apresentada pronta para execução.
* 📦 [Massa de Dados de Teste](./script_insercao.sql): Script com comandos `INSERT` para povoar as tabelas.
