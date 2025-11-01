-- População da tabela Endereco
INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua das Flores', '123', 'Centro', 'Recife', '50000-000');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Avenida Brasil', '456', 'Boa Vista', 'Recife', '50050-050');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua da Paz', '789', 'Imbiribeira', 'Recife', '50060-060');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua do Sol', '321', 'Centro', 'Garanhuns', '55293-000');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua das Oliveiras', '222', 'Casa Forte', 'Recife', '52060-070');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Avenida Agamenon Magalhães', '500', 'Derby', 'Recife', '52010-010');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua José de Alencar', '900', 'Boa Vista', 'Recife', '50070-080');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua da Aurora', '135', 'Santo Amaro', 'Recife', '50040-070');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua São João', '240', 'Centro', 'Olinda', '53020-010');

INSERT INTO Endereco (Rua, Numero, Bairro, Cidade, CEP)
VALUES ('Rua XV de Novembro', '118', 'Centro', 'Caruaru', '55002-050');


-- População da tabela Fornecedor
INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('12.345.678/0001-90', 'Editora ABC', 'Editora', '(81)99999-9999', 'Editora ABC LTDA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('98.765.432/0001-10', 'Distribuidora XYZ', 'Distribuidor', '(81)98888-8888', 'Distribuidora XYZ LTDA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('45.987.321/0001-55', 'Darkside Books', 'Editora', '(11)97777-7777', 'Darkside Books SA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('33.444.555/0001-66', 'Tor Publishing', 'Importador', '(21)95555-5555', 'Tor Books Brasil LTDA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('87.654.321/0001-12', 'Editora Intrínseca', 'Editora', '(11)96666-6666', 'Editora Intrínseca LTDA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('55.123.987/0001-77', 'Companhia das Letras', 'Editora', '(11)93333-3333', 'Companhia das Letras LTDA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('22.333.444/0001-88', 'HarperCollins Brasil', 'Distribuidor', '(21)92222-2222', 'HarperCollins Brasil LTDA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('44.555.666/0001-99', 'Editora Rocco', 'Editora', '(11)90000-0000', 'Editora Rocco SA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('99.111.222/0001-11', 'Planeta Livros', 'Editora', '(31)98877-6655', 'Editora Planeta do Brasil SA');

INSERT INTO Fornecedor (CNPJ, Nome, Tipo_fornecedor, Telefone, Razao_social)
VALUES ('66.777.888/0001-22', 'Record', 'Distribuidor', '(41)91122-3344', 'Grupo Editorial Record SA');


-- População da tabela Livro
INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Machado de Assis', 'Dom Casmurro', 'Romance', 1899, 'Editora ABC', 39.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('J.K. Rowling', 'Harry Potter e a Pedra Filosofal', 'Fantasia', 1997, 'Editora Rocco', 49.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('George Orwell', '1984', 'Ficção', 1949, 'Companhia das Letras', 29.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Raphael Montes', 'Suicidas', 'Suspense', 2012, 'Darkside Books', 44.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Stephen King', 'It: A Coisa', 'Terror', 1986, 'Suma', 89.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Agatha Christie', 'Assassinato no Expresso Oriente', 'Suspense', 1934, 'HarperCollins Brasil', 39.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Robert Jordan', 'O Olho do Mundo', 'Fantasia', 1990, 'Tor Books', 69.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Brandon Sanderson', 'Mistborn: O Império Final', 'Fantasia', 2006, 'Tor Books', 59.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Raphael Montes', 'Dias Perfeitos', 'Suspense', 2014, 'Companhia das Letras', 49.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Stephen King', 'O Iluminado', 'Terror', 1977, 'Suma', 79.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Brandon Sanderson', 'Mistborn: O Poço da Ascensão', 'Fantasia', 2007, 'Tor Books', 64.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Brandon Sanderson', 'Mistborn: O Herói das Eras', 'Fantasia', 2008, 'Tor Books', 69.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Brandon Sanderson', 'O Caminho dos Reis', 'Fantasia', 2010, 'Tor Books', 89.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Brandon Sanderson', 'Palavras de Radiância', 'Fantasia', 2014, 'Tor Books', 94.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Brandon Sanderson', 'Sacramentadora', 'Fantasia', 2017, 'Tor Books', 79.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Brandon Sanderson', 'Warbreaker', 'Fantasia', 2009, 'Tor Books', 69.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Stephen King', 'Misery: Louca Obsessão', 'Suspense', 1987, 'Suma', 69.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Stephen King', 'A Zona Morta', 'Suspense', 1979, 'Suma', 59.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Agatha Christie', 'Morte no Nilo', 'Suspense', 1937, 'HarperCollins Brasil', 44.90);

INSERT INTO Livro (Autor, Nome, Categoria, Ano, Editora, Preco)
VALUES ('Agatha Christie', 'E Não Sobrou Nenhum', 'Suspense', 1939, 'HarperCollins Brasil', 49.90);


-- População da tabela Funcionario
INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('João Silva', 1, 2500.00, NULL);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Maria Oliveira', 2, 3000.00, 1);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Carlos Souza', 3, 2000.00, 2);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Anne Collier', 5, 4200.00, 2);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Pedro Santos', 4, 2600.00, 1);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Rafael Lima', 6, 2300.00, 3);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Tiago Figueiredo', 9, 3800.00, 2);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Paulo Henrique', 7, 3100.00, 1);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Samuell Henrique', 8, 2750.00, 2);

