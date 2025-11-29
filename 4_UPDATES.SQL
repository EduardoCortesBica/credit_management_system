-- === 3 COMANDOS DE UPDATE ===

-- 1. Atualizar o telefone de um cliente específico
UPDATE CLIENTE 
SET Telefone = '(51) 99999-9999' 
WHERE Nome = 'Ana Pereira';

-- 2. Corrigir o status de um atendimento
UPDATE ATENDIMENTO 
SET ID_Status_Atendimento = 2, Observacao = 'Cliente desistiu após negociar.'
WHERE ID_Atendimento = 3;

-- 3. Aumentar a renda cadastrada de todos os clientes CLT em 10%
-- Nota: O SQLite aceita subqueries no WHERE
UPDATE CLIENTE 
SET Renda = Renda * 1.10
WHERE ID_Categoria = (SELECT ID_Categoria FROM CATEGORIA WHERE Nome = 'CLT');


-- === 3 COMANDOS DE DELETE ===

-- 1. Deletar um atendimento específico
DELETE FROM ATENDIMENTO 
WHERE ID_Atendimento = 2 AND ID_Vendedor = 2;

-- 2. Deletar clientes pelo nome
DELETE FROM CLIENTE 
WHERE Nome = 'Carlos Lima';

-- 3. Deletar um serviço pelo nome
DELETE FROM SERVICO 
WHERE Nome = 'Refinanciamento';