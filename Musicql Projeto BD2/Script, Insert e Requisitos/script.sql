create table Cliente (
   login varchar(30) NOT NULL,
   senha varchar(45) NOT NULL,
   numCartao varchar(16) NULL,
   nome varchar(15) NOT NULL,
   sobrenome varchar(20) NOT NULL,
   dtNascimento date NOT NULL,
   email varchar(45) NOT NULL,
   rua varchar(30) NULL,
   cidade varchar(20) NULL,
   estado varchar(2) NULL,
   cep varchar(9) NULL,
   plano varchar(10) DEFAULT 'free',
   CONSTRAINT PK_login PRIMARY KEY(login),
   CONSTRAINT AK_numCartao UNIQUE(numCartao)
);

create table Telefone (
   login_cliente varchar(30) NOT NULL,
   telefone_cliente varchar(15) NOT NULL,
   CONSTRAINT PK_login_telefone PRIMARY KEY (login_cliente, telefone_cliente),
   CONSTRAINT FK_login          FOREIGN KEY (login_cliente) REFERENCES Cliente,
   CONSTRAINT AK_telefone_cli   UNIQUE(telefone_cliente)
);

create table Artista (
   idartista serial,
   nome varchar (20) NOT NULL,
   pais varchar(15) NOT NULL,
   cidade varchar (20) NULL,
   CONSTRAINT PK_idartista PRIMARY KEY (idartista)
);

create table ArtistaSolo (
   idartista int NOT NULL,
   dtnascimento date NOT NULL,
   CONSTRAINT PK_idartistaSolo PRIMARY KEY(idartista),
   CONSTRAINT FK_idartista FOREIGN KEY(idartista) REFERENCES Artista
);

create table ArtistaBanda(
   idartista int NOT NULL,
   numero smallint NOT NULL,
   anoCriacao int NOT NULL,
   CONSTRAINT PK_idartistaBanda PRIMARY KEY(idartista),
   CONSTRAINT FK_idartista FOREIGN KEY(idartista) REFERENCES Artista,
   CONSTRAINT CK_numero    CHECK(numero > 1)
);

create table Seguir (
   login_cliente varchar(30) NOT NULL,
   id_artista int NOT NULL,
   CONSTRAINT PK_LoginArtista PRIMARY KEY (login_cliente, id_artista),
   CONSTRAINT FK_loginCliente FOREIGN KEY (login_cliente) REFERENCES Cliente,
   CONSTRAINT FK_idArtista    FOREIGN KEY (id_artista) REFERENCES Artista
);

create table Produto (
   idProduto int NOT NULL,
   preco decimal(4,2) NOT NULL,
   nome varchar(25) NOT NULL,
   descricao varchar(45) NULL,
   CONSTRAINT PK_idProduto PRIMARY KEY(idproduto),
   CONSTRAINT CK_preco CHECK(preco > 0)
);

create table Compra (
   idProduto int NOT NULL,
   loginCliente varchar(30) NOT NULL,
   codTransacao SERIAL,
   dtInicio date NOT NULL,
   dtFinal date NULL,
   CONSTRAINT PK_idCompra PRIMARY KEY (idProduto, loginCliente),
   CONSTRAINT FK_Produto  FOREIGN KEY (idProduto) REFERENCES Produto,
   CONSTRAINT FK_Cliente  FOREIGN KEY (loginCliente) REFERENCES Cliente
);

create table Album (
   idAlbum int NOT NULL,
   ano date NOT NULL,
   faixas smallint NOT NULL,
   CONSTRAINT PK_idProdutoAlbum PRIMARY KEY (idAlbum),
   CONSTRAINT FK_idProduto FOREIGN KEY (idAlbum) REFERENCES Produto,
   CONSTRAINT CK_faixas CHECK(faixas > 0)
);

create table Musica (
   idMusica int NOT NULL,
   idAlbum int NOT NULL,
   duracao decimal(3,2) NOT NULL,
   CONSTRAINT PK_idMusica PRIMARY KEY (idMusica),
   CONSTRAINT FK_idProduto FOREIGN KEY (idMusica) REFERENCES Produto,
   CONSTRAINT FK_idAlbum FOREIGN KEY (idAlbum) REFERENCES Album,
   CONSTRAINT CK_duracao CHECK(duracao > 0 AND duracao < 10.00)
);

create table Gravadora (
   idgravadora int NOT NULL,
   pais varchar(15) NOT NULL,
   nome varchar(20) NOT NULL,
   CONSTRAINT PK_idgravadora PRIMARY KEY(idgravadora)
);

create table Gravacao (
   idAlbum int NOT NULL,
   idArtista int NOT NULL,
   idGravadora int NOT NULL,
   CONSTRAINT PK_ids         PRIMARY KEY (idAlbum, idArtista),
   CONSTRAINT FK_idAlbum     FOREIGN KEY (idAlbum) REFERENCES Album,
   CONSTRAINT FK_idArtista   FOREIGN KEY (idArtista) REFERENCES Artista,
   CONSTRAINT FK_idGravadora FOREIGN KEY (idGravadora) REFERENCES Gravadora
);

create table Genero(
   idGenero SERIAL,
   nome varchar(10) NOT NULL,
   CONSTRAINT PK_idGenero PRIMARY KEY(idgenero)
);

create table Categoria (
   idAlbum int NOT NULL,
   idGenero int NOT NULL,
   CONSTRAINT PK_idAlbumGenero PRIMARY KEY(idAlbum, idGenero),
   CONSTRAINT FK_idAlbum       FOREIGN KEY(idAlbum) REFERENCES Album,
   CONSTRAINT FK_idGenero       FOREIGN KEY(idGenero) REFERENCES Genero
);

create table Playlist (
   idPlaylist int NOT NULL,
   nome varchar(45) NULL,
   CONSTRAINT PK_idPlaylist   PRIMARY KEY(idPlaylist)
);

create table Coletanea (
   idPlaylist int NOT NULL,
   idMusica int NOT NULL,
   CONSTRAINT PK_ids_Agregacao PRIMARY KEY(idPlaylist, idMusica),
   CONSTRAINT FK_idPlaylist    FOREIGN KEY(idPlaylist) REFERENCES Playlist,
   CONSTRAINT FK_idMusica      FOREIGN KEY(idMusica) REFERENCES Musica
);