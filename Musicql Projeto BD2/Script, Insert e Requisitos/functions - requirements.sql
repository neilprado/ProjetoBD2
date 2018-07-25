/* Funções */
-- Função que calcula a média de preços das músicas
create or replace function calcMedia()
returns numeric as $$
declare
media numeric;
begin
select avg(preco) into strict media from produto
join musica
on idproduto = idmusica;
return media;
end;
$$ language plpgsql;

select calcMedia();

-- Função que dá desconto em um produto

create or replace function darDesconto (codigo integer, perc numeric)
returns integer as $$
begin
select idproduto into strict codigo from produto
where idproduto = codigo;
if perc > 0.5 then
raise notice 'Não é black friday';
return -1;
elsif perc < 0 then
raise notice 'Porcentagem inexistente, por favor, insira um valor válido';
return -1;
else
update produto set preco = (preco * (1 + perc))
where idproduto = codigo;
return 0;
end if;
exception
when no_data_found then
raise notice 'Produto não encontrado';
return -1;
when others then
raise notice 'Erro desconhecido';
return -1;
end;
$$ language plpgsql;

select * from produto
select darDesconto(1, 0.1)

-- Função para enviar ao cliente uma mensagem de aniversário
create or replace function mensagem()
returns void as $$
declare
cli_cursor CURSOR for select * from cliente;
begin
for i in cli_cursor loop
if extract(day from current_date) = extract(day from i.dtnascimento) AND extract(month from current_date) = extract(month from i.dtnascimento) then
raise notice 'Olá %, gostaria de parabenizá-lo por mais um ano de vida!', i.login;
end if;
end loop;
end
$$ language plpgsql; 

update cliente set dtnascimento = '16/07/1988' where login = 'martinho123';
select mensagem();
select * from cliente

-- Função para listar músicas de um artista

create or replace function listarM(art varchar)
returns void as $$
declare 
m_cursor CURSOR for select * from produto p
			join musica m on p.idproduto = m.idmusica
			join album al on al.idalbum = m.idalbum
			join gravacao g on g.idalbum = al.idalbum
			join artista a on g.idartista = a.idartista
			where a.nome = art;
begin
select nome into strict art from artista
where nome = art;
raise notice 'Artista: %', art;
for i in m_cursor loop
raise notice 'Música: %', i.nome;
end loop;
exception
when no_data_found then
raise notice 'Artista desconhecido';
when others then
raise notice 'Erro desconhecido';
end
$$ language plpgsql;

select listarM('Rfgfahsfa');