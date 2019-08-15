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
	valor DECIMAL(8,2)
);

INSERT INTO pessoas (nome, cpf, registro_ativo) VALUES
('Lola', '656.565.656-56', 1),
('Lala', '787.878.787-87', 1);

SELECT * FROM pessoas;

