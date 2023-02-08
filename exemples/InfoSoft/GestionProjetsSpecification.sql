--Ch.Thiry
create or replace PACKAGE GESTIONPROJETS AS 

PROCEDURE AjouterProjet
 (Numpro IN Projets.numpro%TYPE, Nompro IN Projets.nompro%TYPE,
  Datedebut IN Projets.datedebut%TYPE, Site Projets.site%TYPE,Numdep Projets.numdep%TYPE);

PROCEDURE SupprimerProjet (Numpro IN Projets.numpro%TYPE);

END GESTIONPROJETS;