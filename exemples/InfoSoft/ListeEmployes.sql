CREATE OR REPLACE PROCEDURE P_EMPLOYES ( numdep employes.numdep%TYPE) AS 
  CURSOR lesEmployes (numdep IN employes.numdep%TYPE)  IS  
  SELECT * FROM employes WHERE UPPER(numdep) =  UPPER(LesEmployes.numdep) ;
  UnEmploye employes%ROWTYPE;
  BEGIN
   OPEN lesEmployes(P_employes.numdep);
    FETCH lesEmployes INTO UnEmploye;
 	WHILE lesEmployes%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE( unEmploye.numsecu ||' ' ||unEmploye.nom || ' ' || TO_CHAR(unEmploye.datenais,'DD/MM/YYYY') );
    FETCH lesEmployes INTO UnEmploye;
  END LOOP;
   IF lesEmployes%ROWCOUNT = 0 THEN DBMS_OUTPUT.PUT_LINE ('Pas de résultats avec le paramètre = ' || P_employes.numdep) ; END IF;
   CLOSE LesEmployes;
EXCEPTION
	WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END P_EMPLOYES;
/