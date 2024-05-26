-- Desafio de Banco de Dados

-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- 3 - Buscar pelo filme de volta para futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5 - Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE 100 < Duracao AND Duracao < 150 ORDER BY Duracao

-- 7 - Buscar a quantidade de fimes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY COUNT(*) DESC

-- 8 - Buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, Papel FROM ElencoFilme INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
