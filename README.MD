# Sistema de CRM e Gestão de Atendimentos - E Cred

Este repositório contém os scripts SQL e a documentação do projeto de banco de dados desenvolvido para o cenário real da empresa **E Cred** (Correspondente Bancário).

O projeto foi desenvolvido como parte da disciplina de Banco de Dados do curso de **Análise e Desenvolvimento de Sistemas**, com o objetivo de aplicar conceitos de Modelagem de Dados (Conceitual e Lógica), Normalização e Manipulação de Dados com SQL (DML e DDL).

## 🎯 Objetivo do Projeto
O sistema tem como objetivo atuar como um **CRM (Customer Relationship Management)** simplificado, permitindo:
* Centralizar o cadastro de clientes e seus vínculos (INSS, SIAPE, CLT, Bolsa Família).
* Registrar o histórico de atendimentos e interações realizadas pelos vendedores.
* Controlar o funil de vendas através de status de atendimento.
* Gerenciar os serviços ofertados (Portabilidade, Margem, Cartão, etc.).

## 🛠️ Tecnologias Utilizadas
* **Linguagem:** SQL
* **Banco de Dados:** SQLite
* **Ferramenta de Desenvolvimento:** SQLiteStudio
* **Modelagem:** brModelo / diagrams.net

## 🗂️ Estrutura do Banco de Dados
O banco de dados `db_ecred` foi modelado seguindo as formas normais (até a 3FN) e é composto pelas seguintes tabelas principais:

1.  **CLIENTE:** Armazena os dados pessoais, renda e categoria do cliente.
2.  **ATENDIMENTO:** Tabela central que registra cada interação, ligando Cliente, Vendedor, Serviço e Status.
3.  **VENDEDOR:** Cadastro da equipe de vendas.
4.  **CATEGORIA:** Tabela de domínio para os tipos de vínculo (ex: INSS, SIAPE).
5.  **SERVICO:** Tabela de domínio para os produtos ofertados (ex: Portabilidade, Cartão).
6.  **STATUS_ATENDIMENTO:** Tabela de domínio para o resultado do contato (ex: Venda Realizada, Sem Interesse).

## 🚀 Como Executar o Projeto

Para testar o projeto em sua máquina, siga a ordem de execução dos scripts abaixo. Certifique-se de estar utilizando um gerenciador compatível com SQLite (como o SQLiteStudio).

### 1. Criação da Estrutura (DDL)
Execute o arquivo `1_estrutura.sql`.
* Este script cria todas as tabelas e define as Chaves Primárias (PK) e Estrangeiras (FK).
* **Importante:** O comando `PRAGMA foreign_keys = ON;` é executado para garantir a integridade referencial no SQLite.

### 2. Inserção de Dados (DML - Insert)
Execute o arquivo `2_insercao.sql`.
* Este script povoa o banco com dados fictícios para teste, incluindo categorias padrão, vendedores da equipe e clientes de exemplo.

### 3. Consultas e Relatórios (DML - Select)
Execute o arquivo `3_consultas.sql`.
* Contém exemplos de relatórios gerenciais, utilizando comandos como `JOIN`, `WHERE`, `ORDER BY` e `GROUP BY`.
* Exemplo: Relatório de vendas realizadas e contagem de atendimentos por vendedor.

### 4. Atualização e Exclusão (DML - Update/Delete)
Execute o arquivo `4_atualizacao_exclusao.sql`.
* Contém exemplos práticos de manutenção de dados, como atualização de telefone de cliente e correção de status de atendimento.

## 📝 Diagrama Entidade-Relacionamento (DER)

*(Opcional: Se você quiser, pode salvar a imagem do seu diagrama na pasta do projeto e colocar o link aqui, ex: `![Diagrama do Banco](imagem_diagrama.png)`)*

## 👨‍💻 Autor

**Eduardo**
* Estudante de Análise e Desenvolvimento de Sistemas
* Universidade Cruzeiro do Sul