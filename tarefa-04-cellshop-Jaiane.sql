USE DB_Jaiane;

-- ==========================================================================================
-- 1) Insira clientes, produtos e vendas com seus itens e pagamentos (com base no dados.txt)
-- ==========================================================================================

-- Inserir dados na tabela Cliente

INSERT INTO Cliente (id_cliente, nome, email, telefone)
	VALUES
	(1, 'Lucas Silva','lucas@email.com', '(31) 98801-1010'),
	(2, 'Ana Monteiro', 'ana@email.com', '(31) 98802-2020'),
	(3, 'Rafael Souza', 'rafael@email.com', '(31) 98803-3030'),
	(4, 'Juliana Freitas', 'juliana@email.com', '(31) 98804-4040'),
	(5, 'Caio Lima', 'caio@email.com', '(31) 98805-5050'),
	(6, 'Fernanda Teixeira', 'fernanda@email.com', '(31) 98806-6060'),
	(7, 'Carlos Mendes', 'carlos@email.com', '(31) 98807-7070'),
	(8, 'Roberta Pires','', '(31) 98808-8080'),
	(9, 'Felipe Araújo', 'felipe@email.com', '(31) 98809-9090'),
	(10, 'Marcela Ribeiro', 'marcela@email.com', '(31) 98810-1010');
    
SELECT * FROM Cliente; -- Consultar se os dados entraram corretamente na tabela

-- Inserir dados na tabela Produto

INSERT INTO Produto (id_produto, descricao, preco)
	VALUES 
	('1', 'Smartphone Galaxy A14', '1299.90'),
	('2', 'Fone Bluetooth JBL Tune', '349.99'),
	('3', 'Notebook Lenovo IdeaPad 3', '3199.00'),
	('4', 'Carregador USB-C Turbo', '89.90'),
	('5', 'Capa p/ iPhone 13', '69.90'),
	('6', 'Smartwatch Amazfit Bip U Pro', '499.00'),
	('7', 'Película de Vidro Galaxy A14', '39.90'),
	('8', 'Fone Bluetooth Lenovo X5', '199.90'),
	('9', 'Suporte Magnético para Carro', '59.90'),
	('10', 'Adaptador USB Tipo-C', '29.90');
    
SELECT * FROM Produto; -- Consultar se os dados entraram certinho na tabela

-- Inserir dados na tabela Venda

INSERT INTO Venda (id_venda, data_venda, cliente_id_cliente)
	VALUES
	(1, '2024-06-10', 1),
	(2, '2024-06-11', 2),
	(3, '2024-06-11', 3),
	(4, '2024-06-12', 4),
	(5, '2024-06-12', 5),
	(6, '2024-06-13', 6),
	(7, '2024-06-14', 7),
	(8, '2024-06-14', 8),
	(9, '2024-06-15', 9),
	(10,'2024-06-15', 10),
	(11, '2024-07-01', 1),
	(12, '2024-07-02', 2),
	(13, '2024-07-03', 3),
	(14, '2024-07-04', 4),
	(15, '2024-07-05', 5),
	(16, '2024-07-06', 6),
	(17, '2024-07-07', 7),
	(18, '2024-07-08', 8),
	(19, '2024-07-09', 9),
	(20, '2024-07-10', 10),
	(21, '2023-01-10', 1),
	(22, '2023-03-12', 2),
	(23, '2023-06-30', 3),
	(24, '2023-08-08', 4),
	(25, '2023-10-22', 5),
	(26, '2023-12-18', 6),
	(27, '2023-12-29', 7),
	(28, '2023-11-03', 8),
	(29, '2023-05-15', 9),
	(30, '2023-09-27', 10),
	(31, '2024-01-15', 1),
	(32, '2024-03-18', 2),
	(33, '2024-05-10', 3),
	(34, '2024-06-29', 4),
	(35, '2024-08-02', 5),
	(36, '2024-10-07', 6),
	(37, '2024-11-22', 7),
	(38, '2024-09-09', 8),
	(39, '2024-12-01', 9),
	(40, '2024-12-24', 10),
	(41, '2025-01-10', 1),
	(42, '2025-02-14', 2),
	(43, '2025-03-21', 3),
	(44, '2025-04-30', 4),
	(45, '2025-05-05', 5),
	(46, '2025-06-18', 6),
	(47, '2025-07-02', 7),
	(48, '2025-08-29', 8),
	(49, '2025-08-30', 9),
	(50, '2025-08-31', 10);
    
