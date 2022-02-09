CREATE OR REPLACE FUNCTION Rechercher(NumSecu IN Employes.NumSecu%TYPE)
    RETURN Employes%ROWTYPE
AS
    UnEmploye Employes%ROWTYPE;
BEGIN
    SELECT *
    INTO UnEmploye
    FROM Employes
    WHERE NumSecu = Rechercher.NumSecu;
    RETURN UnEmploye;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Aucun employé trouvé');
    WHEN OTHERS THEN
        RAISE;
END Rechercher;
