# Estrutura do Banco de Dados (Tabelas, Atributos e Chaves)

O banco de dados foi modelado utilizando o conceito relacional no PostgreSQL, sendo composto por entidades independentes e tabelas associativas que gerenciam os relacionamentos do sistema.

### 1. Entidade: Medico
Armazena as informações de identificação dos profissionais de saúde cadastrados no sistema.
* **Chave Primária (PK):** `crm` (Identificador único gerado automaticamente pelo SGBD).
* **Chave Estrangeira (FK):** `id_especialidade` : É a Chave Estrangeira que apenas guarda a cópia do ID que esta na tabela especialidade.
* **Atributos:** `nome` (Texto/Varchar) e `telefone` (Numérico/Integer).
* **Localização do Script:** https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/tree/main/tabela-1
  
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


###  4. Entidade: Especialidade
Tabela de suporte que armazena as especialidades médicas disponíveis e seus respectivos custos base.
* **Chave Primária (PK):** `id_especialidade` (Identificador único gerado automaticamente pelo SGBD).
* **Atributos:** `nome_especialidade` (Texto/Varchar) e `valor_especialidade` (Numérico Decimal/Decimal).
* **Localização do Script:** https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/blob/main/tabela-4/tabela4.sql


### 5. Entidade: RECEITA
Registra as prescrições médicas e orientações geradas a partir de um atendimento realizado.
* **Chave Primária (PK):** `id_receita` (Identificador único gerado automaticamente pelo SGBD).
* **Atributos Próprios:** `data_receita` (Data/Date) e `orientacoes` (Texto longo/Varchar).
* **Chaves Estrangeiras (FK):**
  * `id_consulta`: Referencia a chave primária `id_consulta` da tabela `Consulta` (Restrição: `fk_receita_consulta`). Garante que nenhuma receita exista sem estar vinculada a um atendimento válido.
* **Localização do Script:** https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/blob/main/tabela-5/tabela5.sql

* ### 6. Entidade Dependente: item_receita
Gerencia o desmembramento dos medicamentos prescritos em uma receita, permitindo que uma única receita contenha múltiplos remédios e dosagens.
* **Chave Primária (PK):** `id_item` (Identificador único do item gerado automaticamente pelo SGBD).
* **Atributos Próprios:** `medicamento` (Nome do fármaco/Varchar) e `dosagem` (Instruções de uso e miligramagem/Varchar).
* **Chaves Estrangeiras (FK):** * `id_receita`: Referencia a chave primária `id_receita` da tabela `RECEITA` (Restrição: `fk_item_receita`). Garante a integridade referencial, impedindo itens órfãos sem uma receita mãe.
* **Localização do Script:** https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/tree/main/tabela-6

*  ### 7. Arquivo de inserts:
*  inclui o script de inserção dos dados utilizados para validar o sistema.
* **Localização do Script:** https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/blob/main/Inserts.sql

* ### 8. Consultas SQL:
  
* Conjunto de consultas SQL desenvolvidas para testar os relacionamentos e recuperar informações armazenadas no banco de dados.
* As consultas utilizam comandos como SELECT e JOIN para exibir dados de consultas e receitas cadastradas no sistema.
* * **Localização do Script:** https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/blob/main/consultas.sql
* ### Diagrama ERD: https://github.com/ElieneFeitosa/projeto-sistema-clinica-med/tree/main/ERD


---
