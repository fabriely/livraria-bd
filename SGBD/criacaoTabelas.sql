
-- Dropar tabelas se existirem (ordem inversa devido às dependências)
DROP TABLE IF EXISTS Reserva;
DROP TABLE IF EXISTS Contrato;
DROP TABLE IF EXISTS Aquisicao;
DROP TABLE IF EXISTS Promocao;
DROP TABLE IF EXISTS Enviar;
DROP TABLE IF EXISTS Venda;
DROP TABLE IF EXISTS Estoque;
DROP TABLE IF EXISTS Telefone_Cliente;
DROP TABLE IF EXISTS Telefone_Funcionario;
DROP TABLE IF EXISTS Pessoa_Juridica;
DROP TABLE IF EXISTS Pessoa_Fisica;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS Fornecedor;
DROP TABLE IF EXISTS Endereco;

-- Tabela Endereco
CREATE TABLE Endereco (
    ID_endereco SERIAL NOT NULL,
    Rua VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50),
    CEP VARCHAR(9),
    
    -- Constraints
    CONSTRAINT PK_Endereco PRIMARY KEY (ID_endereco),
    CONSTRAINT CK_Endereco_CEP CHECK (CEP ~ '^[0-9]{5}\-[0-9]{3}$' OR CEP IS NULL),
    CONSTRAINT CK_Endereco_Numero CHECK (Numero ~ '^[0-9A-Za-z\s\-]+$' OR Numero IS NULL)
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    CNPJ VARCHAR(18) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Tipo_fornecedor VARCHAR(50) NOT NULL,
    Telefone VARCHAR(15),
    Razao_social VARCHAR(150) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Fornecedor PRIMARY KEY (CNPJ),
    CONSTRAINT CK_Fornecedor_CNPJ CHECK (CNPJ ~ '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}\-[0-9]{2}$'),
    CONSTRAINT CK_Fornecedor_Tipo CHECK (Tipo_fornecedor IN ('Editora', 'Distribuidor', 'Autor Independente', 'Importador')),
    CONSTRAINT CK_Fornecedor_Nome CHECK (LENGTH(Nome) >= 2),
    CONSTRAINT CK_Fornecedor_Telefone CHECK (Telefone ~ '^[0-9\(\)\-\s]+$' OR Telefone IS NULL)
);

-- Tabela Livro
CREATE TABLE Livro (
    ID_livro SERIAL NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    Nome VARCHAR(200) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Ano INTEGER NOT NULL,
    Editora VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Livro PRIMARY KEY (ID_livro),
    CONSTRAINT CK_Livro_Ano CHECK (Ano >= 1450 AND Ano <= EXTRACT(YEAR FROM CURRENT_DATE)),
    CONSTRAINT CK_Livro_Preco CHECK (Preco > 0),
    CONSTRAINT CK_Livro_Nome CHECK (LENGTH(Nome) >= 1),
    CONSTRAINT CK_Livro_Autor CHECK (LENGTH(Autor) >= 2),
    CONSTRAINT CK_Livro_Categoria CHECK (Categoria IN ('Ficção', 'Não-ficção', 'Romance', 'Suspense', 'Terror', 'Fantasia', 'Biografia', 'História', 'Ciência', 'Autoajuda', 'Infantil', 'Juvenil', 'Técnico', 'Didático'))
);

-- Tabela Funcionario
CREATE TABLE Funcionario (
    ID_funcionario SERIAL NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    ID_endereco INTEGER,
    Salario DECIMAL(10,2) NOT NULL,
    Gerente INTEGER,
    
    -- Constraints
    CONSTRAINT PK_Funcionario PRIMARY KEY (ID_funcionario),
    CONSTRAINT FK_Funcionario_Endereco FOREIGN KEY (ID_endereco) REFERENCES Endereco(ID_endereco),
    CONSTRAINT FK_Funcionario_Gerente FOREIGN KEY (Gerente) REFERENCES Funcionario(ID_funcionario),
    CONSTRAINT CK_Funcionario_Salario CHECK (Salario > 0),
    CONSTRAINT CK_Funcionario_Nome CHECK (LENGTH(Nome) >= 2)
);

