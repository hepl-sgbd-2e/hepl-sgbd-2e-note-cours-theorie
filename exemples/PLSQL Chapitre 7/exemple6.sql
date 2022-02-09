CREATE OR REPLACE FUNCTION Rechercher(NumSecu IN Employes.NumSecu%TYPE)
    RETURN Employes%ROWTYPE
AS
    UnEmploye Employes%ROWTYPE;
BEGIN
    SELECT * INTO UnEmploye FROM Employes WHERE NumSecu = Rechercher.NumSecu;
    RETURN UnEmploye;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Aucun employé trouvé');
        RETURN NULL;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERREUR : ' || SQLCODE || SQLERRM);
        RETURN NULL;
END Rechercher;
