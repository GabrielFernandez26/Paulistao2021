--Considere a tabela Produto com os seguintes atributos:
--Produto (Codigo | Nome | Valor)
--Considere a tabela ENTRADA e a tabela SAÍDA com os seguintes atributos:
--(Codigo_Transacao | Codigo_Produto | Quantidade | Valor_Total)
--Cada produto que a empresa compra, entra na tabela ENTRADA. Cada produto que a empresa vende, entra na tabela SAIDA.
--Criar uma procedure que receba um código (‘e’ para ENTRADA e ‘s’ para SAIDA), criar uma exceção de erro para código inválido,
--receba o codigo_transacao, codigo_produto e a quantidade e preencha a tabela correta, com o valor_total de cada transação de cada produto.

CREATE DATABASE db_loja
use db_loja
go
create table Produto(
codigo int not null,
nome varchar(100),
valor float,
primary key(codigo)
)
create table entrada(
Codigo_Transacao int not null,
Codigo_Produto int not null,
Quantidade int,
Valor_Total float,
primary key(Codigo_Transacao),
foreign key (Codigo_produto) references Produto(codigo)
)
create table saida(
Codigo_Transacao int not null,
Codigo_Produto int not null,
Quantidade int,
Valor_Total float,
primary key(Codigo_Transacao),
foreign key (Codigo_produto) references Produto(codigo)
)
create procedure sp_insereproduto(@codigo int, @codigo_transacao int, @quantidade int,@tabela varchar(1), @saida varchar(30) output)
as
DECLARE
@query VARCHAR(MAX), @valor_total DECIMAL(7,2), @valor DECIMAL(7,2), @erro VARCHAR(MAX)
SELECT @valor=valor FROM Produto where codigo=@codigo
SET @valor_total = @quantidade * @valor
BEGIN TRY
IF(UPPER(@tabela)='E')
BEGIN
SET @query = 'INSERT INTO entrada VALUES ('+CAST(@codigo_transacao AS VARCHAR(5))
+','+CAST(@codigo as varchar(5))+','+CAST(@quantidade as varchar(5))+','+CAST(@valor_total AS VARCHAR(9))+')'
exec(@query)
SET @saida = 'Compra realizada com sucesso'
end
else
begin
IF(UPPER(@tabela) = 'S')
begin
SET @query = 'INSERT INTO saida VALUES ('+CAST(@codigo_transacao AS VARCHAR(5))
+','+CAST(@codigo as varchar(5))+','+CAST(@quantidade as varchar(5))+','+CAST(@valor_total AS VARCHAR(9))+')'
exec(@query)
SET @saida = 'Venda realizada com sucesso'
end
else
begin
RAISERROR('Código Inválido', 16, 1)
end
end 
end try
BEGIN CATCH
SET @erro = ERROR_MESSAGE()
RAISERROR(@erro, 16,1)
END CATCH

DECLARE @saida1 VARCHAR(40)
EXEC sp_insereproduto 1,1001,30,'e',@saida1 OUTPUT
PRINT @saida1

DECLARE @saida2 VARCHAR(40)
EXEC sp_insereproduto 1,101,3,'e',@saida2 OUTPUT
PRINT @saida2