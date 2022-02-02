CREATE TABLE Auteurs
(	
NumAuteur NUMBER(3) 
		CONSTRAINT AuteursNumAuteur CHECK (NumAuteur BETWEEN 1 AND 100)
		CONSTRAINT CpNumAuteur PRIMARY KEY ,
Nom 	VARCHAR2(20) CONSTRAINT AuteursNom NOT NULL,
Prenom	VARCHAR2(20)
);
CREATE TABLE Ouvrages
(
NumOuvrage	NUMBER(3)
	CONSTRAINT OuvragesNumOuvrage CHECK (NumOuvrage BETWEEN 1 AND 500),
Titre	VARCHAR2(50) CONSTRAINT OuvragesTitreNotNull NOT NULL,
Annee	 	NUMBER(4) CONSTRAINT OuvragesAnnee CHECK ( Annee > 1985), 
TypeRel	VARCHAR2(10) 
	CONSTRAINT OuvragesTypeRel 
CHECK(TypeRel in ('NORMAL','LUXE','CARTONNE','BROCHE')),
CONSTRAINT CPNumOuvrage PRIMARY KEY (NumOuvrage)
 );
CREATE TABLE A_Ecrit
(
NumAuteur 	NUMBER(3) 
	CONSTRAINT RefNumAuteurA_EcritAuteurs REFERENCES auteurs (NumAuteur),
NumOuvrage	NUMBER(3),
CONSTRAINT CPA_Ecrit 	PRIMARY KEY (NumAuteur,NumOuvrage),
CONSTRAINT RefNumOuvrageA_EcritOuvrages FOREIGN KEY (NumOuvrage) REFERENCES ouvrages (NumOuvrage)
);


prompt'Insertion table auteurs';
insert into auteurs values (1,'Delmal','Pierre');
insert into auteurs values (2,'Vilvens','Claude');
insert into auteurs values (3,'Mercenier','Denys');
insert into auteurs values (4,'Thiry','Christiane');
insert into auteurs values (5,'Clermont','Carine');
insert into auteurs values (6,'Starzak','Richard');
insert into auteurs values (7,'Bastianelli','Tony');

prompt'Insertion table ouvrages';
insert into ouvrages values 
(10,'Oracle8 Fonctionnement et PL/SQL',1998,'NORMAL');
insert into ouvrages values 
(11,'Oracle8 La réplication',1998,'NORMAL');
insert into ouvrages values 
(20,'Programmation en langage C++',1999,'NORMAL');
insert into ouvrages values 
(21,'Programmation en langage Java',1999,'NORMAL');
insert into ouvrages values 
(30,'Le système d''exploitation Unix',1995,'NORMAL');
insert into ouvrages values 
(22,'COBOL/ANS-85',1999,'NORMAL');
insert into ouvrages values 
(12,'SQL 2',2000,'LUXE');
insert into ouvrages values 
(23,'Programmation orientée objet',1995,'LUXE');

prompt'Insertion table a_ecrit';
insert into a_ecrit values (1,10);
insert into a_ecrit values (1,11);
insert into a_ecrit values (2,20);
insert into a_ecrit values (2,21);
insert into a_ecrit values (3,30);
insert into a_ecrit values (4,22);
insert into a_ecrit values (1,12);
insert into a_ecrit values (5,10); 
insert into a_ecrit values (6,30); 
insert into a_ecrit values (7,23);

