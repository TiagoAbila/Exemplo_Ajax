DROP TABLE IF EXISTS produtos, vendas, pessoas;

CREATE TABLE pessoas(
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(100),
	cpf VARCHAR(14),
	registro_ativo BIT
);

CREATE TABLE vendas (
	id INT PRIMARY KEY IDENTITY(1,1),
	id_cliente INT, FOREIGN KEY(id_cliente) REFERENCES pessoas(id),
	descricao TEXT,
	registro_ativo BIT
);

CREATE TABLE produtos (
	id INT PRIMARY KEY IDENTITY(1,1),
	id_venda INT, FOREIGN KEY(id_venda) REFERENCES vendas(id),
	nome VARCHAR(100),
	quantidade INT,
	valor DECIMAL(8,2),
	registro_ativo BIT
);

INSERT INTO pessoas (nome, cpf, registro_ativo) VALUES
('Lola', '656.565.656-56', 1),
('Lala', '787.878.787-87', 1);

INSERT INTO vendas (id_cliente, descricao, registro_ativo) VALUES
(1, 'Oi', 1),
(2, 'hm kk bjs', 2);

INSERT INTO produtos (id_venda, quantidade, valor, registro_ativo, nome) VALUES
(1, 20, 29.99, 1, 'Mercedes Benz'),
(1, 17, 329.99, 1, 'Uma caixa'),
(2, 8001, 12.21, 1, 'Juliet'),
(2, 20, 10000.00, 1, 'Pão de Queijo Gourmet');

SELECT * FROM produtos;