SELECT * FROM Venda; -- Consultar se os dados da venda foram inseridos corretamente

-- Inserir dados na tabela ItemVenda

INSERT INTO ItemVenda (id_item, venda_id_venda, produto_id_produto, quantidade, subtotal)
	VALUES
	(1, 1, 1, 1, 4299.90),
	(2, 2, 3, 2, 3399.00),
	(3, 3, 2, 1, 5199.00),
	(4, 3, 7, 1, 39.90),
	(5, 4, 4, 1, 279.99),
	(6, 4, 5, 1, 139.90),
	(7, 5, 6, 1, 49.90),
	(8, 5, 8, 1, 399.00),
	(9, 6, 9, 1, 3899.00),
	(10, 6, 5, 1, 139.90),
	(11, 11, 5, 1, 139.90),
	(12, 12, 8, 2, 798.00),
	(13, 13, 6, 1, 49.90),
	(14, 14, 9, 1, 3899.00),
	(15, 15, 4, 1, 279.99),
	(16, 16, 10, 2, 119.80),
	(17, 17, 1, 1, 4299.90),
	(18, 18, 2, 1, 5199.00),
	(19, 19, 7, 2, 79.80),
	(20, 20, 3, 1, 1699.50),
	(21, 21, 1, 1, 4299.90),
	(22, 22, 3, 1, 1699.50),
	(23, 23, 4, 1, 279.99),
	(24, 24, 8, 1, 399.00),
	(25, 25, 5, 1, 139.90),
	(26, 26, 2, 1, 5199.00),
	(27, 27, 9, 1, 3899.00),
	(28, 28, 10, 2, 119.80),
	(29, 29, 6, 1, 49.90),
	(30, 30, 7, 2, 79.80),
	(31, 31, 3, 1, 1699.50),
	(32, 32, 5, 1, 139.90),
	(33, 33, 4, 1, 279.99),
	(34, 34, 2, 1, 5199.00),
	(35, 35, 8, 1, 399.00),
	(36, 36, 9, 1, 3899.00),
	(37, 37, 6, 2, 99.80),
	(38, 38, 7, 1, 39.90),
	(39, 39, 1, 1, 4299.90),
	(40, 40, 10, 1, 59.90),
	(41, 41, 2, 1, 5199.00),
	(42, 42, 4, 1, 279.99),
	(43, 43, 8, 1, 399.00),
	(44, 44, 5, 1, 139.90),
	(45, 45, 3, 1, 1699.50),
	(46, 46, 1, 1, 4299.90),
	(47, 47, 6, 1, 49.90),
	(48, 48, 9, 1, 3899.00),
	(49, 49, 10, 1, 59.90),
	(50, 50, 7, 2, 79.80);
    
/* 
Estava dando erro no id_produto, pois cita produtos com id 101, que não existem na tabela Venda.
Eu alterei os dados do id, apagando o '10' na frente e inseri os dados na tabela.
*/

SELECT * FROM ItemVenda; -- Conferir se os dados entraram corretamente na tabela


-- Inserir dados na tabela Pagamento

