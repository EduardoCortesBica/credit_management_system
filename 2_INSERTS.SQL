INSERT INTO CATEGORIA (Nome) VALUES 
('INSS'), ('SIAPE'), ('CLT'), ('Bolsa Família');

INSERT INTO SERVICO (Nome) VALUES 
('Portabilidade'), ('Margem Nova'), ('Cartão Consignado'), ('Refinanciamento');

INSERT INTO STATUS_ATENDIMENTO (Descricao) VALUES 
('Venda Realizada'), ('Sem Interesse'), ('Telefone Errado'), ('Em Negociação');

INSERT INTO VENDEDOR (Nome, Login) VALUES 
('Eduardo', 'eduardo.vendas'),
('Emanuele', 'emanuele.vendas'),
('Andressa', 'andressa.vendas');

INSERT INTO CLIENTE (Nome, Telefone, Matricula, Email, Renda, ID_Categoria) VALUES 
('Maria Silva', '(51) 99999-1111', '123456', 'maria@email.com', 1500.00, 1), 
('João Souza', '(51) 98888-2222', '654321', 'joao@email.com', 4500.00, 2), 
('Ana Pereira', '(11) 97777-3333', '987654', 'ana@email.com', 2200.00, 3), 
('Carlos Lima', '(21) 96666-4444', '112233', 'carlos@email.com', 800.00, 4); 


INSERT INTO ATENDIMENTO (Data_Hora, Observacao, ID_Cliente, ID_Vendedor, ID_Servico, ID_Status_Atendimento) VALUES 
('2025-10-01 10:00:00', 'Cliente interessada na taxa, fechamos portabilidade.', 1, 1, 1, 1), 
('2025-10-01 14:30:00', 'Cliente disse que já tem muitos empréstimos.', 2, 2, 2, 2), 
('2025-10-02 09:15:00', 'Ligação caiu, retornar.', 3, 3, 3, 4), 
('2025-10-02 11:00:00', 'Venda realizada com sucesso, cliente feliz.', 1, 1, 2, 1);