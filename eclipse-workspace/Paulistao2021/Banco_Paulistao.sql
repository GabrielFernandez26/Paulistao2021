create database db_paulistao
go
use db_paulistao

create table Times(
	CodigoTime int not null,
	NomeTime varchar(100) not null,
	Cidade varchar(100) not null,
	Estadio varchar (200) not null,
	primary key(CodigoTime)
)
create table Grupos(
	Grupo varchar (2) not null,
	CodigoTime int not null,
	foreign key (CodigoTime) references Times(CodigoTime)
)

create table Jogos(
	CodigoTimeA INT not null,
	CodigoTimeB int not null,
	GolsTimeA int,
	GolsTimeB int,
	Data date not null
)

INSERT INTO Times VALUES
(1, 'Botafogo', 'Ribeirão Preto', 'Santa Cruz'),
(2, 'Corinthians', 'São Paulo', 'Neo Química Arena'),
(3, 'Ferroviária', 'Araraquara', 'Fonte Luminosa'),
(4, 'Guarani', 'Campinas', 'Brinco de Ouro'),
(5, 'Inter de Limeira', 'Limeira', 'Limeirão'),
(6, 'Ituano', 'Itu', 'Novelli Júnior'),
(7, 'Mirassol', 'Mirassol', 'José Maria de Campos Maia'),
(8, 'Novorizontino', 'Novo Horizonte', 'Jorge Ismael de Biasi'),
(9, 'Palmeiras', 'São Paulo', 'Allianz Parque'),
(10, 'Ponte Preta', 'Campinas', 'Moisés Lucarelli'),
(11, 'Red Bull Bragantino', 'Bragança Paulista', 'Nabi Abi Chedid'),
(12, 'Santo André', 'Santo André', 'Bruno José Daniel'),
(13, 'Santos', 'Santos', 'Vila Belmiro'),
(14, 'São Bento', 'Sorocaba', 'Walter Ribeiro'),
(15, 'São Caetano', 'São Caetano do Sul', 'Anacleto Campanella'),
(16, 'São Paulo', 'São Paulo', 'Morumbi')

INSERT INTO Grupos VALUES 
('A', 2),
('B', 9),
('C', 13),
('D', 16)


