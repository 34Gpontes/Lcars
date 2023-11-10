DROP DATABASE IF EXISTS lcars;

CREATE DATABASE IF NOT EXISTS LCARS;

USE LCARS;

CREATE TABLE endereco (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(10),
    bairro VARCHAR(100),
    uf VARCHAR(2),
    cidade VARCHAR(100),
    cep VARCHAR(8),
    PRIMARY KEY (id_cliente)
);

CREATE TABLE cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
    numero_contato VARCHAR(20),
    email VARCHAR(100),
    cpf BIGINT NOT NULL,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE funcionario (
    id_funcionario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
    numero_contato VARCHAR(20),
    email VARCHAR(100),
    cnpj BIGINT NOT NULL,
    cargo VARCHAR(100),
    PRIMARY KEY (id_funcionario)
);

CREATE TABLE pagamento (
    id_pagamento INT NOT NULL AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    data_pagamento DATE,
    valor_pagamento DECIMAL(10,2),
    metodo_pagamento VARCHAR(100),
    PRIMARY KEY (id_pagamento)
);

CREATE TABLE pedido (
    id_pedido INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    data_pedido DATE,
    PRIMARY KEY (id_pedido)
);

CREATE TABLE pedido_produto (
    id_pd_prd INT NOT NULL AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade_produto INT,
    valor_produto DECIMAL(10,2),
    PRIMARY KEY (id_pd_prd)
);

CREATE TABLE venda (
    id_venda INT NOT NULL AUTO_INCREMENT,
    id_pd_prd INT NOT NULL,
    data_venda DATE,
    valor_total DECIMAL(10,2),
    nota_fiscal VARCHAR(100),
    PRIMARY KEY (id_venda)
);

CREATE TABLE fornecedor (
    id_fornecedor INT NOT NULL AUTO_INCREMENT,
    nome_empresa VARCHAR(100) NOT NULL,
    nome_representante VARCHAR(100),
    email VARCHAR(100),
    numero_contato VARCHAR(20),
    PRIMARY KEY (id_fornecedor)
);

CREATE TABLE produto (
    id_produto INT NOT NULL AUTO_INCREMENT,
    id_fornecedor INT NOT NULL,
    nome_produto VARCHAR(100),
    marca VARCHAR(100),
    modelo VARCHAR(100),
    ano INT,
    preco DECIMAL(10,2),
    motor VARCHAR(100),
    chassis VARCHAR(100),
    PRIMARY KEY (id_produto)
);


ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_endereco FOREIGN KEY (id_cliente) REFERENCES endereco (id_cliente);

ALTER TABLE pedido
ADD CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);

ALTER TABLE pagamento
ADD CONSTRAINT fk_pagamento_pedido FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido);

ALTER TABLE pedido_produto
ADD CONSTRAINT fk_pedido_produto_pedido FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido);

ALTER TABLE pedido_produto
ADD CONSTRAINT fk_pedido_produto_produto FOREIGN KEY (id_produto) REFERENCES produto (id_produto);

ALTER TABLE venda
ADD CONSTRAINT fk_venda_pedido_produto FOREIGN KEY (id_pd_prd) REFERENCES pedido_produto (id_produto);

ALTER TABLE produto
ADD CONSTRAINT fk_produto_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id_fornecedor);


-- Inserir dados na tabela 'endereco'
INSERT INTO endereco (logradouro, numero, bairro, uf, cidade, cep) VALUES
('Rua das Acácias', '123', 'Centro', 'SP', 'São Paulo', '01001000'),
('Avenida dos Ipês', '456', 'Jardins', 'RJ', 'Rio de Janeiro', '20000000'),
('Travessa das Rosas', '789', 'Vila Feliz', 'MG', 'Belo Horizonte', '30000000'),
('Alameda das Orquídeas', '101', 'Bosque Real', 'SP', 'São Paulo', '01111111'),
('Rua dos Pinheiros', '222', 'Lagoa Azul', 'RJ', 'Rio de Janeiro', '20111111'),
('Avenida das Palmeiras', '333', 'Jardim Tropical', 'MG', 'Belo Horizonte', '30111111'),
('Praça das Oliveiras', '404', 'Parque das Flores', 'SP', 'São Paulo', '01222222'),
('Travessa dos Lírios', '505', 'Vila Serena', 'RJ', 'Rio de Janeiro', '20222222'),
('Alameda dos Girassóis', '606', 'Cidade Nova', 'MG', 'Belo Horizonte', '30222222'),
('Rua das Tulipas', '707', 'Bosque Encantado', 'SP', 'São Paulo', '01333333'),
('Rua das Flores', '456', 'Jardim Botânico', 'RJ', 'Rio de Janeiro', '20220000'),
('Avenida das Oliveiras', '789', 'Vila Verde', 'MG', 'Belo Horizonte', '30120000'),
('Travessa dos Cravos', '101', 'Bosque das Árvores', 'SP', 'São Paulo', '01112222'),
('Alameda das Bromélias', '202', 'Parque dos Pássaros', 'RJ', 'Rio de Janeiro', '20112222'),
('Rua das Azaleias', '303', 'Jardim Secreto', 'MG', 'Belo Horizonte', '30212222'),
('Avenida dos Jasmins', '404', 'Vila Encantada', 'SP', 'São Paulo', '01223333'),
('Travessa das Margaridas', '505', 'Lagoa Dourada', 'RJ', 'Rio de Janeiro', '20223333'),
('Alameda das Begônias', '606', 'Bosque Encantado', 'MG', 'Belo Horizonte', '30323333'),
('Rua das Violetas', '707', 'Cidade Mágica', 'SP', 'São Paulo', '01334444'),
('Praça dos Girassóis', '808', 'Parque das Estrelas', 'RJ', 'Rio de Janeiro', '20334444');

