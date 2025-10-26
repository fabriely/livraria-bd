-- População da tabela Endereco
INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP) VALUES
('Rua das Flores', '123', 'Centro', 'Recife', '50000-000'),
('Avenida Brasil', '456', 'Boa Vista', 'Recife', '50050-050'),
('Rua da Paz', '789', 'Imbiribeira', 'Recife', '50060-060');

-- População da tabela Fornecedor
INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social) VALUES
('12.345.678/0001-90', 'Editora ABC', 'Editora', '(81) 99999-9999', 'Editora ABC LTDA'),
('98.765.432/0001-10', 'Distribuidora XYZ', 'Distribuidor', '(81) 98888-8888', 'Distribuidora XYZ LTDA');

-- População da tabela Livro
INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco) VALUES
('Machado de Assis', 'Dom Casmurro', 'Romance', 1899, 'Editora ABC', 39.90),
('J.K. Rowling', 'Harry Potter e a Pedra Filosofal', 'Fantasia', 1997, 'Editora ABC', 49.90),
('George Orwell', '1984', 'Ficção', 1949, 'Distribuidora XYZ', 29.90);

-- População da tabela Funcionario
INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente) VALUES
('João Silva', 1, 2500.00, NULL),
('Maria Oliveira', 2, 3000.00, 1),
('Carlos Souza', 3, 2000.00, 2);

-- População da tabela Cliente
INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ) VALUES
('Ana Paula', 'ana.paula@email.com', 'Rua das Flores', '123', 'Centro', 'Recife', '50000-000', 'F', '123.456.789-09'),
('Empresa XPTO', 'contato@xpto.com', 'Avenida Brasil', '456', 'Boa Vista', 'Recife', '50050-050', 'J', '12.345.678/0001-90');

-- População da tabela Pessoa_Fisica
INSERT INTO Pessoa_Fisica (CPF, ID_cliente) VALUES
('123.456.789-09', 1);

-- População da tabela Pessoa_Juridica
INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente) VALUES
('12.345.678/0001-90', 2);

-- População da tabela Telefone_Cliente
INSERT INTO Telefone_Cliente (ID_cliente, Telefone) VALUES
(1, '(81) 99999-9999'),
(2, '(81) 98888-8888');

-- População da tabela Telefone_Funcionario
INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone) VALUES
(1, '(81) 97777-7777'),
(2, '(81) 96666-6666');

-- População da tabela Estoque
INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada) VALUES
(1, 'Lote001', 100, '2025-10-01'),
(2, 'Lote002', 50, '2025-10-05'),
(3, 'Lote003', 200, '2025-10-10');

-- População da tabela Venda
INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento) VALUES
(1, 1, 1, '2025-10-15', 1, 39.90, 1, 'Cartão Crédito'),
(2, 2, 2, '2025-10-16', 2, 99.80, 2, 'PIX');

-- População da tabela Enviar
INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio) VALUES
('12.345.678/0001-90', 1, '2025-10-20', 10, 399.00, 'ENV001'),
('98.765.432/0001-10', 2, '2025-10-21', 5, 249.50, 'ENV002');

-- População da tabela Promocao
INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim) VALUES
(1, 1, 30, '2025-10-01', '2025-10-31'),
(2, 2, 15, '2025-10-10', '2025-10-25');

-- População da tabela Aquisicao
INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario) VALUES
('12.345.678/0001-90', 1, 1, '2025-10-05', 20, 19.95),
('98.765.432/0001-10', 2, 2, '2025-10-06', 10, 24.95);

-- População da tabela Contrato
INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato) VALUES
(2, 1, 1, 1000.00, '2025-10-01');

-- População da tabela Reserva
INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status) VALUES
(1, 3, 5.00, '2025-10-10', 'Ativa');