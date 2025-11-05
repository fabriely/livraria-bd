-- Bloco anônimo, Select Into e %Type
DECLARE
    v_nome_cliente  CLIENTE.NOME%TYPE;
    v_id_busca      Cliente.ID_cliente%TYPE := 1;
BEGIN
    SELECT Nome
    INTO v_nome_cliente
    FROM Cliente
    WHERE ID_cliente = v_id_busca; 
    
    DBMS_OUTPUT.PUT_LINE('Nome do cliente de ID ' || v_id_busca || ' é: ' || v_nome_cliente);
END;
/

-- Exception When
DECLARE
    v_nome_cliente  CLIENTE.NOME%TYPE;
    v_id_busca      Cliente.ID_cliente%TYPE := 10000000;
BEGIN
    SELECT Nome
    INTO v_nome_cliente
    FROM Cliente
    WHERE ID_cliente = v_id_busca; 
    
    DBMS_OUTPUT.PUT_LINE('Nome do cliente de ID ' || v_id_busca || ' é: ' || v_nome_cliente);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('ERRO: Nenhum cliente foi encontrado com o ID ' || v_id_busca);
END;
/

-- Create Function, IN/OUT/IN_OUT
CREATE OR REPLACE FUNCTION f_buscar_por_id(
	id_cliente_busca IN CLiente.ID_Cliente%TYPE
)
RETURN Cliente.Nome%TYPE
IS
	v_nome_cliente	Cliente.Nome%TYPE;
BEGIN
    
    SELECT Nome
    INTO v_nome_cliente
    FROM Cliente
    WHERE ID_cliente = id_cliente_busca;

	RETURN v_nome_cliente;

EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RETURN NULL;

END;
/

-- Rodando a function criada acima
SELECT f_buscar_por_id(1) AS Nome FROM dual;
/


-- CREATE PROCEDURE
CREATE OR REPLACE PROCEDURE p_buscar_dados_livro(
    p_id_livro IN Livro.ID_livro%TYPE,
    p_nome_livro OUT Livro.Nome%TYPE,
    p_preco_livro OUT Livro.Preco%TYPE
)
IS
    -- Como já tenho os parâmetros do tipo OUT não preciso declarar variáveis OUT
BEGIN
    SELECT nome, preco
    INTO p_nome_livro, p_preco_livro
    FROM Livro
    WHERE ID_livro = p_id_livro;
END;
/

-- Bloco anônimo para chamar a procedure
DECLARE
    v_nome  Livro.Nome%TYPE;
    v_preco  Livro.Preco%TYPE;
BEGIN

    p_buscar_dados_livro(
        p_id_livro    => 1,
        p_nome_livro  => v_nome,
        p_preco_livro => v_preco
    );

    DBMS_OUTPUT.PUT_LINE('Livro: ' || v_nome);
    DBMS_OUTPUT.PUT_LINE('Preço: ' || v_preco);
END;
/

    -- %ROWTYPE, CURSOR, 
CREATE OR REPLACE PROCEDURE p_listar_livros_por_autor (
    p_autor IN Livro.Autor%TYPE
)
IS
    v_livro_linha Livro%ROWTYPE; 
    
    CURSOR c_livros IS
        SELECT *
		FROM Livro
        WHERE Livro.Autor = p_autor; 
        
BEGIN
    OPEN c_livros;
    
    LOOP
    
        FETCH c_livros INTO v_livro_linha;

        EXIT WHEN c_livros%NOTFOUND;

		IF v_livro_linha.Preco > 70
            THEN DBMS_OUTPUT.PUT_LINE('Livro está ACIMA de 70 reais, caro');
        ELSIF v_livro_linha.Preco < 40
            THEN DBMS_OUTPUT.PUT_LINE('Livro está ABAIXO de 70 reais, barato');
		ELSE
            NULL;
		END IF;
        
        DBMS_OUTPUT.PUT_LINE('- ' || v_livro_linha.Nome || ' (Preço: ' || v_livro_linha.Preco || ')');

    END LOOP;
    
    CLOSE c_livros;
END;
/

BEGIN
    
    p_listar_livros_por_autor(p_autor => 'Stephen King');
    
END;
/

-- Procedure acima utilizando cursor implícito, LOOP EXIT WHEN
CREATE OR REPLACE PROCEDURE p_listar_livros_por_autor_cursor_implicito (
    p_autor IN Livro.Autor%TYPE
)
IS
BEGIN
    
    FOR v_livro_linha IN (
    	SELECT *
		FROM Livro
        WHERE Livro.Autor = p_autor
    )
    LOOP
    	CASE
            WHEN v_livro_linha.Preco > 70
                THEN DBMS_OUTPUT.PUT_LINE('Livro está ACIMA de 70 reais, caro');
            WHEN v_livro_linha.Preco < 40
                THEN DBMS_OUTPUT.PUT_LINE('Livro está ABAIXO de 40 reais, barato');
            ELSE
                NULL;
		END CASE;
    END LOOP;

END;
/

BEGIN
    
    p_listar_livros_por_autor_cursor_implicito(p_autor => 'Stephen King');
    
END;
/

-- WHILE LOOP
DECLARE
    v_contador NUMBER := 0;
    v_linha_livro Livro%ROWTYPE;
    
    CURSOR c_todos_livros IS
        SELECT * FROM Livro;
