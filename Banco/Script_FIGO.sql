DROP DATABASE figocompanyinformation;
CREATE DATABASE figocompanyinformation;

USE figocompanyinformation;


-- TABLE CLIENT MAPPING
CREATE TABLE clientmapping(
mappingid INT NOT NULL AUTO_INCREMENT,
nomecliente VARCHAR(60) NOT NULL,
businessmanager VARCHAR(60) NOT NULL,
accountmanager VARCHAR(60) NOT NULL,
creator VARCHAR(60) NOT NULL,
questao1 FLOAT (10,2) NOT NULL, -- 1) Qual o potencial de budget para ativações e eventos no ano?
questao2 INT NOT NULL, -- 2) Quantos solicitantes de eventos há na empresa?
questao3 VARCHAR(100) NOT NULL, -- 3) Quem são os maiores solicitantes (mais verba destinada à eventos)? (nome/cargo/e-mail/telefone)maiorcompr VARCHAR(50) NOT NULL,
questao4 VARCHAR(100) NOT NULL, -- 4) Quem é o maior comprador?
questao5 VARCHAR(100) NOT NULL, -- 5) Todos os BIDs passam por Compras? Descreva o processo de solicitações. Há uma área de Eventos na empresa? O Departamento de Compras se envolve? A solicitação vem direto do marketing/trade?
questao6 VARCHAR(100) NOT NULL, -- 6) Quais departamentos solicitam eventos? Que tipo de eventos casa um deles realiza?
questao7 VARCHAR(20) NOT NULL, -- 7) O processo é  job a job via homologação? (verificar contrato vigente)
questao8 VARCHAR(40) NOT NULL, -- 8) Se homologação, há contrato? Quando será feita a próxima homologação?
questao9 FLOAT(10,2), -- 9) Quanto comprou da MCI em 2017 / 2018?
questao10 VARCHAR(60) NOT NULL, -- 10) Quais são as agencias que estao dentro do cliente? (quem são nossos concorrentes?)
questao11 VARCHAR(60) NOT NULL, -- 11) Vocês homologam empresa de Cenografia e AV? Se sim, quando será feita a próxima homologação?
PRIMARY KEY (mappingid, nomecliente));
	


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

