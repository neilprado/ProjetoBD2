﻿insert into cliente values ('zezinho_xyz', 'abc123', '1234567890123456', 'José Carlos', 'Marques', '12/10/1976', 'zezinhoxyz@gmail.com', null, null, null, null, default);
insert into cliente values ('sandrinha123', 's2d2c3', '4539107985981377', 'Sandra', 'Souza', '20/10/1998', 'sasouza@demetriushairstudio.com', 'Rua São Francisco Xavier', 'Belo Horizonte', 'MG', '31742-438', default);
insert into cliente values ('gugaflow', 'iE3d4SiicR', '4485378020102907', 'Gustavo', 'Gomes', '22/02/2000', 'gustavogo77@polifiltro.com.br', 'Rua Rita Fernandes de Araújo', 'João Pessoa', 'PB', '58067-010', default);
insert into cliente values ('eveeli', 'zQG70XLCjR', '4556290741954173', 'Evelyn', 'Cavalcanti', '15/04/1988', 'evelyncaval30@fingrs.com.br', 'Rua Francisco de Barros', 'Campina Grande', 'PB', '58415-590', default);
INSERT INTO Cliente VALUES ('felipersdf','greencity', '6452136786431234', 'Felipe', 'da Silva Rodrigues', '03/11/1993', 'felipersdf@gmail.com', 'Rua Nadilza Guedes', 'João Pessoa', 'PB','69048-123', default);
INSERT INTO Cliente VALUES ('bilabongg','bolada', '2134136786431234', 'Gabriela', 'Andrade', '07/08/1994', 'bilabongg@gmail.com', 'Rua Pituba', 'Salvador', 'BA','23453-343', default);
INSERT INTO Cliente VALUES ('matheusbfc','botafogo', '6452132341431234', 'Matheus', 'Nóbrega da Silva', '13/08/1989', 'matheus_ns@gmail.com', 'Rua José Américo', 'Natal', 'RN','93758-123', default);
INSERT INTO Cliente VALUES ('brunnatsr','stluzcia', '9912336786431234', 'Brunna', 'Lucena', '05/01/1990', 'brunnasta@gmail.com','Rua Francisco Rocha', 'Santa Luzia', 'PB','72361-312', default);
INSERT INTO Cliente VALUES ('martinho123','wganerboysystem', '2312136786431234', 'Marcos', 'Ribeito do Monte', '21/12/1988', 'markboysystem@gmail.com', 'Rua Ferreira da Costa', 'João Pessoa', 'PB','69048-123', default);

insert into telefone values('zezinho_xyz', '(61)99954-0145');
insert into telefone values('sandrinha123', '(31)99462-6842');
insert into telefone values('sandrinha123', '(31)3754-0899');
insert into telefone values('gugaflow', '(83)99311-4359');
insert into telefone values('felipersdf', '(76)55693-8649');
insert into telefone values('bilabongg', '(16)42538-3068');
insert into telefone values('matheusbfc', '(83)99892-4909 ');
insert into telefone values('brunnatsr', '(79)88667-4831');
insert into telefone values('martinho123', '(41)29062-2188');
insert into telefone values('felipersdf', '(09)45773-5434');

insert into artista values (default, 'Cesare Cremonini', 'Itália', 'Bologna');
insert into artista values (default, 'Rammstein', 'Alemanha', null);
insert into artista values (default, 'Faun', 'Alemanha', null);
insert into artista values (default, 'Falcão', 'Brasil', 'Fortaleza');
insert into artista values (default, 'Zé Ramalho', 'Brasil', 'Brejo do Cruz');
insert into artista values (default, 'Megadeth', 'USA', 'Los Angeles');
insert into artista values (default, 'Frejat', 'Brasil', 'Rio de Janeiro');
insert into artista values (default, 'Metallica', 'USA', 'São Francisco');
insert into artista values (default, 'Anitta', 'Brasil', 'Rio de Janeiro');
insert into artista values (default, 'Nego do Borel', 'Brasil', 'São Paulo');
insert into artista values (default, 'FLOW', 'Japão', 'Tóquio');
insert into artista values (default, 'D-TecnoLife', 'Japão', 'Osaka');
insert into artista values (default, 'ONE OK ROCK', 'Japão', 'Kanagawa');
insert into artista values (default, 'Interpol', 'USA', 'Nova York');
insert into artista values (default, 'Breaking Benjamin', 'USA', 'Chicago');

