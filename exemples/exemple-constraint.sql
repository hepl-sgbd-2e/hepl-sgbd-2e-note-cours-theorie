CREATE TABLE medecins (
     NrMedecin CHAR(11) 
         CONSTRAINT CPMedecins PRIMARY KEY,  
     Nom VARCHAR2(20)
         CONSTRAINT MedecinsNomNN CHECK (Nom IS NOT NULL)
         CONSTRAINT MedecinsNomLg CHECK (length(Nom) >= 2), 
);