INSERT INTO Funcionario (Nome, ID_endereco, Salario, Gerente)
VALUES ('Laura Mendes', 10, 2600.00, 3);


-- População da tabela Cliente
INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Ana Paula', 'ana.paula@email.com', 'Rua das Flores', '123', 'Centro', 'Recife', '50000-000', 'F', '123.456.789-09');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Empresa XPTO', 'contato@xpto.com', 'Avenida Brasil', '456', 'Boa Vista', 'Recife', '50050-050', 'J', '12.345.678/0001-90');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('João Luís', 'joao.luis@email.com', 'Rua do Sol', '321', 'Centro', 'Garanhuns', '55293-000', 'F', '321.654.987-00');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Ryei Estevan', 'ryei@email.com', 'Rua São João', '240', 'Centro', 'Olinda', '53020-010', 'F', '654.987.321-11');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Companhia Azul', 'contato@ciaazul.com', 'Rua da Aurora', '135', 'Santo Amaro', 'Recife', '50040-070', 'J', '22.555.999/0001-88');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Biblioteca Central', 'bib@central.com', 'Rua José de Alencar', '900', 'Boa Vista', 'Recife', '50070-080', 'J', '33.777.444/0001-11');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Livraria Estrela', 'estrela@livros.com', 'Rua XV de Novembro', '118', 'Centro', 'Caruaru', '55002-050', 'J', '11.222.333/0001-44');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Thiago Martins', 'thiago@email.com', 'Rua das Oliveiras', '222', 'Casa Forte', 'Recife', '52060-070', 'F', '852.963.741-00');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Editora Sol', 'contato@edsol.com', 'Avenida Agamenon Magalhães', '500', 'Derby', 'Recife', '52010-010', 'J', '44.111.222/0001-33');

INSERT INTO Cliente (Nome, Email, Rua, Numero, Bairro, Cidade, CEP, Tipo, CPF_CNPJ)
VALUES ('Lucas Ferreira', 'lucas@email.com', 'Rua José de Alencar', '900', 'Boa Vista', 'Recife', '50070-080', 'F', '963.852.741-22');

-- População da tabela Pessoa_Fisica
INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('123.456.789-09', 1);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('321.654.987-00', 3);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('654.987.321-11', 4);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('852.963.741-00', 8);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('963.852.741-22', 10);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('741.852.963-33', 1);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('258.369.147-44', 3);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('159.357.486-55', 4);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('951.753.852-66', 8);

INSERT INTO Pessoa_Fisica (CPF, ID_cliente)
VALUES ('789.456.123-77', 10);


-- População da tabela Pessoa_Juridica
INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('12.345.678/0001-90', 2);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('22.555.999/0001-88', 5);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('33.777.444/0001-11', 6);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('11.222.333/0001-44', 7);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('44.111.222/0001-33', 9);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('77.888.999/0001-55', 2);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('55.666.777/0001-22', 5);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('88.999.000/0001-33', 6);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('99.000.111/0001-44', 7);

INSERT INTO Pessoa_Juridica (CNPJ, ID_cliente)
VALUES ('10.111.222/0001-55', 9);


-- População da tabela Telefone_Cliente
INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (1, '(81)99999-9999');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (2, '(81)98888-8888');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (3, '(87)98123-4567');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (4, '(81)98222-3333');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (5, '(81)98333-4444');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (6, '(81)98444-5555');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (7, '(81)98555-6666');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (8, '(81)98666-7777');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (9, '(81)98777-8888');

INSERT INTO Telefone_Cliente (ID_cliente, Telefone)
VALUES (10, '(81)98888-9999');


-- População da tabela Telefone_Funcionario
INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (1, '(81)97777-7777');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (2, '(81)96666-6666');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (3, '(81)95555-5555');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (4, '(81)94444-4444');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (5, '(81)93333-3333');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (6, '(81)92222-2222');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (7, '(81)91111-1111');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (8, '(81)90000-0000');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (9, '(81)98989-8989');