insert into artistaSolo values(1, '27/03/1980');
insert into artistaSolo values(4, '16/09/1957');
insert into artistaSolo values(5, '03/10/1949');
insert into artistaSolo values(7, '30/03/1993');
insert into artistaSolo values(9, '10/07/1992');
insert into artistaSolo values(10, '21/05/1962');

insert into artistaBanda values(2, 6, 1993);
insert into artistaBanda values(3, 6, 1998);
insert into artistaBanda values (6, 6, 1994);
insert into artistaBanda values (8, 6, 1998);
insert into artistaBanda values (11, 4, 1983); 
insert into artistaBanda values (12, 4, 1981);
insert into artistaBanda values (13, 5, 1998);
insert into artistaBanda values (14, 6, 2005);
insert into artistaBanda values (15, 4, 2005);

insert into seguir values ('zezinho_xyz', 2);
insert into seguir values ('zezinho_xyz', 4);
insert into seguir values ('zezinho_xyz', 1);
insert into seguir values ('sandrinha123', 3);
insert into seguir values ('gugaflow', 2);
insert into seguir values ('gugaflow', 5);
insert into seguir values ('felipersdf', 12);
insert into seguir values ('felipersdf', 14);
insert into seguir values ('felipersdf', 11);
insert into seguir values ('felipersdf', 15);
insert into seguir values ('felipersdf', 9);
insert into seguir values ('zezinho_xyz', 14);
insert into seguir values ('bilabongg', 15);
insert into seguir values ('bilabongg', 10);
insert into seguir values ('bilabongg', 4);
insert into seguir values ('bilabongg', 11);
insert into seguir values ('matheusbfc', 4);
insert into seguir values ('matheusbfc', 14);
insert into seguir values ('matheusbfc', 13);
insert into seguir values ('brunnatsr', 14);
insert into seguir values ('brunnatsr', 8);
insert into seguir values ('martinho123', 12);
insert into seguir values ('martinho123', 9);
insert into seguir values ('martinho123', 11);
insert into seguir values ('martinho123', 14);
insert into seguir values ('gugaflow', 4);
insert into seguir values ('gugaflow', 15);