BEGIN
    
    OPEN c_todos_livros;
    FETCH c_todos_livros INTO v_linha_livro;
    WHILE c_todos_livros%FOUND LOOP --FOUND Indica True quando o fetch foi bem sucedido
        v_contador := v_contador + 1;
        FETCH c_todos_livros INTO v_linha_livro;
    END LOOP;
    CLOSE c_todos_livros;
    
    DBMS_OUTPUT.PUT_LINE('Contagem total de livros: ' || v_contador);
END;
/

-- RECORD, TABLE
DECLARE

	TYPE t_resumo_venda IS RECORD(
    	nome_cliente	Cliente.Nome%TYPE,
    	nome_livro		Livro.Nome%TYPE,
    	quantidade		Venda.Quantidade%TYPE,
    	valor_total		Venda.Valor_total%TYPE
    );

	TYPE t_tabela_resumo_venda IS TABLE OF t_resumo_venda;

	v_venda_1	t_resumo_venda;
	v_venda_2	t_resumo_venda;
	v_lista_de_vendas	t_tabela_resumo_venda;

BEGIN
    v_lista_de_vendas := t_tabela_resumo_venda();

	v_venda_1.nome_cliente := 'Ana Paula';
    v_venda_1.nome_livro   := 'Dom Casmurro';
    v_venda_1.quantidade   := 1;

    v_venda_2.nome_cliente := 'Empresa XPTO';
    v_venda_2.nome_livro   := '1984';
    v_venda_2.quantidade   := 5;

	v_lista_de_vendas.EXTEND; 			--aloca espaço para uma tupla
	v_lista_de_vendas(1) := v_venda_1;	--Coloca a variável v_venda1 no índice 1

	v_lista_de_vendas.EXTEND; 
	v_lista_de_vendas(2) := v_venda_2;
END;
/

-- CREATE OR REPLACE PACKAGE
CREATE OR REPLACE PACKAGE PKG_LIVRARIA AS

    FUNCTION f_buscar_por_id(id_cliente_busca IN CLiente.ID_Cliente%TYPE) RETURN Cliente.Nome%TYPE;
    PROCEDURE p_listar_livros_por_autor (p_autor IN Livro.Autor%TYPE);

END PKG_LIVRARIA;
/

-- CREATE OR REPLACE PACKAGE BODY
CREATE OR REPLACE PACKAGE BODY PKG_LIVRARIA AS

    FUNCTION f_buscar_por_id(
		id_cliente_busca IN CLiente.ID_Cliente%TYPE
    )
    RETURN Cliente.Nome%TYPE
    IS
    	v_nome_cliente	Cliente.Nome%TYPE;
    BEGIN
        
        SELECT Nome
        INTO v_nome_cliente
        FROM Cliente
        WHERE ID_cliente = id_cliente_busca;
    
    	RETURN v_nome_cliente;
    
    EXCEPTION
       WHEN NO_DATA_FOUND THEN
          RETURN NULL;
    
    END;
    
    PROCEDURE p_listar_livros_por_autor (
        p_autor IN Livro.Autor%TYPE
    )
    IS
        v_livro_linha Livro%ROWTYPE; 
        
        CURSOR c_livros IS
            SELECT *
    		FROM Livro
            WHERE Livro.Autor = p_autor; 
            
    BEGIN
        OPEN c_livros;
        
        LOOP
        
            FETCH c_livros INTO v_livro_linha;
    
            EXIT WHEN c_livros%NOTFOUND;
    
    		IF v_livro_linha.Preco > 70
                THEN DBMS_OUTPUT.PUT_LINE('Livro está ACIMA de 70 reais, caro');
            ELSIF v_livro_linha.Preco < 40
                THEN DBMS_OUTPUT.PUT_LINE('Livro está ABAIXO de 70 reais, barato');
    		ELSE
                NULL;
    		END IF;
            
            DBMS_OUTPUT.PUT_LINE('- ' || v_livro_linha.Nome || ' (Preço: ' || v_livro_linha.Preco || ')');
    
        END LOOP;
        
        CLOSE c_livros;
    END;

END PKG_LIVRARIA;
/

SELECT PKG_LIVRARIA.f_buscar_por_id(1) AS Nome FROM dual;
/

-- CREATE OR REPLACE TRIGGER (LINHA): IMPEDIR VALORES NEGATIVOS NOS PREÇOS
CREATE OR REPLACE TRIGGER trg_livro_preco_negativo

    BEFORE INSERT OR UPDATE ON Livro 
    FOR EACH ROW 
BEGIN
    IF :NEW.Preco < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'A regra de negócio da livraria exige preço positivo.');
    END IF;
END;
/

-- CREATE OR REPLACE TRIGGER (COMANDO): IMPEDIR EXCLUSÕES FORA DE HORÁRIO COMERCIAL
CREATE OR REPLACE TRIGGER trg_restricao_delete
    BEFORE DELETE ON LIVRO
BEGIN

    IF TO_CHAR(SYSDATE, 'HH24') BETWEEN '08' AND '18' THEN
        RAISE_APPLICATION_ERROR(-20002, 'Tentativa de delete fora de horário permitido');
    END IF;
END;
/

-- testando os triggers
UPDATE Livro SET Preco = -5.00 WHERE ID_livro = 1;
