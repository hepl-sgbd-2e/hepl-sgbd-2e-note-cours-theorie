-- Ch.Thiry
CREATE OR REPLACE PACKAGE BODY GestionProjets AS

PROCEDURE AjouterProjet
 (Numpro IN Projets.numpro%TYPE, Nompro IN Projets.nompro%TYPE,
  Datedebut IN Projets.datedebut%TYPE, Site Projets.site%TYPE,Numdep Projets.numdep%TYPE)
  AS
BEGIN
  INSERT INTO Projets  VALUES (Numpro,Nompro,TO_DATE(Datedebut,'DD/MM/YYYY'),Site,Numdep);
  COMMIT;
EXCEPTION
    WHEN OTHERS THEN RAISE;
END AjouterProjet;

PROCEDURE SupprimerProjet (Numpro IN Projets.numpro%TYPE)
AS
BEGIN
 DELETE FROM projets WHERE Numpro = SupprimerProjet.Numpro;
 COMMIT;
EXCEPTION
    WHEN OTHERS THEN RAISE;
END SupprimerProjet; 
 
END GestionProjets;