-- Tabela Cliente
CREATE TABLE Cliente (
    ID_cliente SERIAL NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Rua VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50),
    CEP VARCHAR(9),
    Tipo CHAR(1) NOT NULL,
    CPF_CNPJ VARCHAR(18) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Cliente PRIMARY KEY (ID_cliente),
    CONSTRAINT UK_Cliente_CPF_CNPJ UNIQUE (CPF_CNPJ),
    CONSTRAINT CK_Cliente_Tipo CHECK (Tipo IN ('F', 'J')),
    CONSTRAINT CK_Cliente_Nome CHECK (LENGTH(Nome) >= 2),
    CONSTRAINT CK_Cliente_Email CHECK (Email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' OR Email IS NULL),
    CONSTRAINT CK_Cliente_CEP CHECK (CEP ~ '^[0-9]{5}\-[0-9]{3}$' OR CEP IS NULL),
    CONSTRAINT CK_Cliente_Numero CHECK (Numero ~ '^[0-9A-Za-z\s\-]+$' OR Numero IS NULL),
    CONSTRAINT CK_Cliente_CPF_CNPJ CHECK (
        (Tipo = 'F' AND CPF_CNPJ ~ '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}$') OR
        (Tipo = 'J' AND CPF_CNPJ ~ '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}\-[0-9]{2}$')
    )
);

-- Tabela Pessoa_Fisica
CREATE TABLE Pessoa_Fisica (
    CPF VARCHAR(14) NOT NULL,
    ID_cliente INTEGER NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Pessoa_Fisica PRIMARY KEY (CPF),
    CONSTRAINT FK_Pessoa_Fisica_Cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente) ON DELETE CASCADE,
    CONSTRAINT CK_Pessoa_Fisica_CPF CHECK (CPF ~ '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}$')
);

-- Tabela Pessoa_Juridica
CREATE TABLE Pessoa_Juridica (
    CNPJ VARCHAR(18) NOT NULL,
    ID_cliente INTEGER NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Pessoa_Juridica PRIMARY KEY (CNPJ),
    CONSTRAINT FK_Pessoa_Juridica_Cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente) ON DELETE CASCADE,
    CONSTRAINT CK_Pessoa_Juridica_CNPJ CHECK (CNPJ ~ '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}\-[0-9]{2}$')
);

-- Tabela Telefone_Cliente (atributo multivalorado)
CREATE TABLE Telefone_Cliente (
    ID_cliente INTEGER NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Telefone_Cliente PRIMARY KEY (ID_cliente, Telefone),
    CONSTRAINT FK_Telefone_Cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente) ON DELETE CASCADE,
    CONSTRAINT CK_Telefone_Cliente_Telefone CHECK (Telefone ~ '^[0-9\(\)\-\s]+$')
);

-- Tabela Telefone_Funcionario (atributo multivalorado)
CREATE TABLE Telefone_Funcionario (
    ID_funcionario INTEGER NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Telefone_Funcionario PRIMARY KEY (ID_funcionario, Telefone),
    CONSTRAINT FK_Telefone_Funcionario FOREIGN KEY (ID_funcionario) REFERENCES Funcionario(ID_funcionario) ON DELETE CASCADE,
    CONSTRAINT CK_Telefone_Funcionario_Telefone CHECK (Telefone ~ '^[0-9\(\)\-\s]+$')
);

-- Tabela Estoque (entidade fraca)
CREATE TABLE Estoque (
    ID_livro INTEGER NOT NULL,
    Lote VARCHAR(20) NOT NULL,
    Quantidade_livro INTEGER NOT NULL,
    Data_entrada DATE NOT NULL,
    Data_saida DATE,
    
    -- Constraints
    CONSTRAINT PK_Estoque PRIMARY KEY (ID_livro, Lote),
    CONSTRAINT FK_Estoque_Livro FOREIGN KEY (ID_livro) REFERENCES Livro(ID_livro) ON DELETE CASCADE,
    CONSTRAINT CK_Estoque_Quantidade CHECK (Quantidade_livro >= 0),
    CONSTRAINT CK_Estoque_Data_Entrada CHECK (Data_entrada <= CURRENT_DATE),
    CONSTRAINT CK_Estoque_Data_Saida CHECK (Data_saida IS NULL OR Data_saida >= Data_entrada),
    CONSTRAINT CK_Estoque_Lote CHECK (LENGTH(Lote) >= 1)
);

