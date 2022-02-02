CREATE OR REPLACE PACKAGE GestionBd
IS
PROCEDURE AjouterUnAuteur
 (NumAuteur IN Auteurs.NumAuteur%TYPE,
  Nom IN Auteurs.Nom%TYPE,
  PreNom IN Auteurs.PreNom%TYPE);

PROCEDURE AjouterA_Ecrit
 (NumAuteur IN A_Ecrit.NumAuteur%TYPE,
  NumOuvrage IN A_Ecrit.NumOuvrage%TYPE); 
 
PROCEDURE SupprimerUnAuteur (NumAuteur IN Auteurs.NumAuteur%TYPE); 
END GestionBd;
/