insert into produto values (1, 22.00, 'Sehnsucht', null);
insert into produto values (2, 23.00, 'Liebe ist fur alle da', null);
insert into produto values (3, 25.00, 'Il primo bacio sulla luna', null);
insert into produto values (4, 28.00, 'Più Che Logico', null);
insert into produto values (5, 12.50, 'Quanto Pior, Melhor', null);
insert into produto values (6, 20.90, 'Zé Ramalho da Paraíba', null);
insert into produto values (101, 3.20, 'Du Hast', 'Grammy Award');
insert into produto values (102, 3.20, 'Engel', null);
insert into produto values (103, 2.10, 'Frühling in Paris', null);
insert into produto values (104, 3.25, 'Dicono di me', null);
insert into produto values (105, 3.55, 'Logico #1', null);
insert into produto values (106, 1.99, 'Coração de Frango', null);
insert into produto values (107, 2.99, 'Avôhai', 'Acústico');
insert into produto values (108, 2.99, 'Vila do Sossego', 'Acústico');
insert into produto values (7, 25.00, 'EndGame', null);
insert into produto values (8, 18.00, 'Rust In Peace', null);
insert into produto values (9, 20.00, 'Master of Puppets', null);
insert into produto values (10, 15.00, 'Ride the Lightning', null);
insert into produto values (11, 12.50, 'Amor Pra Recomeçar', 'Disco de Ouro');
insert into produto values (12, 20.50, 'Bang', null);
insert into produto values (13, 14.00, 'Ritmo Perfeito', null);
insert into produto values (14, 20.00, 'MC Nego do Borel', null);
insert into produto values (15, 16.00, 'Splash!!!', null);
insert into produto values (16, 16.70, 'Game', null);
insert into produto values (17, 12.50, 'LAST ', null);
insert into produto values (18, 15.90, 'Jinsei×Boku=', null);
insert into produto values (19, 20.90, 'Antics', null);
insert into produto values (20, 15.00, 'El Pintor', null);
insert into produto values (21, 15.50, 'Phobia', null);
insert into produto values (109, 3.20, 'Ride the Lightning', 'Grammy Award');
insert into produto values (110, 3.20, 'Trapped Under Ice', null);
insert into produto values (111, 2.10, 'Escape', null);
insert into produto values (112, 3.25, 'Disposable Heroes', null);
insert into produto values (113, 3.55, 'Battery', null);
insert into produto values (114, 1.99, 'Leper Messiah', null);
insert into produto values (115, 2.99, 'Damage, Inc.', null);
insert into produto values (116, 2.99, 'Bang', 'Acústico');
insert into produto values (117, 3.20, 'Cravo e Canela', 'Grammy Award');
insert into produto values (118, 3.20, 'Essa Mina é Louca', null);
insert into produto values (119, 2.10, 'Gosto Assim', null);
insert into produto values (120, 3.25, 'Volta Amor', null);
insert into produto values (121, 3.55, 'Go!!', null);
insert into produto values (122, 1.99, 'Ryuusei', null);
insert into produto values (123, 2.99, 'Taiyou', null);
insert into produto values (124, 2.00, 'Sign', null);
insert into produto values (125, 1.39, 'Endscape', null);
insert into produto values (126, 0.50, 'Koishikute', null);
insert into produto values (127, 1.69, 'GO-ON', null);
insert into produto values (128, 0.99, 'MONDO PIECE', null);
insert into produto values (129, 2.80, 'Obstacle 1', null);
insert into produto values (130, 3.99, 'Song Seven', null);
insert into produto values (131, 2.00, 'Slow Hands', null);
insert into produto values (132, 4.90, 'Memory Serves', null);
insert into produto values (133, 1.99, 'The Scale', null);
insert into produto values (134, 2.99, 'Breath', null);
insert into produto values (135, 3.19, 'The Diary Of Jane', null);
insert into produto values (136, 2.30, 'Phobia', null);
insert into produto values (137, 0.90, 'Colors', null);
insert into produto values (138, 2.30, 'Cry Out', null);
insert into produto values (139, 2.99, 'Heartache', null);
insert into produto values (140, 1.40, 'Decision', null);
insert into produto values (141, 5.49, 'One by One', null);
insert into produto values (142, 3.50, 'This Day We Fight!', null);
insert into produto values (143, 5.69, 'EndGame', null);
insert into produto values (144, 7.79, 'Hangar 18', null);
insert into produto values (145, 3.80, 'Holy Wars', null);
insert into produto values (146, 3.90, 'Dialect Chaos', null);
insert into produto values (147, 2.99, '1,320', null);
insert into produto values (148, 1.90, 'A Tou Le Monde', null);
insert into produto values (149, 2.00, 'Fighting Dreamers', null);
insert into produto values (150, 0.99, 'Evil Angel', null);
insert into produto values (1000, 30.00, 'Gold', 'Plano Mensal');
insert into produto values (1001, 49.99, 'Premium', 'Plano Trimestral');

insert into compra values (104, 'eveeli', default, current_date, null);
insert into compra values (104, 'bilabongg', default, current_date, null);
insert into compra values (140, 'bilabongg', default, current_date, null);
insert into compra values (105, 'bilabongg', default, current_date, null);
insert into compra values (106, 'bilabongg', default, current_date, null);
insert into compra values (107, 'brunnatsr', default, current_date, null);
insert into compra values (107, 'martinho123', default, current_date, null);
insert into compra values (104, 'martinho123', default, current_date, null);
insert into compra values (103, 'martinho123', default, current_date, null);
insert into compra values (104, 'brunnatsr', default, current_date, null);
insert into compra values (102, 'brunnatsr', default, current_date, null);
insert into compra values (101, 'eveeli', default, current_date, null);
insert into compra values (144, 'matheusbfc', default, current_date, null);
insert into compra values (142, 'matheusbfc', default, current_date, null);
insert into compra values (143, 'matheusbfc', default, current_date, null);
insert into compra values (12, 'eveeli', default, current_date, null);
insert into compra values (11, 'bilabongg', default, current_date, null);
insert into compra values (08, 'matheusbfc', default, current_date, null);
insert into compra values (10, 'eveeli', default, current_date, null);
insert into compra values (20, 'felipersdf', default, current_date, null);
insert into compra values (21, 'felipersdf', default, current_date, null);
insert into compra values (19, 'felipersdf', default, current_date, null);
insert into compra values (104, 'felipersdf', default, current_date, null);

