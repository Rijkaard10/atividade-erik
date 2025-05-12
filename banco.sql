CREATE DATABASE loja_bolos;

USE loja_bolos;

CREATE TABLE bolos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    url_imagem TEXT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    preco_desconto DECIMAL(10,2) NOT NULL
);

INSERT INTO bolos (nome, url_imagem, valor, preco_desconto) VALUES
('Bolo Arco-Íris', 'https://www.oetker.com.br/receitas/r/bolo-arco-iris', 80.00, 65.00),
('Bolo de Morango', 'http://www.saboremdobro.com.br/loja/produto_descricao/17/Bolo-de-Morango', 70.00, 60.00),
('Bolo de Chocolate', 'https://cozinhadalbo.com.br/2016/02/bolo-de-aniversario-de-chocolate', 90.00, 75.00);
