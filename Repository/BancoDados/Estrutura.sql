DROP TABLE IF EXISTS pessoas;

CREATE TABLE pessoas(
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(100),
	cpf VARCHAR(14),
	registro_ativo BIT
);

INSERT INTO pessoas (nome, cpf, registro_ativo) VALUES
('Lola', '656.565.656-56', 1),
('Lala', '787.878.787-87', 1);

SELECT * FROM pessoas;