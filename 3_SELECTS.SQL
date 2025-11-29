-- 1. Listar todos os clientes que são do INSS
SELECT C.Nome AS Cliente, C.Telefone, CAT.Nome AS Categoria
FROM CLIENTE C
JOIN CATEGORIA CAT ON C.ID_Categoria = CAT.ID_Categoria
WHERE CAT.Nome = 'INSS';

-- 2. Relatório de Vendas Realizadas
SELECT 
    V.Nome AS Vendedor, 
    C.Nome AS Cliente, 
    S.Nome AS Servico_Vendido,
    A.Data_Hora
FROM ATENDIMENTO A
JOIN VENDEDOR V ON A.ID_Vendedor = V.ID_Vendedor
JOIN CLIENTE C ON A.ID_Cliente = C.ID_Cliente
JOIN SERVICO S ON A.ID_Servico = S.ID_Servico
JOIN STATUS_ATENDIMENTO ST ON A.ID_Status_Atendimento = ST.ID_Status_Atendimento
WHERE ST.Descricao = 'Venda Realizada'
ORDER BY A.Data_Hora DESC;

-- 3. Contagem de atendimentos por Vendedor
SELECT V.Nome, COUNT(A.ID_Atendimento) AS Total_Atendimentos
FROM VENDEDOR V
LEFT JOIN ATENDIMENTO A ON V.ID_Vendedor = A.ID_Vendedor
GROUP BY V.Nome;

-- 4. Listar os 5 clientes com maior Renda
SELECT Nome, Renda 
FROM CLIENTE 
ORDER BY Renda DESC 
LIMIT 5;