INSERT INTO Pagamento (id_pagamento, forma_pagamento, valor_pago, parcelas, venda_id_venda)
	VALUES
    (1, 'cartao', 4299.90, 1, 1),
	(2, 'pix', 3399.00, 1, 2),
	(3, 'cartao/parcelado', 5238.90, 6, 3),
	(4, 'dinheiro', 419.89, 1, 4),
	(5, 'cartao', 448.90, 1, 5),
	(6, 'cartao/parcelado', 4038.90, 10, 6),
	(7, 'dinheiro', 79.80, 1, 7),
	(8, 'pix', 59.90, 1, 8),
	(9, 'cartao/parcelado', 4299.90, 12, 9),
	(10, 'cartao', 1749.40, 1, 10),
	(11, 'pix', 139.90, 1, 11),
	(12, 'cartao', 798.00, 1, 12),
	(13, 'dinheiro', 49.90, 1, 13),
	(14, 'cartao/parcelado', 3899.00, 6, 14),
	(15, 'pix', 279.99, 1, 15),
	(16, 'dinheiro', 119.80, 1, 16),
	(17, 'cartao/parcelado', 4299.90, 10, 17),
	(18, 'pix', 5199.00, 1, 18),
	(19, 'cartao', 79.80, 1, 19),
	(20, 'cartao/parcelado', 1699.50, 5, 20),
	(21, 'pix', 4299.90, 1, 21),
	(22, 'cartao', 1699.50, 1, 22),
	(23, 'dinheiro', 279.99, 1, 23),
	(24, 'cartao/parcelado', 399.00, 3, 24),
	(25, 'pix', 139.90, 1, 25),
	(26, 'cartao/parcelado', 5199.00, 6, 26),
	(27, 'dinheiro', 3899.00, 1, 27),
	(28, 'pix', 119.80, 1, 28),
	(29, 'cartao', 49.90, 1, 29),
	(30, 'cartao/parcelado', 79.80, 2, 30),
	(31, 'dinheiro', 1699.50, 1, 31),
	(32, 'cartao', 139.90, 1, 32),
	(33, 'pix', 279.99, 1, 33),
	(34, 'cartao/parcelado', 5199.00, 10, 34),
	(35, 'pix', 399.00, 1, 35),
	(36, 'cartao/parcelado', 3899.00, 12, 36),
	(37, 'dinheiro', 99.80, 1, 37),
	(38, 'pix', 39.90, 1, 38),
	(39, 'cartao/parcelado', 4299.90, 8, 39),
	(40, 'cartao', 59.90, 1, 40),
	(41, 'pix', 5199.00, 1, 41),
	(42, 'dinheiro', 279.99, 1, 42),
	(43, 'cartao/parcelado', 399.00, 3, 43),
	(44, 'pix', 139.90, 1, 44),
	(45, 'dinheiro', 1699.50, 1, 45),
	(46, 'cartao/parcelado', 4299.90, 6, 46),
	(47, 'pix', 49.90, 1, 47),
	(48, 'cartao', 3899.00, 1, 48),
	(49, 'pix', 59.90, 1, 49),
	(50, 'dinheiro', 79.80, 1, 50);
    
/*
Os dados dos primeiros 10 registros foram alterados, por conta do id_venda que estava deslocado.
*/
    
SELECT * FROM Pagamento; -- Conferir se os dados foram inseridos corretamente na tabela Pagamento



-- ============================================================
-- 2) Atualize o preço de um produto e o e-mail de um cliente
-- ============================================================

-- Atualizando o preço do produto 1

UPDATE Produto -- Escolhe a tabela que vai atualizar a informação
	SET preco = 1999.99 -- Escolhe a coluna que vai mexer e qual será o novo valor/informação
    WHERE id_produto = 1; -- Diz onde está a informação que você vai atualizar
    
-- Atualizando o email do cliente 10

UPDATE Cliente
	SET email = 'marcela.ribeiro@email.com'
    WHERE id_cliente = 10;
    
    
    
-- ======================================================
-- 3) Delete todos os produtos com preço menor que R$100
-- ======================================================

SET SQL_SAFE_UPDATES = 0; -- Desabilita o modo seguro temporariamente para update de registros.

DELETE FROM Produto
	WHERE preco < 100;
    
SET SQL_SAFE_UPDATES = 1; -- Reabilita o modo seguro.



-- ====================================================
-- 4) Liste todos os clientes cujo nome contém 'Silva'
-- ====================================================

SELECT * FROM Cliente -- Seleciona a tabela
	WHERE nome LIKE '%Silva%'; -- Diz onde está e qual é a informação desejada
    
    
    
