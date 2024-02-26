--Criando o Banco
create database producaobd
go

use producaobd
go

--Criação de Tabelas

--Tabela Fabricantes
create table fabricantes(
cod_fabricante smallint primary key identity(1,1),
nome_fabricante varchar(30)
);

--Tabela Produtos
create table produtos(
cod_produto int primary key identity(1,1),
nome_produto varchar(30),
cod_fabricante smallint,
foreign key(cod_fabricante) references fabricantes(cod_fabricante)
);
--Tabela Lotes
create table lotes(
num_lote int primary key identity(1,1),
data_validate date,
preco_unitario decimal(10,2),
quantidade smallint,
valor_lote decimal(10,2),
cod_produto int,
foreign key(cod_produto) references produtos(cod_produto)
);

--Populando o banco

--Tabela fabricantes
insert into fabricantes(nome_fabricante) values
('Clear'),
('Rexona'),
('Jhonson & Jhonson'),
('Coleston');

--Tabela produtos
insert into produtos(nome_produto, cod_fabricante) values
('Sabonete em Barra', 2),
('Shampoo Anticaspa', 1),
('Desodorante Aerosol Neutro', 2),
('Sabonete Liquido', 2),
('Protetor Solar 30', 3),
('Shampoo 2 em 1', 2),
('Desodorante Aerosol Morango', 2),
('Shampoo Anticaspa', 2),
('Protetor Solar 60', 3),
('Desodorante Rollon', 1);