INSERT INTO Telefone_Funcionario (ID_funcionario, Telefone)
VALUES (10, '(81)97878-7878');


-- População da tabela Estoque
INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (1, 'Lote001', 100, DATE '2025-10-01');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (2, 'Lote002', 50, DATE '2025-10-05');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (3, 'Lote003', 200, DATE '2025-10-10');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (4, 'Lote004', 80, DATE '2025-10-12');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (5, 'Lote005', 150, DATE '2025-10-14');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (6, 'Lote006', 120, DATE '2025-10-16');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (7, 'Lote007', 100, DATE '2025-10-18');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (8, 'Lote008', 90, DATE '2025-10-20');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (9, 'Lote009', 70, DATE '2025-10-22');

INSERT INTO Estoque (ID_livro, Lote, Quantidade_livro, Data_entrada)
VALUES (10, 'Lote010', 200, DATE '2025-10-25');


-- População da tabela Venda
INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (1, 1, 1, DATE '2025-09-15', 1, 39.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (2, 2, 2, DATE '2025-09-16', 2, 99.80, 2, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 4, 4, DATE '2025-09-17', 1, 44.90, 1, 'Dinheiro');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 5, 3, DATE '2025-09-18', 1, 89.90, 1, 'Cartão Débito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (5, 7, 6, DATE '2025-09-19', 1, 69.90, 1, 'Boleto');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (6, 8, 5, DATE '2025-09-20', 1, 59.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (7, 9, 7, DATE '2025-09-21', 1, 49.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (8, 10, 8, DATE '2025-09-22', 1, 79.90, 1, 'Transferência');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (9, 3, 9, DATE '2025-09-23', 1, 29.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (10, 6, 10, DATE '2025-09-24', 1, 39.90, 1, 'Dinheiro');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 11, 4, DATE '2025-09-25', 1, 64.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 12, 4, DATE '2025-09-26', 1, 69.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 13, 5, DATE '2025-09-27', 1, 89.90, 2, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 14, 6, DATE '2025-09-28', 1, 94.90, 2, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 15, 5, DATE '2025-09-29', 1, 79.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 16, 7, DATE '2025-09-30', 1, 69.90, 1, 'Dinheiro');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 13, 3, DATE '2025-09-20', 1, 89.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 17, 2, DATE '2025-09-21', 1, 69.90, 1, 'Cartão Débito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 19, 2, DATE '2025-09-22', 1, 44.90, 1, 'Dinheiro');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 20, 3, DATE '2025-09-23', 1, 49.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (6, 17, 2, DATE '2025-09-26', 1, 69.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (8, 18, 5, DATE '2025-09-27', 1, 59.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (9, 19, 4, DATE '2025-09-28', 1, 44.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (10, 20, 6, DATE '2025-09-29', 1, 49.90, 1, 'Dinheiro');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 13, 4, DATE '2025-09-18', 1, 89.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 13, 5, DATE '2025-09-19', 2, 179.80, 2, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (8, 13, 6, DATE '2025-09-20', 1, 89.90, 1, 'Cartão Débito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (10, 13, 2, DATE '2025-09-21', 1, 89.90, 1, 'Boleto');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (6, 13, 1, DATE '2025-09-22', 1, 89.90, 1, 'Dinheiro');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 8, 4, DATE '2025-09-17', 1, 59.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 8, 6, DATE '2025-09-18', 1, 59.90, 1, 'Cartão Débito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (8, 8, 7, DATE '2025-09-19', 1, 59.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (9, 8, 9, DATE '2025-09-20', 1, 59.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 20, 3, DATE '2025-09-23', 1, 49.90, 1, 'Dinheiro');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (8, 20, 5, DATE '2025-09-24', 1, 49.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (10, 20, 6, DATE '2025-09-25', 1, 49.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 16, 4, DATE '2025-09-26', 1, 69.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (4, 16, 5, DATE '2025-09-27', 1, 69.90, 1, 'Cartão Débito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (6, 16, 6, DATE '2025-09-28', 1, 69.90, 1, 'Cartão Crédito');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (3, 4, 4, DATE '2025-09-29', 1, 44.90, 1, 'PIX');

INSERT INTO Venda (ID_cliente, ID_livro, ID_funcionario, Data_venda, Quantidade, Valor_total, Parcelamento, Forma_pagamento)
VALUES (8, 4, 5, DATE '2025-09-30', 1, 44.90, 1, 'Cartão Débito');

-- População da tabela Enviar
INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('12.345.678/0001-90', 1, DATE '2025-10-20', 10, 399.00, 'ENV001');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('98.765.432/0001-10', 2, DATE '2025-10-21', 5, 249.50, 'ENV002');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('45.987.321/0001-55', 4, DATE '2025-10-22', 8, 359.20, 'ENV003');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('33.444.555/0001-66', 7, DATE '2025-10-23', 12, 838.80, 'ENV004');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('55.123.987/0001-77', 3, DATE '2025-10-24', 10, 299.00, 'ENV005');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('22.333.444/0001-88', 6, DATE '2025-10-25', 6, 239.40, 'ENV006');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('44.555.666/0001-99', 2, DATE '2025-10-26', 15, 748.50, 'ENV007');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('99.111.222/0001-11', 5, DATE '2025-10-27', 20, 1798.00, 'ENV008');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('87.654.321/0001-12', 8, DATE '2025-10-28', 10, 599.00, 'ENV009');

INSERT INTO Enviar (CNPJ_fornecedor, ID_livro, Data_envio, Quantidade, Valor, Codigo_envio)
VALUES ('66.777.888/0001-22', 10, DATE '2025-10-29', 25, 1997.50, 'ENV010');


-- População da tabela Promocao (a partir de novembro)
INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (4, 3, 15, DATE '2025-11-10', DATE '2025-11-25');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (5, 1, 10, DATE '2025-11-15', DATE '2025-11-25');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (6, 2, 20, DATE '2025-11-20', DATE '2025-12-10');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (7, 4, 25, DATE '2025-11-25', DATE '2025-12-20');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (8, 5, 30, DATE '2025-11-30', DATE '2025-12-30');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (9, 6, 12, DATE '2025-12-01', DATE '2025-12-13');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (10, 7, 10, DATE '2025-12-05', DATE '2025-12-15');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (3, 8, 18, DATE '2025-12-10', DATE '2025-12-28');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (2, 9, 20, DATE '2025-12-15', DATE '2026-01-04');

INSERT INTO Promocao (ID_livro, ID_cliente, Duracao, Data_inicio, Data_fim)
VALUES (1, 10, 22, DATE '2025-12-20', DATE '2026-01-11');


-- População da tabela Aquisicao
INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('12.345.678/0001-90', 1, 1, DATE '2025-10-05', 20, 19.95);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('98.765.432/0001-10', 2, 2, DATE '2025-10-06', 10, 24.95);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('45.987.321/0001-55', 4, 4, DATE '2025-10-07', 15, 29.95);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('33.444.555/0001-66', 7, 5, DATE '2025-10-08', 10, 34.95);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('55.123.987/0001-77', 3, 6, DATE '2025-10-09', 8, 19.95);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('22.333.444/0001-88', 6, 7, DATE '2025-10-10', 12, 32.90);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('44.555.666/0001-99', 5, 8, DATE '2025-10-11', 18, 39.90);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('99.111.222/0001-11', 8, 9, DATE '2025-10-12', 10, 49.90);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('87.654.321/0001-12', 9, 10, DATE '2025-10-13', 6, 27.90);

INSERT INTO Aquisicao (CNPJ_fornecedor, ID_livro, ID_funcionario, Data_aquisicao, Quantidade, Valor_unitario)
VALUES ('66.777.888/0001-22', 10, 2, DATE '2025-10-14', 20, 59.90);


-- População da tabela Contrato
INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (2, 1, 1, 1000.00, DATE '2025-10-01');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (5, 2, 7, 2500.00, DATE '2025-10-02');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (6, 3, 8, 1800.00, DATE '2025-10-03');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (7, 4, 3, 950.00, DATE '2025-10-04');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (9, 5, 10, 1300.00, DATE '2025-10-05');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (5, 6, 6, 2100.00, DATE '2025-10-06');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (6, 7, 9, 1700.00, DATE '2025-10-07');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (7, 8, 2, 900.00, DATE '2025-10-08');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (9, 9, 4, 2200.00, DATE '2025-10-09');

INSERT INTO Contrato (ID_cliente, ID_funcionario, ID_livro, Valor, Data_contrato)
VALUES (5, 10, 5, 3000.00, DATE '2025-10-10');


-- População da tabela Reserva
INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (1, 3, 5.00, DATE '2025-10-10', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (3, 1, 4.00, DATE '2025-10-11', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (4, 5, 6.00, DATE '2025-10-12', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (8, 10, 3.00, DATE '2025-10-13', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (10, 4, 5.00, DATE '2025-10-14', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (3, 9, 4.50, DATE '2025-10-15', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (4, 2, 3.50, DATE '2025-10-16', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (1, 6, 6.00, DATE '2025-10-17', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (8, 8, 2.00, DATE '2025-10-18', 'Ativa');

INSERT INTO Reserva (ID_cliente, ID_livro, Taxa, Data_reserva, Status)
VALUES (10, 7, 7.00, DATE '2025-10-19', 'Ativa');

COMMIT;