insert into album values (1, '25/08/1997', 11);
insert into album values (2, '16/10/2009', 17);
insert into album values (3, '26/09/2008', 12);
insert into album values (4, '26/05/2015', 26);
insert into album values (5, '17/09/1998', 13);
insert into album values (6, '21/04/2008', 21);
insert into album values (7, '25/08/2011', 11);
insert into album values (8, '16/10/2005', 12);
insert into album values (9, '26/09/2007', 9);
insert into album values (10, '26/05/2002', 13);
insert into album values (11, '17/09/1999', 14);
insert into album values (12, '21/04/2007', 15);
insert into album values (13, '25/08/1999', 20);
insert into album values (14, '16/10/2009', 16);
insert into album values (15, '26/09/2011', 23);
insert into album values (16, '26/05/2015', 10);
insert into album values (17, '17/09/1998', 09);
insert into album values (18, '13/03/2012', 11);
insert into album values (19, '21/04/2008', 21);
insert into album values (20, '21/01/2007', 11);
insert into album values (21, '06/06/2006', 21);

insert into musica values (101, 1, 4.22);
insert into musica values (102, 1, 3.52);
insert into musica values (103, 2, 3.10);
insert into musica values (104, 3, 3.42);
insert into musica values (105, 4, 4.01);
insert into musica values (106, 5, 2.59);
insert into musica values (107, 6, 5.10);
insert into musica values (108, 6, 4.10);
insert into musica values (109, 10, 4.22);
insert into musica values (110, 10, 3.52);
insert into musica values (111, 11, 3.10);
insert into musica values (112, 9, 3.42);
insert into musica values (113, 9, 4.01);
insert into musica values (114, 9, 2.59);
insert into musica values (115, 9, 5.10);
insert into musica values (116, 12, 4.10);
insert into musica values (117, 12, 4.22);
insert into musica values (118, 12, 3.52);
insert into musica values (119, 12, 3.10);
insert into musica values (120, 14, 3.42);
insert into musica values (121, 16, 4.01);
insert into musica values (122, 16, 2.59);
insert into musica values (123, 16, 5.10);
insert into musica values (124, 16, 4.10);
insert into musica values (125, 17, 4.22);
insert into musica values (126, 17, 3.52);
insert into musica values (127, 17, 3.10);
insert into musica values (128, 18, 3.42);
insert into musica values (129, 18, 4.01);
insert into musica values (130, 19, 2.59);
insert into musica values (131, 19, 5.10);
insert into musica values (132, 19, 4.10);
insert into musica values (133, 19, 4.22);
insert into musica values (134, 21, 3.52);
insert into musica values (135, 21, 3.10);
insert into musica values (136, 15, 3.42);
insert into musica values (137, 15, 4.01);
insert into musica values (138, 15, 2.59);
insert into musica values (139, 18, 5.10);
insert into musica values (140, 15, 4.10);
insert into musica values (141, 17, 4.22);
insert into musica values (142, 7, 3.52);
insert into musica values (143, 7, 3.10);
insert into musica values (144, 8, 3.42);
insert into musica values (145, 8, 4.01);
insert into musica values (146, 7, 2.59);
insert into musica values (147, 8, 5.10);
insert into musica values (148, 16, 4.10);
insert into musica values (149, 16, 4.22);
insert into musica values (150, 21, 3.52);