-- ============================================================
-- 5) Liste as vendas feitas entre '2024-07-01' e '2024-07-03'
-- ============================================================

SELECT * FROM Venda
	WHERE data_venda BETWEEN '2024-07-01' AND '2024-07-03';
    
    
    
-- =====================================================
-- 6) Liste os produtos com preços entre R$500 e R$2000
-- =====================================================

SELECT * FROM Produto
	WHERE preco BETWEEN 500 AND 2000;
    
    
    
-- =========================================================
-- 7) Liste os pagamentos feitos com parcelas maiores que 3
-- =========================================================

SELECT * FROM Pagamento
	WHERE parcelas > 3;
    


-- ========================================================
-- 8) Insira 2 novos clientes e 2 novos produtos fictícios
-- ========================================================

-- Inserindo 2 novos clientes

INSERT INTO Cliente (nome, email, telefone)
	VALUES
	('Debora Marins', 'debora.marins@email.com', '(11) 97070-2221'),
    ('Letícia Ferreira', 'leticia01@email.com', '(11) 91234-5678');
    
-- Inserindo 2 novos produtos

INSERT INTO Produto (descricao, preco)
	VALUES
    ('Notebook Dell Inspiron 15', '4999.90'),
    ('Carregador tipo C Iphone', '500');
    
    
    
    
-- ===============================================
-- 9) Atualize o telefone de um cliente pelo nome
-- ===============================================

-- Atualizando o telefone do cliente Rafael Souza

SET SQL_SAFE_UPDATES = 0;

UPDATE Cliente
	SET telefone = '(11) 91020-3040'
    WHERE nome = 'Rafael Souza';
    
SET SQL_SAFE_UPDATES = 1;




-- ===============================================================================================
-- 10) Atualize todos os produtos com preço menor que R$100 adicionando “(Promoção)” na descrição
-- ===============================================================================================

-- Atualizando promoção de produtos com valor de R$100

SET SQL_SAFE_UPDATES = 0;

UPDATE Produto
	SET descricao = CONCAT(descricao,'(Promoção)') -- CONCAT serve para juntar textos, por exemplo, sinalizar descontos.
    WHERE preco < 100;



-- =============================================
-- 11) Delete vendas feitas antes de 2024-07-05
-- =============================================

DELETE FROM Venda
	WHERE data_venda < '2024-07-06';
    
    
    
--
-- 12) Liste produtos que contenham “Bluetooth”
-- =============================================

SELECT * FROM Produto
	WHERE descricao like '%Bluetooth%';
    
    
    
-- ====================================================
-- 13) Liste clientes com sobrenome “Silva” ou “Souza”
-- ====================================================

SELECT * FROM Cliente
	WHERE nome LIKE '%Silva%' OR nome LIKE '%Souza%';
    
    
    
-- ==================================================
-- 14) Consulte pagamentos realizados em Pix ou dinheiro
-- ==================================================

SELECT * FROM Pagamento
	WHERE forma_pagamento LIKE '%pix%' OR forma_pagamento LIKE '%dinheiro%';
    
-- Outra opção pe usando o IN, que facilita a seleção de múltiplos valores

SELECT * FROM Pagamento
	WHERE forma_pagamento IN ('pix', 'dinheiro');
    
    
    
-- =========================================================
-- 15) Mostre vendas com total de valor pago acima de R$500
-- =========================================================

SELECT * FROM Pagamento
	WHERE valor_pago > 500;
    
    
    
-- =========================================
-- 16) Delete clientes sem email cadastrado
-- =========================================

DELETE FROM Cliente
	WHERE email IS NULL OR email = ''; -- Nesse caso, ele vai deleter aquilo que for verdadeiro, seja nulo ou vazio.
    
    
    
-- ===================================================================================================
-- 17) Atualize todas as formas de pagamento para "cartao" para as vendas feitas depois de 2024-07-07
-- ===================================================================================================

UPDATE Pagamento
	SET forma_pagamento = 'cartao', parcelas = 1
	WHERE venda_id_venda IN (
		SELECT id_venda FROM Venda 
		WHERE data_venda > '2024-07-07'
	);