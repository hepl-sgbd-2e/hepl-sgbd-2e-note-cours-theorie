CREATE DOMAIN NomAuteur CHAR (20);
CREATE DOMAIN StatutEmploye SMALLINT DEFAULT 10;
CREATE DOMAIN AdresseDeuxiemeResidence VARCHAR (70)
		DEFAULT NULL;
CREATE DOMAIN Option CHAR (15) DEFAULT 'informatique';
CREATE DOMAIN DateNaissance DATE;
CREATE DOMAIN TempsPreste INTERVAL DAY TO HOUR;