insert into gravadora values (1, 'Malta', 'Temple Studios');
insert into gravadora values (2, 'Suécia', 'Universal');
insert into gravadora values (3, 'Itália', 'Warner Italy');
insert into gravadora values (4, 'Itália', 'Live');
insert into gravadora values (5, 'Brasil', 'BMG');
insert into gravadora values (6, 'Brasil', 'Discoberta');

insert into gravacao values (1, 2, 1);
insert into gravacao values (2, 2, 2);
insert into gravacao values (3, 1, 3);
insert into gravacao values (4, 1, 4);
insert into gravacao values (5, 4, 5);
insert into gravacao values (6, 5, 6);
insert into gravacao values (7, 12, 1);
insert into gravacao values (8, 12, 2);
insert into gravacao values (9, 14, 3);
insert into gravacao values (10, 14, 4);
insert into gravacao values (11, 13, 5);
insert into gravacao values (12, 15, 6);
insert into gravacao values (13, 15, 1);
insert into gravacao values (14, 6, 2);
insert into gravacao values (15, 7, 3);
insert into gravacao values (16, 7, 4);
insert into gravacao values (17, 8, 5);
insert into gravacao values (18, 9, 6);
insert into gravacao values (19, 10, 1);
insert into gravacao values (20, 10, 2);
insert into gravacao values (21, 11, 3);

insert into genero values (default, 'Rock');
insert into genero values (default, 'Metal');
insert into genero values (default, 'MPB');
insert into genero values (default, 'Pop');
insert into genero values (default, 'Pop Rock');
insert into genero values (default, 'Folk');
insert into genero values (default, 'J-Rock');
insert into genero values (default, 'Indie');

insert into categoria values (1, 2);
insert into categoria values (2, 2);
insert into categoria values (3, 5);
insert into categoria values (4, 4);
insert into categoria values (5, 3);
insert into categoria values (6, 3);
insert into categoria values (7, 1);
insert into categoria values (7, 2);
insert into categoria values (8, 1);
insert into categoria values (8, 2);
insert into categoria values (9, 1);
insert into categoria values (9, 2);
insert into categoria values (10, 1);
insert into categoria values (10, 2);
insert into categoria values (11, 3);
insert into categoria values (12, 4);
insert into categoria values (13, 4);
insert into categoria values (14, 2);
insert into categoria values (15, 7);
insert into categoria values (16, 7);
insert into categoria values (17, 7);
insert into categoria values (18, 7);
insert into categoria values (19, 1);
insert into categoria values (19, 8);
insert into categoria values (20, 1);
insert into categoria values (20, 8);
insert into categoria values (21, 1);

insert into playlist values (1, 'Blobloblo');
insert into playlist values (2, 'Coiso');
insert into playlist values (3,'Heavy Metal');
insert into playlist values (4,'Brasilsilsil');
insert into playlist values (5,'OtakuPira');
insert into playlist values (6,'DeprêButGood');

insert into coletanea values (1, 101);
insert into coletanea values (1, 103);
insert into coletanea values (1, 104);
insert into coletanea values (1, 105);
insert into coletanea values (1, 107);
insert into coletanea values (1, 102);
insert into coletanea values (3, 109);
insert into coletanea values (3, 110);
insert into coletanea values (3, 114);
insert into coletanea values (3, 115);
insert into coletanea values (3, 111);
insert into coletanea values (3, 112);
insert into coletanea values (4, 116);
insert into coletanea values (4, 117);
insert into coletanea values (4, 118);
insert into coletanea values (4, 119);
insert into coletanea values (4, 120);
insert into coletanea values (5, 121);
insert into coletanea values (5, 122);
insert into coletanea values (5, 123);
insert into coletanea values (5, 124);
insert into coletanea values (5, 126);
insert into coletanea values (5, 127);
insert into coletanea values (5, 128);
insert into coletanea values (5, 137);
insert into coletanea values (6, 129);
insert into coletanea values (6, 132);
insert into coletanea values (6, 131);
insert into coletanea values (6, 134);
insert into coletanea values (6, 135);
insert into coletanea values (6, 136);
insert into coletanea values (6, 138);
insert into coletanea values (6, 101);