SET SERVEROUTPUT ON
DECLARE
    UnEmploye Employes%ROWTYPE;
BEGIN
    UnEmploye := Rechercher('121212');
    DBMS_OUTPUT.PUT_LINE('Nom : ' || UnEmploye.Nom);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERREUR : ' || SQLCODE || SQLERRM);
END;
