CREATE OR REPLACE PROCEDURE Afficher(NumSecu IN Employes.NumSecu%TYPE)
AS
    UnEmploye Employes%ROWTYPE;
BEGIN
    SELECT * INTO UnEmploye FROM Employes WHERE NumSecu = Afficher.NumSecu;
    DBMS_OUTPUT.PUT_LINE('Nom : ' || UnEmploye.Nom);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Aucun employé trouvé');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERREUR : ' || SQLCODE || SQLERRM);
END Afficher;
