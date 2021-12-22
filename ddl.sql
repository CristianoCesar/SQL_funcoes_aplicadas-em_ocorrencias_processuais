CREATE DATABASE OCORRENCIAS_PROCESSUAIS;

USE OCORRENCIAS_PROCESSUAIS;

CREATE TABLE TbClasse(
	idClasse INT NOT NULL,
	classe VARCHAR(45),
	PRIMARY KEY (idClasse)
);

CREATE TABLE TbAssuntoPrincipal(
	idAssuntoPrincipal INT NOT NULL,
	assuntoPrincipal VARCHAR(80),
	idClasse INT,
	PRIMARY KEY (idAssuntoPrincipal),
	FOREIGN KEY (idClasse) REFERENCES tbClasse(idClasse)
);

CREATE TABLE TbAssuntoGenerico(
	idAssuntoGenerico INT NOT NULL,
	assuntoGenerico VARCHAR (80),
	PRIMARY KEY(idAssuntoGenerico)
);

CREATE TABLE TbAssuntoPrincipalGenerico(
	idAssuntoPrincipalGenerico INT NOT NULL,
	idAssuntoPrincipal INT NOT NULL,
	idAssuntoGenerico INT NOT NULL,
	PRIMARY KEY (idAssuntoPrincipalGenerico),
	FOREIGN KEY (idAssuntoPrincipal) REFERENCES TbAssuntoPrincipal (idAssuntoPrincipal),
	FOREIGN KEY (idAssuntoGenerico) REFERENCES TbAssuntoGenerico (idAssuntoGenerico)
);

CREATE TABLE TbAcao(
	idAcao INT NOT NULL,
	idClasse INT,
	situacao CHAR(2),
	PRIMARY KEY (idAcao),
	FOREIGN KEY (idClasse) REFERENCES tbClasse (idClasse)
);

CREATE TABLE TbTipoParte(
	idTipoParte INT,
	nomeTipo VARCHAR(45),
	PRIMARY KEY (idTipoParte)
);

CREATE TABLE TbParte(
	idParte INT NOT NULL,
	cpf int,
	rg int, 
	nomeCompleto VARCHAR(80),
	nomeCompletoMae VARCHAR(80),
	nomeCompletoPai VARCHAR(80),
	idTipoParte INT NOT NULL,
	PRIMARY KEY (idParte),
	FOREIGN KEY (idTipoParte) REFERENCES TbTipoParte (idTipoParte)
);

