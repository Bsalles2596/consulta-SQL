# Consulta SQL avançada
## Consulta SQL para encontrar o número total de pedidos feitos por cada cliente;

## Consulta SQL:
--- 
~~~
   
   SELECT Cliente, COUNT(*) AS TotalPedidos
   FROM Pedidos
   GROUP BY Cliente
   HAVING COUNT(*) > 5
   ORDER BY TotalPedidos DESC;
~~~

## Essa consulta SQL realiza as seguintes ações:

Seleciona as colunas "Cliente" e calcula o COUNT(*) (número total de pedidos) para cada cliente, renomeando-o como "TotalPedidos".
Agrupa os resultados por "Cliente" usando a cláusula GROUP BY.
Filtra os clientes que fizeram mais de 5 pedidos usando a cláusula HAVING COUNT(*) > 5.
Ordena os resultados de forma decrescente pelo "TotalPedidos" usando a cláusula ORDER BY TotalPedidos DESC.

### Algumas observações adicionais:

A consulta utiliza apenas as cláusulas SQL necessárias para atender aos requisitos.
A ordenação decrescente pelo total de pedidos permite visualizar rapidamente os clientes com mais pedidos.
O uso da cláusula HAVING para filtrar os clientes com mais de 5 pedidos , evitando a necessidade de realizar um pós-processamento dos dados.


~~~
   $   python -m venv venv  
~~~

Claro, segue um modelo de README para o seu projeto:

# Projeto Jeito

Este projeto consiste na criação de um banco de dados MySQL chamado "Jeito" com duas tabelas: "Produtos" e "Pedidos".

## Requisitos
- MySQL Server instalado e configurado
- Cliente SQL (como o MySQL Workbench ou o prompt de comando)

## Instruções de Configuração

1. Crie o banco de dados "Jeito":
~~~sql
   CREATE DATABASE Jeito;
   USE Jeito;
~~~

2. Crie a tabela "Produtos":
~~~sql
CREATE TABLE Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    Categoria VARCHAR(50) NOT NULL
);
~~~

3. Insira os dados iniciais na tabela "Produtos":
~~~sql
INSERT INTO Produtos (Nome, Preco, Categoria)
VALUES
    ('Camiseta', 29.99, 'Vestuário'),
    ('Tênis', 89.99, 'Calçados'),
    ('Livro', 24.99, 'Livros'),
    ('Smartphone', 1199.99, 'Eletrônicos'),
    ('Caneta', 2.99, 'Papelaria');
~~~

4. Crie a tabela "Pedidos":
~~~sql
CREATE TABLE Pedidos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cliente VARCHAR(100) NOT NULL,
    DataPedido DATE NOT NULL,
    Produto VARCHAR(100) NOT NULL,
    Quantidade INT NOT NULL
);
~~~

5. Insira os dados iniciais na tabela "Pedidos":
~~~sql
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
~~~

## Consulta SQL Avançada

Para obter os clientes com mais de 5 pedidos, ordenados de forma decrescente pelo total de pedidos, execute a seguinte consulta:

~~~sql
SELECT Cliente, COUNT(*) AS TotalPedidos
FROM Pedidos
GROUP BY Cliente
HAVING COUNT(*) > 5
ORDER BY TotalPedidos DESC;
~~~

Esta consulta:
1. Seleciona o campo `Cliente` e conta o número total de pedidos para cada cliente usando a função `COUNT(*)`.
2. Agrupa os resultados por `Cliente` usando a cláusula `GROUP BY`.
3. Filtra os clientes que possuem mais de 5 pedidos usando a cláusula `HAVING COUNT(*) > 5`.
4. Ordena os resultados de forma decrescente pelo `TotalPedidos` usando a cláusula `ORDER BY`.

Para visualizar o projeto completo acesse repositório do Github:

[Repositório Github](https://github.com/)
