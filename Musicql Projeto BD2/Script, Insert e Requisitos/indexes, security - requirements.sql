/* Criação de usuários */
create role director login
password 'projetobd2'
createdb createrole;

create role usuario login
password 'projetobd2'

grant insert, select, update on artista to usuario;
grant select on produto, musica to usuario
grant execute on function calcMedia() to usuario;
grant select on artsPlaylists to usuario;

select calcMedia()

/* Índices (Indexes) 
Foram utilizados devido a busca frequente por nome do artista, da música ou álbum e do gênero, também por serem tabelas que são atualizadas
em uma frequência muito baixa */
create index nomeArtista on artista(nome);
create index nomeProduto on produto(nome);
create index buscaGenero on genero(nome);

/* Visões (Views) */
--  View que mostra os álbuns e o gênero deles que os clientes adquiriram
CREATE OR REPLACE VIEW ClienteAlbumGenero AS
SELECT cl.login Cliente, pr.nome Nome_do_Album, ge.nome Genero FROM cliente cl
JOIN compra c ON cl.login = c.logincliente
JOIN produto pr ON pr.idproduto = c.idproduto
JOIN album al ON al.idalbum = pr.idproduto
JOIN categoria cat ON cat.idalbum = al.idalbum
JOIN genero ge ON ge.idgenero = cat.idgenero

select * from ClienteAlbumGenero


-- View que mostre nome do artista, nome da musica, álbum, gênero e nome da playlist a qual ela pertence
create or replace view artsPlaylists as SELECT ar.nome Artista, p2.nome Álbum, p1.nome Música, ge.nome Gênero, pl.nome Playlist FROM musica m
					JOIN produto p1 ON m.idmusica = p1.idproduto
					JOIN album a ON a.idalbum = m.idalbum
					JOIN produto p2 ON p2.idproduto = a.idalbum
					JOIN gravacao g on g.idalbum = a.idalbum
					JOIN artista ar on g.idartista = ar.idartista
					JOIN categoria c on c.idalbum = a.idalbum
					JOIN genero ge on c.idgenero = ge.idgenero
					JOIN coletanea co on co.idmusica = m.idmusica
					JOIN playlist pl on pl.idplaylist = co.idplaylist
					order by ar.nome;

select * from artsPlaylists

create or replace view compCli as select cli.login, cli.dtnascimento, cli.plano, c.dtinicio, c.dtfinal, p.nome, p.preco 
from cliente cli join compra c on c.logincliente = cli.login
join produto p on p.idproduto = c.idproduto;

select * from compCli

create or replace function compraProdutoExistente()
returns trigger as $$
declare 
cod int;
begin
select idproduto into strict cod from produto where nome = new.nome and preco = new.preco;
insert into compra values (cod, new.login, default, current_date, null);
return new;
exception
when no_data_found then
raise notice 'Nome do produto inexistente ou preco incorreto';
return null;
when unique_violation then
raise notice 'Esse cliente já comprou esse produto';
return null;
end;
$$ language plpgsql;

create trigger prodExis
instead of insert on compCli
for each row execute procedure compraProdutoExistente()

insert into compCli (login, nome, preco) values('gugaflow', 'Sehnsucht', 22.00);
insert into compCli (login, nome, preco) values ('gugaflow', 'Più Che Logico', 22.00);

/* Triggers */ 
Create or replace function mudarplano()
returns trigger
As $$
declare
	novo_plano cliente.plano%type;
begin
	novo_plano = new.plano;
	
	if novo_plano = 'premium' then
		insert into compra values(1001, new.login, default, current_date, current_date + INTERVAL '90 DAYS');
		raise notice 'Plano alterado com sucesso';
		raise notice 'Cliente: % - Novo plano: %', new.login, novo_plano;
		return new;
		
	elsif novo_plano = 'gold' then
		insert into compra values(1000, new.login, default, current_date, current_date + INTERVAL '30 DAYS');
		raise notice 'Plano alterado com sucesso';
		raise notice 'Cliente: % - Novo plano: %', new.login, novo_plano;
		return new;

	else
		raise notice 'Plano inexistente';
		return null;
		
	end if;

	Exception
		WHEN NO_DATA_FOUND then
		raise exception 'Cliente nao encontrado';
		WHEN OTHERS then
		raise exception 'Erro desconhecido';
end
$$ language 'plpgsql';


Create trigger mudancaplano before update on cliente
For each row execute procedure mudarplano();

update cliente set plano = 'premium'
where login = 'martinho123';

update cliente set plano = 'gold'
where login = 'martinho123';

-- Plano nao podera ser alterado
update cliente set plano = 'fast'
where login = 'martinho123';

-- Cria uma view e faz uma trigger que insere artistas
create or replace view artSoloBanda 
as select a.nome, a.pais, a.cidade, b.numero from artistaBanda b
join artista a on a.idartista = b.idartista
					
0
select * from artistaBanda
select * from artista

insert into artSoloBanda(nome, pais, cidade, numero) values ('Nirvana', 'USA', 'Boston', 3)
insert into artSoloBanda(nome, pais, cidade, numero) values ('FLOW', 'Japão', 'Tóquio', 4)