-- Inserir dados na tabela 'cliente'
INSERT INTO cliente (nome, sobrenome, numero_contato, email, cpf) VALUES
('José', 'Silveira', '9999-8888', 'jose@email.com', 12345678901),
('Ana', 'Mendes', '8888-7777', 'ana@email.com', 23456789012),
('Carlos', 'Oliveira', '7777-6666', 'carlos@email.com', 34567890123),
('Fernanda', 'Lima', '6666-5555', 'fernanda@email.com', 45678901234),
('Rafael', 'Santos', '5555-4444', 'rafael@email.com', 56789012345),
('Mariana', 'Almeida', '4444-3333', 'mariana@email.com', 67890123456),
('Lucas', 'Pereira', '3333-2222', 'lucas@email.com', 78901234567),
('Camila', 'Rodrigues', '2222-1111', 'camila@email.com', 89012345678),
('Roberto', 'Ferreira', '1111-9999', 'roberto@email.com', 90123456789),
('Larissa', 'Gomes', '0000-1111', 'larissa@email.com', 12345678909),
('Maria', 'Silva', '9999-7777', 'maria@email.com', 23456789098),
('João', 'Oliveira', '8888-6666', 'joao@email.com', 34567890187),
('Fátima', 'Costa', '7777-5555', 'fatima@email.com', 45678901276),
('Pedro', 'Lima', '6666-4444', 'pedro@email.com', 56789012365),
('Carla', 'Santos', '5555-3333', 'carla@email.com', 67890123454),
('Gustavo', 'Almeida', '4444-2222', 'gustavo@email.com', 78901234543),
('Luisa', 'Pereira', '3333-1111', 'luisa@email.com', 89012345632),
('Fernando', 'Rodrigues', '2222-9999', 'fernando@email.com', 90123456721),
('Julia', 'Ferreira', '1111-8888', 'julia@email.com', 01234567890),
('Marcos', 'Gomes', '0000-0000', 'marcos@email.com', 12345678910);


-- Inserir dados na tabela 'funcionario'
INSERT INTO funcionario (nome, sobrenome, numero_contato, email, cnpj, cargo) VALUES
('Fernanda', 'Pereira', '6666-6666', 'fernanda@email.com', 98765432109876, 'Vendedor'),
('Lucas', 'Costa', '5555-5555', 'lucas@email.com', 87654321098765, 'Gerente'),
('Mariana', 'Almeida', '4444-4444', 'mariana@email.com', 76543210987654, 'Atendente'),
('Roberto', 'Ferreira', '3333-3333', 'roberto@email.com', 65432109876543, 'Vendedor'),
('Camila', 'Rodrigues', '2222-2222', 'camila@email.com', 54321098765432, 'Gerente'),
('Rafael', 'Santos', '1111-1111', 'rafael@email.com', 43210987654321, 'Atendente'),
('Larissa', 'Gomes', '9999-9999', 'larissa@email.com', 32109876543210, 'Vendedor'),
('Ana', 'Mendes', '8888-8888', 'ana@email.com', 21098765432109, 'Gerente'),
('Carlos', 'Oliveira', '7777-7777', 'carlos@email.com', 10987654321098, 'Atendente'),
('José', 'Silveira', '6666-6666', 'jose@email.com', 09876543210987, 'Vendedor'),
('Beatriz', 'Costa', '7777-7777', 'beatriz@email.com', 21098765432101, 'Vendedor'),
('Mateus', 'Almeida', '6666-6666', 'mateus@email.com', 10987654321012, 'Gerente'),
('Tatiane', 'Ferreira', '5555-5555', 'tatiane@email.com', 09876543210923, 'Atendente'),
('Gabriel', 'Rodrigues', '4444-4444', 'gabriel@email.com', 98765432109834, 'Vendedor'),
('Isabela', 'Santos', '3333-3333', 'isabela@email.com', 87654321098745, 'Gerente'),
('Ricardo', 'Pereira', '2222-2222', 'ricardo@email.com', 76543210987656, 'Atendente'),
('Cristina', 'Gomes', '1111-1111', 'cristina@email.com', 65432109876567, 'Vendedor'),
('Alex', 'Mendes', '0000-0000', 'alex@email.com', 54321098765478, 'Gerente'),
('Fernando', 'Oliveira', '9999-9999', 'fernando@email.com', 43210987654389, 'Atendente'),
('Luana', 'Silva', '8888-8888', 'luana@email.com', 32109876543290, 'Vendedor');



