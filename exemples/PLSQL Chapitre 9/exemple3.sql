DECLARE
    CURSOR CurEmp IS -- 1
        SELECT *
        FROM Employes
        WHERE nom LIKE 'C%';
    UnEmploye Employes%ROWTYPE;
BEGIN
    OPEN CurEmp; -- 2
    FETCH CurEmp INTO UnEmploye; -- 3
    WHILE CurEmp%FOUND
        LOOP
            DBMS_OUTPUT.PUT_LINE(UnEmploye.nom);
            FETCH CurEmp INTO UnEmploye; -- 3
        END LOOP; -- 4
    CLOSE CurEmp;
EXCEPTION
    WHEN INVALID_CURSOR
        THEN DBMS_OUTPUT.PUT_LINE('Erreur Curseur CurEmp');
END ;
