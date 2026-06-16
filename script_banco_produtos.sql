CREATE DATABASE meu_estoque;

USE meu_estoque;

SHOW DATABASES;

CREATE TABLE categorias (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE produtos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT DEFAULT 0,
    categoria_id INT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO categorias (nome) VALUES ('Eletrônicos');
INSERT INTO categorias (nome) VALUES ('Escritório');

INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, categoria_id)
VALUES ('Mouse sem fio', 'Mouse ergonômico 2400 DPI', 89.90, 15, 1);

INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, categoria_id)
VALUES ('Teclado mecânico', 'Teclado RGB Switch Blue', 259.00, 8, 1);

INSERT INTO produtos (nome, descricao, preco, quantidade_estoque, categoria_id)
VALUES ('Cadeira ergonômica', 'Cadeira de escritório com ajuste de altura', 850.00, 3, 2);

SELECT * FROM categorias;
SELECT * FROM produtos;

SELECT nome, preco FROM produtos WHERE preco>100.00;

UPDATE produtos SET quantidade_estoque = 20 WHERE id=1;

SELECT * FROM produtos;

DELETE FROM produtos WHERE id=3;

SELECT * FROM produtos;

SELECT p.nome AS nome_produto, p.preco, c.nome AS nome_categoria FROM produtos p
INNER JOIN categorias c ON p.categoria_id = c.id;