-- Inserir dados na tabela 'fornecedor'
INSERT INTO fornecedor (nome_empresa, nome_representante, email, numero_contato) VALUES
('Ford Motors', 'Carlos Silva', 'ford@email.com', '1111-1111'),
('Chevrolet Cars', 'Mariana Oliveira', 'chevrolet@email.com', '2222-2222'),
('Toyota Motors', 'Rafael Costa', 'toyota@email.com', '3333-3333'),
('Honda Cars', 'Juliana Santos', 'honda@email.com', '4444-4444'),
('Volkswagen Motors', 'Lucas Pereira', 'volkswagen@email.com', '5555-5555'),
('Fiat Automobiles', 'Ana Lima', 'fiat@email.com', '6666-6666'),
('Hyundai Motors', 'Pedro Almeida', 'hyundai@email.com', '7777-7777'),
('BMW Cars', 'Fernanda Oliveira', 'bmw@email.com', '8888-8888'),
('Mercedes-Benz Motors', 'Gustavo Santos', 'mercedes@email.com', '9999-9999'),
('Audi Cars', 'Carla Silva', 'audi@email.com', '0000-0000'),
('Nissan Motors', 'Roberto Costa', 'nissan@email.com', '1111-1111'),
('Mitsubishi Cars', 'Larissa Oliveira', 'mitsubishi@email.com', '2222-2222'),
('Subaru Motors', 'Marcelo Santos', 'subaru@email.com', '3333-3333'),
('Kia Cars', 'Amanda Lima', 'kia@email.com', '4444-4444'),
('Peugeot Motors', 'Carlos Pereira', 'peugeot@email.com', '5555-5555'),
('Renault Automobiles', 'Luana Almeida', 'renault@email.com', '6666-6666'),
('Land Rover Motors', 'Gustavo Gomes', 'landrover@email.com', '7777-7777'),
('Jaguar Cars', 'Roberta Mendes', 'jaguar@email.com', '8888-8888'),
('Porsche Motors', 'Ricardo Silva', 'porsche@email.com', '9999-9999'),
('Volvo Cars', 'Fernanda Santos', 'volvo@email.com', '0000-0000');


