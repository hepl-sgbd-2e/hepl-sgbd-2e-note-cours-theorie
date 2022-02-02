CREATE OR REPLACE PROCEDURE ListeAO AS
CURSOR CurAuteursOuvrages IS
SELECT RPAD(nom,15,' ') as nom,RPAD(prenom,10,' ') as prenom,
RPAD(titre,40,' ') as titre	 FROM auteurs,ouvrages,a_ecrit
 WHERE auteurs.NumAuteur=a_ecrit.NumAuteur
 	AND ouvrages.NumOuvrage=a_ecrit.NumOuvrage
ORDER BY titre;
BEGIN
	FOR UnTuple IN  CurAuteursOuvrages
	LOOP
	DBMS_OUTPUT.PUT_LINE(UnTuple.Titre||UnTuple.Nom ||UnTuple.Prenom);
	END LOOP;
EXCEPTION
	WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
