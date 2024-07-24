USE ti3k5791_douglasgabriel;

CREATE TABLE IF NOT EXISTS clientes (
    -- coluna / tipo de dado / restrição

 idClientes INT PRIMARY KEY,
 nome VARCHAR(100),
 telefone VARCHAR(100)
)

ALTER TABLE clientes ADD email VARCHAR(100);
    
ALTER TABLE clientes MODIFY email TEXT;
    
ALTER TABLE clientes 
CHANGE COLUMN email emailCliente VARCHAR(255);

ALTER TABLE clientes
-- renomear 
RENAME TO clientes;


USE ti3k5791_douglasgabriel;
INSERT IGNORE INTO clientes (idClientes, nome, emailCliente) VALUES (1, 'Douglas Gabriel', 'Douglas.ramos@email'),
(2, 'Carlos Hauberto', 'Carlos.Hauberto@email'),
(3, 'Eva Rhiana', 'Eve.Rhiana@email'),
(4, 'Moona Riva', 'Moona.Riva@email')


UPDATE clientes
SET email = 'novo.email@email.com'
WHERE idClientes = 1; -- condição

USE ti3k5791_douglasgabriel;

SELECT emailCliente
FROM clientes
WHERE idClientes = 1;


SELECT idClientes, nome, emailCliente
FROM clientes
ORDER BY nome ASC; -- OU DESC

USE ti3k5791_douglasgabriel;


SELECT idClientes, nome, emailCliente
FROM clientes
LIMIT 3;

SELECT DISTINCT nome
FROM clientes

USE ti3k5791_douglasgabriel;

INSERT INTO pedidos ( idClientes, numeropedido, valorTotal, dataPedido)
VALUES (1, 'PED-001', 150 00, '2024-07-12'),
       (2, 'PED_002', 250 00, '2024-07-12'),
       (3, 'PED_003', 120 00, '2024-07-13');

       SELECT SUM(valorTotal) AS valor_total_pedidos
FROM pedidos;

SELECT AVG(valorTotal) AS valor_medio_pedidos
FROM pedidos;

SELECT clientes.idClientes, clientes.nome, pedidos.numeropedido
FROM clientes
INNER JOIN pedidos ON clientes.idClientes = pedidos.idClientes

SELECT clientes.idClientes, clientes.nome, pedidos.numeropedido 
FROM clientes
LEFT JOIN pedidos ON clientes.idClientes = pedidos.idClientes

SELECT clientes.idClientes, clientes.nome, pedidos.numeropedido, pedidos.valorTotal
FROM clientes
INNER JOIN pedidos ON clientes.idClientes = pedidos.idClientes


SELECT nome, GROUP_CONCAT( emailCliente SEPARATOR ',') AS emailCliente
FROM clientes
GROUP BY nome,