-- Inserir dados na tabela 'produto'
INSERT INTO produto (id_fornecedor, nome_produto, marca, modelo, ano, preco, motor, chassis) VALUES
(1, 'Ford Focus', 'Ford', 'Focus', 2023, 35000.00, 'Motor A', 'Chassis A'),
(2, 'Chevrolet Cruze', 'Chevrolet', 'Cruze', 2022, 28000.00, 'Motor B', 'Chassis B'),
(3, 'Toyota Corolla', 'Toyota', 'Corolla', 2021, 20000.00, 'Motor C', 'Chassis C'),
(4, 'Honda Civic', 'Honda', 'Civic', 2022, 23000.00, 'Motor D', 'Chassis D'),
(5, 'Volkswagen Golf', 'Volkswagen', 'Golf', 2023, 30000.00, 'Motor E', 'Chassis E'),
(6, 'Fiat Uno', 'Fiat', 'Uno', 2021, 19000.00, 'Motor F', 'Chassis F'),
(7, 'Hyundai HB20', 'Hyundai', 'HB20', 2023, 21000.00, 'Motor G', 'Chassis G'),
(8, 'BMW 3 Series', 'BMW', '3 Series', 2022, 27000.00, 'Motor H', 'Chassis H'),
(9, 'Mercedes-Benz C-Class', 'Mercedes-Benz', 'C-Class', 2021, 22000.00, 'Motor I', 'Chassis I'),
(10, 'Audi A4', 'Audi', 'A4', 2023, 26000.00, 'Motor J', 'Chassis J'),
(11, 'Nissan Sentra', 'Nissan', 'Sentra', 2023, 32000.00, 'Motor K', 'Chassis K'),
(12, 'Mitsubishi Eclipse', 'Mitsubishi', 'Eclipse', 2022, 28000.00, 'Motor L', 'Chassis L'),
(13, 'Subaru Impreza', 'Subaru', 'Impreza', 2021, 21000.00, 'Motor M', 'Chassis M'),
(14, 'Kia Sportage', 'Kia', 'Sportage', 2022, 24000.00, 'Motor N', 'Chassis N'),
(15, 'Peugeot 308', 'Peugeot', '308', 2023, 29000.00, 'Motor O', 'Chassis O'),
(16, 'Renault Kwid', 'Renault', 'Kwid', 2021, 18000.00, 'Motor P', 'Chassis P'),
(17, 'Land Rover Discovery', 'Land Rover', 'Discovery', 2023, 42000.00, 'Motor Q', 'Chassis Q'),
(18, 'Jaguar F-Type', 'Jaguar', 'F-Type', 2022, 35000.00, 'Motor R', 'Chassis R'),
(19, 'Porsche 911', 'Porsche', '911', 2021, 28000.00, 'Motor S', 'Chassis S'),
(20, 'Volvo XC60', 'Volvo', 'XC60', 2023, 38000.00, 'Motor T', 'Chassis T');



-- Inserir dados na tabela 'pedido'
INSERT INTO pedido (id_cliente, id_funcionario, data_pedido) VALUES
(1, 1, '2023-11-10'),
(2, 2, '2023-11-11'),
(3, 3, '2023-11-12'),
(4, 4, '2023-11-13'),
(5, 5, '2023-11-14'),
(6, 6, '2023-11-15'),
(7, 7, '2023-11-16'),
(8, 8, '2023-11-17'),
(9, 9, '2023-11-18'),
(10, 10, '2023-11-19'),
(11, 11, '2023-11-20'),
(12, 12, '2023-11-21'),
(13, 13, '2023-11-22'),
(14, 14, '2023-11-23'),
(15, 15, '2023-11-24'),
(16, 16, '2023-11-25'),
(17, 17, '2023-11-26'),
(18, 18, '2023-11-27'),
(19, 19, '2023-11-28'),
(20, 20, '2023-11-29');

-- Inserir dados na tabela 'pagamento'
INSERT INTO pagamento (id_pedido, data_pagamento, valor_pagamento, metodo_pagamento) VALUES
(1, '2023-11-10', 1500.00, 'Cartão de Crédito'),
(2, '2023-11-11', 2000.00, 'Transferência Bancária'),
(3, '2023-11-12', 1200.00, 'Dinheiro'),
(4, '2023-11-13', 1800.00, 'Boleto'),
(5, '2023-11-14', 2500.00, 'Pix'),
(6, '2023-11-15', 1300.00, 'Cheque'),
(7, '2023-11-16', 1900.00, 'Cartão de Débito'),
(8, '2023-11-17', 2200.00, 'Transferência Bancária'),
(9, '2023-11-18', 1700.00, 'Pix'),
(10, '2023-11-19', 2400.00, 'Dinheiro'),
(11, '2023-11-20', 1800.00, 'Cartão de Crédito'),
(12, '2023-11-21', 2500.00, 'Transferência Bancária'),
(13, '2023-11-22', 1400.00, 'Dinheiro'),
(14, '2023-11-23', 2000.00, 'Boleto'),
(15, '2023-11-24', 2700.00, 'Pix'),
(16, '2023-11-25', 1600.00, 'Cheque'),
(17, '2023-11-26', 2200.00, 'Cartão de Débito'),
(18, '2023-11-27', 2500.00, 'Transferência Bancária'),
(19, '2023-11-28', 1900.00, 'Pix'),
(20, '2023-11-29', 2800.00, 'Dinheiro');



-- Inserir dados na tabela 'pedido_produto'
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade_produto, valor_produto) VALUES
(1, 1, 2, 30000.00),
(2, 2, 1, 25000.00),
(3, 3, 3, 18000.00),
(4, 4, 2, 22000.00),
(5, 5, 1, 28000.00),
(6, 6, 3, 19000.00),
(7, 7, 2, 21000.00),
(8, 8, 1, 27000.00),
(9, 9, 3, 20000.00),
(10, 10, 2, 26000.00),
(11, 11, 2, 32000.00),
(12, 12, 1, 28000.00),
(13, 13, 3, 21000.00),
(14, 14, 2, 24000.00),
(15, 15, 1, 29000.00),
(16, 16, 3, 18000.00),
(17, 17, 2, 42000.00),
(18, 18, 1, 35000.00),
(19, 19, 3, 28000.00),
(20, 20, 2, 38000.00);

