CREATE TABLE Employes
(
	NumSecu 		VARCHAR2(8) 
		CONSTRAINT CPEmployesNumSecu PRIMARY KEY,
	Nom 		VARCHAR2 (30) ,
	Prenom		VARCHAR2 (30) ,
	DateNais		DATE,
	Sexe		CHAR(1)	
		CONSTRAINT EmployesSexe CHECK (sexe in ('1','2') ),
	Adresse		VARCHAR2 (30),
	CodePostal		CHAR (4),
	Commune		VARCHAR2 (30),
	Bareme		NUMBER(5),
	NumDep		VARCHAR2 (6),
	NumChef		VARCHAR2 (8) 
		CONSTRAINT REFNumChefINEmployes  REFERENCES Employes (NumSecu));
CREATE TABLE Projets
(
	NumPro 		VARCHAR2 (6)  
		CONSTRAINT CPProjets PRIMARY KEY ,
	NomPro		VARCHAR2(50),
	DateDebut		DATE,
	Site		VARCHAR2 (30),
	NumDep		VARCHAR2 (6) 
		CONSTRAINT REFProjetsNumDepINDepartements 
				REFERENCES Departements (NumDep)
);

CREATE TABLE EmpPro
(
	NumSecu 		VARCHAR2 (8) 
		CONSTRAINT REFEmpProNumSecuINEmployes 
				REFERENCES Employes (NumSecu),
	NumPro 		VARCHAR2 (6) 
		CONSTRAINT REFEmpProNumProINProjets 
				REFERENCES Projets (NumPro),
	Heures		VARCHAR2 (2),
	
	CONSTRAINT CPEmpPro PRIMARY KEY (NumSecu, NumPro)
);


CREATE TABLE Departements
(
	NumDep 		VARCHAR2 (6)  
		CONSTRAINT CPDepartements PRIMARY KEY,
	NomDep		VARCHAR2(40),
	NumSecu		VARCHAR2 (8) 
		CONSTRAINT REFDeptNumSecuINEmployes REFERENCES Employes (NumSecu)
);


ALTER TABLE Employes ADD CONSTRAINT  REFEmpNumDepINDepartements
		FOREIGN KEY (NumDep) REFERENCES Departements (NumDep);

