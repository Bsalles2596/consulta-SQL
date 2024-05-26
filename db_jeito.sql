-- Criação do banco de dados "Jeito"
CREATE DATABASE Jeito;
USE jeito;

-- Criação da tabela "Produtos"
CREATE TABLE Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Categoria VARCHAR(50) NOT NULL
);

-- Inserção de dados na tabela "Produtos"
INSERT INTO Produtos (Nome, Preco, Categoria)
VALUES
    ('Camiseta', 29.99, 'Vestuário'),
    ('Tênis', 89.99, 'Calçados'),
    ('Livro', 24.99, 'Livros'),
    ('Smartphone', 1199.99, 'Eletrônicos'),
    ('Caneta', 2.99, 'Papelaria');

-- Criação da tabela "Pedidos"
CREATE TABLE Pedidos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cliente VARCHAR(100) NOT NULL,
    DataPedido DATE NOT NULL,
    Produto VARCHAR(100) NOT NULL,
    Quantidade INT NOT NULL
);

-- Inserção de dados na tabela "Pedidos"
INSERT INTO Pedidos (Cliente, DataPedido, Produto, Quantidade)
VALUES
    ('João Silva', '2023-04-01', 'Camiseta', 2),
    ('João Silva', '2023-04-15', 'Tênis', 1),
    ('João Silva', '2023-05-01', 'Livro', 3),
    ('João Silva', '2023-05-10', 'Smartphone', 1),
    ('João Silva', '2023-06-01', 'Caneta', 5),
    ('João Silva', '2023-06-15', 'Camiseta', 2),
    ('Maria Sousa', '2023-03-01', 'Smartphone', 1),
    ('Maria Sousa', '2023-04-10', 'Caneta', 5),
    ('Maria Sousa', '2023-05-15', 'Camiseta', 2),
    ('Maria Sousa', '2023-06-01', 'Tênis', 1),
    ('Maria Sousa', '2023-06-15', 'Livro', 3),
    ('Maria Sousa', '2023-07-01', 'Smartphone', 1),
    ('Carlos Maia', '2023-02-01', 'Tênis', 1),
    ('Carlos Maia', '2023-03-15', 'Livro', 2),
    ('Carlos Maia', '2023-04-20', 'Caneta', 3),
    ('Carlos Maia', '2023-05-01', 'Camiseta', 2),
    ('Carlos Maia', '2023-06-10', 'Smartphone', 1),
    ('Carlos Maia', '2023-07-01', 'Tênis', 1);

-- Consulta SQL avançada
SELECT Cliente, COUNT(*) AS TotalPedidos
FROM Pedidos
GROUP BY Cliente
HAVING COUNT(*) > 5
ORDER BY TotalPedidos DESC;

Para visualizar o projeto completo acesse repositório do Github:

[Repositório Github](https://github.com/)
