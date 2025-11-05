-- Adiciona uma coluna de comissão aos funcionários (ALTER TABLE)
ALTER TABLE Funcionario
ADD Comissao NUMBER(5,2) DEFAULT 0 CHECK (Comissao >= 0);

-- Indíce de autores (CREATE INDEX)
CREATE INDEX idx_autor_livro
ON Livro (Autor);

-- Insere uma nova promoção (INSERT INTO)
INSERT INTO Promocao (ID_Livro, ID_Cliente, Duracao, Data_inicio, Data_fim)
VALUES (10, 3, 8, TO_DATE('2025-11-07', 'YYYY-MM-DD'), TO_DATE('2025-11-15', 'YYYY-MM-DD'));

-- Atualiza os preços dos livros de ficção em 10% se eles foram publicados antes de 2010 (UPDATE)
UPDATE Livro
SET Preco = Preco * 1.10
WHERE Categoria = 'Ficção' AND Ano < 2010;

-- Deleta qualquer livro que esteja na reserva desde o dia atual (podem mudar se necessário) (DELETE) 
DELETE FROM Reserva
WHERE Data_reserva < SYSDATE;

-- Seleciona clientes cujo CPF comecce com 1 (SELECT, FROM, WHERE)
SELECT Nome, CPF_CNPJ, Tipo
FROM Cliente
WHERE CPF_CNPJ LIKE '1%' AND ID_cliente IN (
  SELECT ID_cliente FROM Contrato WHERE Data_Contrato < SYSDATE
);

-- Retorna os livros lançados entre 2000 e 2020 (BETWEEN) 
SELECT Nome, Autor, Ano
FROM Livro
WHERE Ano BETWEEN 2000 AND 2020;

-- Retorna todos os pagamentos feitos via pix (IN) 
SELECT Nome
FROM Funcionario
WHERE ID_funcionario IN (
  SELECT ID_funcionario
  FROM Venda
  WHERE Forma_pagamento = 'PIX'
);

-- Retorna todos os nomes que tenham "Empresa" (LIKE)
SELECT Nome, CPF_CNPJ
FROM Cliente
WHERE Nome LIKE '%Empresa%';

-- Clientes que não informaram o número de telefone (IS NULL/ IS NOT NULL)
SELECT Nome
FROM Cliente
WHERE Numero IS NOT NULL;

-- Exibe o nome do cliente e do livro reservado (INNER JOIN)
SELECT Livro.Nome AS Nome_Livro, Livro.ID_Livro
FROM Livro
INNER JOIN Venda ON Livro.ID_Livro = Venda.ID_Livro;

-- Retorna o preço mais alto dos livros (MAX) 
SELECT Nome, Preco
FROM Livro
WHERE Preco = (SELECT MAX(Preco) FROM Livro);

-- Retorna o contrato mais antigo (MIN) 
SELECT ID_contrato, Data_contrato
FROM Contrato
WHERE Data_contrato = (SELECT MIN(Data_contrato) FROM Contrato);

-- Retorna a média dos preços (AVG)
SELECT Categoria, ROUND(AVG(Preco), 2) AS Media_Preco
FROM Livro
GROUP BY Categoria;

-- Retorna a quantidade total de contratos ativos (COUNT)
SELECT COUNT(*) AS Total_Contratos_Ativos
FROM Contrato
WHERE Data_contrato < SYSDATE;

-- Combina as duas tabelas (LEFT OU RIGHT OU FULL OUTER JOIN)
SELECT Pessoa_Fisica.ID_cliente
FROM Pessoa_Fisica
FULL OUTER JOIN Venda ON Pessoa_Fisica.ID_cliente = Venda.ID_Cliente
ORDER BY Pessoa_Fisica.ID_Cliente;

-- Retorna os funcionários que tem um salário maior que a média (subconsulta com operador relacional)
SELECT Nome, Salario
FROM Funcionario
WHERE Salario > (SELECT AVG(Salario) FROM Funcionario);

-- Retorna livros que já foram vendidos. 
SELECT Nome
FROM Livro
WHERE Nome IN (SELECT Nome FROM Venda);

-- Retorna qualquer preço de livro que tenham a promoção encerrada a partir das condições nos parenteses (SUBCONSULTA COM ANY)
SELECT ID_Livro, Preco
FROM Livro
WHERE Preco > ANY (
  SELECT Preco FROM Livro
  JOIN Venda ON Livro.ID_Livro = Venda.ID_Livro
  JOIN Promocao ON Promocao.ID_Livro = Livro.ID_Livro
  WHERE Data_Fim < SYSDATE
);

-- Retorna todos os livros na categoria Romance. (SUBCONSULTA COM ALL)
SELECT Nome, Preco
FROM Livro
WHERE Preco > ALL (
  SELECT Preco FROM Livro WHERE Categoria = 'Romance'
);

-- Clientes são ordenados pelo nome e numero da casa (ORDER BY)
SELECT Nome, CPF_CNPJ, Tipo, Numero
FROM Cliente
ORDER BY Nome ASC, Numero DESC;


-- Retorna os contratos dos funcionários (GROUP BY)
SELECT Nome AS Funcionario, COUNT(ID_contrato) AS Total_Contratos
FROM Funcionario
JOIN Contrato ON Funcionario.ID_funcionario = Contrato.ID_funcionario
GROUP BY Nome;

-- Gêneros literários com mais de 5 livros no estoque (HAVING)
SELECT Categoria, COUNT(*) AS Total
FROM Livro
GROUP BY Categoria
HAVING COUNT(*) > 5;

-- Une todos os nomes de duas tabelas (UNION, INTERSECT, MINUS)
SELECT Nome FROM Cliente
UNION
SELECT Nome FROM Funcionario;
Order by Nome;

-- Cria uma view (CREATE VIEW)
CREATE OR REPLACE VIEW vw_reservas_historico AS
SELECT c.Nome AS Cliente, l.Nome AS Livro, r.Data_reserva
FROM Reserva r
JOIN Cliente c ON r.ID_cliente = c.ID_cliente
JOIN Livro l ON r.ID_livro = l.ID_livro;

-- Aparentemente não funciona em SQL Server (GRANT/REVOKE)
GRANT SELECT ON vw_reservas_historico TO Funcionario;