-- Tabela Venda (relacionamento ternário)
CREATE TABLE Venda (
    ID_venda SERIAL NOT NULL,
    ID_cliente INTEGER NOT NULL,
    ID_livro INTEGER NOT NULL,
    ID_funcionario INTEGER NOT NULL,
    Data_venda DATE NOT NULL,
    Quantidade INTEGER NOT NULL,
    Valor_total DECIMAL(10,2) NOT NULL,
    Parcelamento INTEGER,
    Forma_pagamento VARCHAR(50) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Venda PRIMARY KEY (ID_venda),
    CONSTRAINT FK_Venda_Cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente),
    CONSTRAINT FK_Venda_Livro FOREIGN KEY (ID_livro) REFERENCES Livro(ID_livro),
    CONSTRAINT FK_Venda_Funcionario FOREIGN KEY (ID_funcionario) REFERENCES Funcionario(ID_funcionario),
    CONSTRAINT CK_Venda_Data CHECK (Data_venda <= CURRENT_DATE),
    CONSTRAINT CK_Venda_Quantidade CHECK (Quantidade > 0),
    CONSTRAINT CK_Venda_Valor CHECK (Valor_total > 0),
    CONSTRAINT CK_Venda_Parcelamento CHECK (Parcelamento IS NULL OR Parcelamento >= 1),
    CONSTRAINT CK_Venda_Forma_Pagamento CHECK (Forma_pagamento IN ('Dinheiro', 'Cartão Débito', 'Cartão Crédito', 'PIX', 'Boleto', 'Transferência'))
);

-- Tabela Fornecimento (relacionamento entre Fornecedor e Livro)
CREATE TABLE Enviar (
    CNPJ_fornecedor VARCHAR(18) NOT NULL,
    ID_livro INTEGER NOT NULL,
    Data_envio DATE NOT NULL,
    Quantidade INTEGER NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    Codigo_envio VARCHAR(50) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Fornecimento PRIMARY KEY (CNPJ_fornecedor, ID_livro, Data_envio),
    CONSTRAINT FK_Fornecimento_Fornecedor FOREIGN KEY (CNPJ_fornecedor) REFERENCES Fornecedor(CNPJ),
    CONSTRAINT FK_Fornecimento_Livro FOREIGN KEY (ID_livro) REFERENCES Livro(ID_livro),
    CONSTRAINT UK_Fornecimento_Codigo UNIQUE (Codigo_envio),
    CONSTRAINT CK_Fornecimento_Data CHECK (Data_envio <= CURRENT_DATE),
    CONSTRAINT CK_Fornecimento_Quantidade CHECK (Quantidade > 0),
    CONSTRAINT CK_Fornecimento_Valor CHECK (Valor > 0),
    CONSTRAINT CK_Fornecimento_Codigo CHECK (LENGTH(Codigo_envio) >= 5)
);

-- Tabela Promocao (relacionamento entre Cliente e Livro)
CREATE TABLE Promocao (
    ID_promocao SERIAL NOT NULL,
    ID_livro INTEGER NOT NULL,
    ID_cliente INTEGER NOT NULL,
    Duracao INTEGER NOT NULL,
    Data_inicio DATE NOT NULL,
    Data_fim DATE NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Promocao PRIMARY KEY (ID_promocao),
    CONSTRAINT FK_Promocao_Livro FOREIGN KEY (ID_livro) REFERENCES Livro(ID_livro),
    CONSTRAINT FK_Promocao_Cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente),
    CONSTRAINT CK_Promocao_Duracao CHECK (Duracao > 0),
    CONSTRAINT CK_Promocao_Data_Inicio CHECK (Data_inicio >= CURRENT_DATE),
    CONSTRAINT CK_Promocao_Data_Fim CHECK (Data_fim > Data_inicio),
    CONSTRAINT CK_Promocao_Duracao_Coerente CHECK (Data_fim - Data_inicio = Duracao)
);