-- Inserir dados na tabela 'venda'
INSERT INTO venda (id_pd_prd, data_venda, valor_total, nota_fiscal) VALUES
(1, '2023-11-10', 30000.00, 'NF123'),
(2, '2023-11-11', 25000.00, 'NF456'),
(3, '2023-11-12', 18000.00, 'NF789'),
(4, '2023-11-13', 22000.00, 'NF012'),
(5, '2023-11-14', 28000.00, 'NF345'),
(6, '2023-11-15', 19000.00, 'NF678'),
(7, '2023-11-16', 21000.00, 'NF901'),
(8, '2023-11-17', 27000.00, 'NF234'),
(9, '2023-11-18', 20000.00, 'NF567'),
(10, '2023-11-19', 26000.00, 'NF890'),
(11, '2023-11-20', 32000.00, 'NF111'),
(12, '2023-11-21', 28000.00, 'NF222'),
(13, '2023-11-22', 21000.00, 'NF333'),
(14, '2023-11-23', 24000.00, 'NF444'),
(15, '2023-11-24', 29000.00, 'NF555'),
(16, '2023-11-25', 18000.00, 'NF666'),
(17, '2023-11-26', 42000.00, 'NF777'),
(18, '2023-11-27', 35000.00, 'NF888'),
(19, '2023-11-28', 28000.00, 'NF999'),
(20, '2023-11-29', 38000.00, 'NF000');


-- Selecionar todos os clientes
SELECT * FROM cliente;


-- Selecionar todos os produtos com preço superior a 25.000,00
SELECT * FROM produto WHERE preco > 25000.00;


-- Selecionar todos os pedidos e seus detalhes (cliente, funcionário, produtos)
SELECT 
    pedido.id_pedido,
    cliente.nome AS cliente_nome,
    funcionario.nome AS funcionario_nome,
    produto.nome_produto,
    pedido_produto.quantidade_produto,
    pedido_produto.valor_produto
FROM pedido
JOIN cliente ON pedido.id_cliente = cliente.id_cliente
JOIN funcionario ON pedido.id_funcionario = funcionario.id_funcionario
JOIN pedido_produto ON pedido.id_pedido = pedido_produto.id_pedido
JOIN produto ON pedido_produto.id_produto = produto.id_produto
LIMIT 0, 1000;



-- Calcular o valor total gasto por cada cliente em suas compras
SELECT 
    cliente.id_cliente,
    cliente.nome,
    SUM(pedido_produto.valor_produto) AS valor_total_gasto
FROM cliente
JOIN pedido ON cliente.id_cliente = pedido.id_cliente
JOIN pedido_produto ON pedido.id_pedido = pedido_produto.id_pedido
GROUP BY cliente.id_cliente, cliente.nome;


-- Encontrar os produtos com preço entre 20.000,00 e 30.000,00
SELECT * FROM produto WHERE preco BETWEEN 20000.00 AND 30000.00;

-- Calcular o valor total pago em cada forma de pagamento
SELECT 
    metodo_pagamento,
    SUM(valor_pagamento) AS total_pago
FROM pagamento
GROUP BY metodo_pagamento;


-- Encontrar os clientes que realizaram compras acima de 20.000,00
SELECT 
    cliente.nome,
    cliente.sobrenome,
    SUM(pedido_produto.valor_produto) AS total_compras
FROM cliente
JOIN pedido ON cliente.id_cliente = pedido.id_cliente
JOIN pedido_produto ON pedido.id_pedido = pedido_produto.id_pedido
GROUP BY cliente.id_cliente
HAVING total_compras > 20000.00;


-- -- Drop das tabelas
-- DROP TABLE IF EXISTS pagamento;
-- DROP TABLE IF EXISTS venda;
-- DROP TABLE IF EXISTS pedido_produto;
-- DROP TABLE IF EXISTS pedido;
-- DROP TABLE IF EXISTS produto;
-- DROP TABLE IF EXISTS fornecedor;
-- DROP TABLE IF EXISTS funcionario;
-- DROP TABLE IF EXISTS cliente;
-- DROP TABLE IF EXISTS endereco;


-- -- Drop do banco de dados
-- DROP DATABASE IF EXISTS lcars;
