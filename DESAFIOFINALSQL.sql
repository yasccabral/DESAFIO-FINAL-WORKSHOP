CREATE DATABASE perfumaria;
USE perfumaria;

-- Crie 3-4 tabelas e utilize 3 tipos de variáveis no total, não esqueça da chave primária.
CREATE TABLE Clientes (
    clienteid INT,
    nome VARCHAR(50),
    datanascimento DATE,
    
    PRIMARY KEY  (clienteid)
);
    
CREATE TABLE Pedidos (
    pedidoid INT,
    datapedido DATE,
    marca VARCHAR(50),
    
    PRIMARY KEY (pedidoid)
    );
    
    CREATE TABLE Produtos (
    produtoid INT,
    nomeproduto VARCHAR(100),
    preco FLOAT NOT NULL,
    
    PRIMARY KEY (produtoid)
);

-- Adicione uma coluna em ao menos 1 tabela
ALTER TABLE Clientes ADD COLUMN telefone VARCHAR(20);
ALTER TABLE Pedidos ADD COLUMN valortotal FLOAT NOT NULL;
ALTER TABLE Produtos ADD COLUMN descrição TEXT;

-- Insira dados em todas colunas das tabelas
INSERT INTO Clientes (clienteid, nome, datanascimento, telefone)
VALUES
    (98765, 'José da Silva', '1999-08-20', '+55 912345879'),
    (54321, 'Maria Clara', '1995-05-10', '+55 987654321'),
    (12345, 'Paulo Pereira', '1990-03-25', '+55 575859761');
    
INSERT INTO Pedidos (pedidoid, datapedido, marca, valortotal)
VALUES
    (534, '2023-09-01', 'Marca A', 300.50),
    (325, '2023-10-20', 'Marca C', 250.55),
    (468, '2023-11-10', 'Marca B', 100.99);
    
INSERT INTO Produtos (ProdutoID, NomeProduto, Preco, Descrição)
VALUES
    (105, 'Produto 3', 89.99, 'Descrição do Produto 3'),
    (236, 'Produto 1', 99.95, 'Descrição do Produto 1'),
    (160, 'Produto 2', 59.50, 'Descrição do Produto 2');
    
-- Mostre o conteúdo de cada tabela
SELECT * FROM Clientes;
SELECT * FROM Pedidos;
SELECT * FROM Produtos;