-- Tabela Aquisicao (relacionamento ternário)
CREATE TABLE Aquisicao (
    ID_aquisicao SERIAL NOT NULL,
    CNPJ_fornecedor VARCHAR(18) NOT NULL,
    ID_livro INTEGER NOT NULL,
    ID_funcionario INTEGER NOT NULL,
    Data_aquisicao DATE NOT NULL,
    Quantidade INTEGER NOT NULL,
    Valor_unitario DECIMAL(10,2) NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Aquisicao PRIMARY KEY (ID_aquisicao),
    CONSTRAINT FK_Aquisicao_Fornecedor FOREIGN KEY (CNPJ_fornecedor) REFERENCES Fornecedor(CNPJ),
    CONSTRAINT FK_Aquisicao_Livro FOREIGN KEY (ID_livro) REFERENCES Livro(ID_livro),
    CONSTRAINT FK_Aquisicao_Funcionario FOREIGN KEY (ID_funcionario) REFERENCES Funcionario(ID_funcionario),
    CONSTRAINT CK_Aquisicao_Data CHECK (Data_aquisicao <= CURRENT_DATE),
    CONSTRAINT CK_Aquisicao_Quantidade CHECK (Quantidade > 0),
    CONSTRAINT CK_Aquisicao_Valor CHECK (Valor_unitario > 0)
);

-- Tabela Contrato (relacionamento ternário - apenas clientes PJ)
CREATE TABLE Contrato (
    ID_contrato SERIAL NOT NULL,
    ID_cliente INTEGER NOT NULL,
    ID_funcionario INTEGER NOT NULL,
    ID_livro INTEGER NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    Data_contrato DATE NOT NULL,
    
    -- Constraints
    CONSTRAINT PK_Contrato PRIMARY KEY (ID_contrato),
    CONSTRAINT FK_Contrato_Cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente),
    CONSTRAINT FK_Contrato_Funcionario FOREIGN KEY (ID_funcionario) REFERENCES Funcionario(ID_funcionario),
    CONSTRAINT FK_Contrato_Livro FOREIGN KEY (ID_livro) REFERENCES Livro(ID_livro),
    CONSTRAINT CK_Contrato_Valor CHECK (Valor > 0),
    CONSTRAINT CK_Contrato_Data CHECK (Data_contrato <= CURRENT_DATE),
    -- Garantir que o cliente seja Pessoa Jurídica
    CONSTRAINT CK_Contrato_Cliente_PJ CHECK (
        EXISTS (
            SELECT 1 FROM Cliente c 
            WHERE c.ID_cliente = Contrato.ID_cliente 
            AND c.Tipo = 'J'
        )
    )
);

-- Tabela Reserva (relacionamento entre Cliente PF e Livro)
CREATE TABLE Reserva (
    ID_reserva SERIAL NOT NULL,
    ID_cliente INTEGER NOT NULL,
    ID_livro INTEGER NOT NULL,
    Taxa DECIMAL(10,2) NOT NULL,
    Data_reserva DATE NOT NULL,
    Status VARCHAR(20) NOT NULL DEFAULT 'Ativa',
    
    -- Constraints
    CONSTRAINT PK_Reserva PRIMARY KEY (ID_reserva),
    CONSTRAINT FK_Reserva_Cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente),
    CONSTRAINT FK_Reserva_Livro FOREIGN KEY (ID_livro) REFERENCES Livro(ID_livro),
    CONSTRAINT CK_Reserva_Taxa CHECK (Taxa >= 0),
    CONSTRAINT CK_Reserva_Data CHECK (Data_reserva <= CURRENT_DATE),
    CONSTRAINT CK_Reserva_Status CHECK (Status IN ('Ativa', 'Finalizada', 'Cancelada')),
    -- Garantir que o cliente seja Pessoa Física
    CONSTRAINT CK_Reserva_Cliente_PF CHECK (
        EXISTS (
            SELECT 1 FROM Cliente c 
            WHERE c.ID_cliente = Reserva.ID_cliente 
            AND c.Tipo = 'F'
        )
    ),
    -- Evitar reservas duplicadas do mesmo cliente para o mesmo livro
    CONSTRAINT UK_Reserva_Cliente_Livro UNIQUE (ID_cliente, ID_livro)
);