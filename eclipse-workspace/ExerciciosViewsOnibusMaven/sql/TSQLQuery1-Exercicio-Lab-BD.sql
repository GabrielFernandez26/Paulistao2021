--a) Fazer um algoritmo que leia 1 número e mostre se são múltiplos de 2,3,5 ou nenhum deles
Declare @num int
SET @num = 26
if @num % 2 = 0 
begin
print 'É múltiplo de 2'
end
if @num % 3 = 0
begin 
print 'É múltiplo de 3'
end
if @num %5 =0
begin
print 'É múltiplo de 5'
end
if @num % 2 !=0 AND @num % 3 != 0 AND @num % 5 != 0 
begin 
print 'Divisível por nenhum deles'
end
--b) Fazer um algoritmo que leia 3 número e mostre o maior e o menor
Declare @num1Compare int
declare @num2Compare int
declare @num3Compare int
SET @num1Compare = 10
set @num2Compare = 9
set @num3Compare = 8
if @num1Compare > @num2Compare and @num1Compare > @num3Compare
begin
print CONCAT(@num1Compare, ' é maior')
end
if @num2Compare > @num1Compare and @num2Compare > @num3Compare
begin
print CONCAT(@num2Compare,  ' é maior')
end
if @num3Compare > @num1Compare and @num3Compare > @num2Compare
print CONCAT(@num3Compare,  ' é maior')

--c) Fazer um algoritmo que calcule os 15 primeiros termos da série 1,1,2,3,5,8,13,21,... E calcule a soma dos 15 termos
	Declare @current int
	Declare @last int
	Declare @sum int
	Declare @i int
	Declare @value int
	Set @current = 1
	Set @sum = @current
	Set @last = 0
	Set @i = 0
	WHILE (@i<15)
	BEGIN
	Set @value = @current + @last
	set @last = @current
	set @current = @value

	set @sum = @sum + @current
	set @i = @i + 1
	END
	PRINT @sum
--d) Fazer um algoritmo que separa uma frase, colocando todas as letras em maiúsculo e em minúsculo (Usar funções UPPER e LOWER)
Declare @frase varchar(50)
Set @frase = 'Frase escrita aqui'
print UPPER(@frase)
print LOWER(@frase)

--e) Fazer um algoritmo que inverta uma palavra (Usar a função SUBSTRING)
Declare @palavra varchar(50)
Set @palavra = 'Palavra'
print REVERSE(@palavra)