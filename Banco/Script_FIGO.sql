DROP DATABASE figocompanyinformation;
CREATE DATABASE figocompanyinformation;

USE figocompanyinformation;


-- TABLE COMPANY INFORMATION
CREATE TABLE companyinformation(
companyid INT NOT NULL AUTO_INCREMENT,
cnpj VARCHAR(60) NOT NULL,
nomefantasia VARCHAR(60) NOT NULL,
razaosocial VARCHAR(60) NOT NULL,
areaatuacao VARCHAR(60) NOT NULL,
cep VARCHAR(60) NOT NULL,
rua VARCHAR(20) NOT NULL,
numero VARCHAR(60) NOT NULL,
complemento VARCHAR(60) NOT NULL,
bairro VARCHAR(60) NOT NULL,
cidade VARCHAR(60) NOT NULL,
estado VARCHAR(60) NOT NULL,
pais VARCHAR(60) NOT NULL,
ddi1 VARCHAR(10),
ddd1 VARCHAR(10),
telefone1 VARCHAR(60),
ddi2 VARCHAR(10),
ddd2 VARCHAR(10),
telefone2 VARCHAR(60),
ddicelular VARCHAR(10),
dddcelular VARCHAR(10),
celular VARCHAR (30),
ddifax VARCHAR(10),
dddfax VARCHAR(30),
fax VARCHAR(60),
site VARCHAR(60),
email VARCHAR(60),
emailcontato VARCHAR(60),
obs VARCHAR(60),
contato VARCHAR(60),
user VARCHAR(60) NOT NULL,
cargo VARCHAR(60),
PRIMARY KEY (companyid));
	


-- TABLE USUARIOS
CREATE TABLE usuarios(
userid INT NOT NULL AUTO_INCREMENT,
nomecomp VARCHAR(60) NOT NULL,
area VARCHAR(30) NOT NULL,
email VARCHAR(60) NOT NULL,
password VARCHAR(15) NOT NULL,
idgrupo INT,
PRIMARY KEY (userid, email));

-- MAPEAR PERMISSOES DE ACESSOS
INSERT INTO usuarios (nomecomp, area, email, password, idgrupo) values ('Paulo Bezerra', 'HUB', 'teste@teste.com','123', 1);
INSERT INTO usuarios (nomecomp, area, email, password, idgrupo) values ('Simone Nogueira', 'HUB', 'simone.nogueira@mci-group.com','123', 1);

