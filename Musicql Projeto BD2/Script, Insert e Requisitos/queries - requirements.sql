/* Consultas variadas com justificativa semântica */
/* Exibir todos os artitas que possuem albuns gravados pelo gravadora Discoberta */
SELECT g.nome, a.nome FROM gravadora g
JOIN gravacao ga ON g.idgravadora = ga.idgravadora
JOIN artista a ON a.idartista = ga.idartista
WHERE g.nome LIKE (Select nome from gravadora where nome = 'Discoberta');

-- Consulta 01 melhorada!!!
SELECT g.nome, a.nome FROM gravadora g
JOIN gravacao ga ON g.idgravadora = ga.idgravadora
JOIN artista a ON a.idartista = ga.idartista
WHERE g.nome LIKE 'Discoberta'

/* Listar o id, nome e preço da música do artista Zé Ramalho */
SELECT m.idmusica, p.preco, p.nome FROM musica m 
JOIN produto p ON p.idproduto = m.idmusica
JOIN album a ON a.idalbum = m.idalbum
JOIN gravacao g ON g.idalbum = a.idalbum
JOIN artista ar ON g.idartista = ar.idartista
WHERE ar.nome LIKE 'Zé Ramalho'

--Consulta 03 -> Exibir a quantidade de músicas de cada playlist 
SELECT pl.nome, COUNT(pr.nome) FROM playlist pl
JOIN coletanea c ON c.idplaylist = pl.idplaylist
JOIN musica m ON m.idmusica = c.idmusica
JOIN produto pr ON pr.idproduto = m.idmusica 
GROUP BY pl.nome

-- Consulta 04 -> Exibir o numero de musicas classificadas por genero
SELECT ge.nome, COUNT(m.idmusica) FROM genero ge
JOIN categoria c ON c.idgenero = ge.idgenero
JOIN album al ON al.idalbum = c.idalbum
JOIN musica m ON m.idalbum = al.idalbum
GROUP BY 1

-- Consulta 05 -> Exibir quantas musicas cada cliente comprou
SELECT cl.login, COUNT(m.idmusica) qtd_de_musicas FROM Cliente cl
JOIN compra co ON cl.login = co.logincliente
JOIN produto pr ON pr.idproduto = co.idproduto
JOIN musica m ON pr.idproduto = m.idmusica
GROUP BY 1

--Consulta 06 -> Exibir quais artistas cada cliente segue
SELECT cl.login cliente, ar.nome artista_seguido FROM cliente cl
JOIN seguir se ON cl.login = se.login_cliente
JOIN artista ar ON ar.idartista = se.id_artista

--Consulta 07 -> Exibir a quantidade de músicas lançadas em um ano
SELECT EXTRACT(YEAR FROM al.ano) Ano_de_Lançamento , COUNT(m.idmusica) FROM Album al
JOIN Musica m ON al.idalbum = m.idalbum
GROUP BY 1

--Consulta 08 -> Exibir quantos albuns possuem mais de 20 faixas
SELECT pr.nome, al.faixas FROM Produto pr
JOIN album al ON pr.idproduto = al.idalbum
WHERE al.faixas IN (select faixas from album where faixas > 20);

-- Consulta 8 melhorada
SELECT pr.nome, al.faixas FROM Produto pr
JOIN album al ON pr.idproduto = al.idalbum
WHERE al.faixas > 20

--Consulta 09 -> Exibindo a quantidade de músicas e separando por genero pra cada playlist
SELECT pl.nome, COUNT(ge.nome), ge.nome FROM Playlist pl
JOIN coletanea se ON se.idplaylist = pl.idplaylist
JOIN musica m ON m.idmusica = se.idmusica
JOIN album al ON al.idalbum = m.idalbum
JOIN categoria c ON c.idalbum = al.idalbum
JOIN genero ge ON ge.idgenero = c.idgenero
GROUP BY 1,3

--Consulta 10 -> Exibindo a quantidade de gravadoras que cada arista participou
SELECT ar.nome, COUNT(gra.idgravadora) FROM Artista ar
JOIN gravacao g ON ar.idartista = g.idartista
JOIN gravadora gra ON gra.idgravadora = g.idgravadora
GROUP BY 1
