DECLARE
    TYPE t_employe IS TABLE OF Employes %ROWTYPE;
    CURSOR CurEmp IS -- 1
        SELECT *
        FROM Employes
        WHERE nom LIKE 'C%';
    TousLesEmployes t_employe;
BEGIN
    OPEN CurEmp; -- 2
    FETCH CurEmp BULK COLLECT INTO TousLesEmployes; -- 3
    FOR i in 1..TousLesEmployes.COUNT
        LOOP
            DBMS_OUTPUT.PUT_LINE(TousLesEmployes(i).nom); -- 3
        END LOOP;
    CLOSE CurEmp;
EXCEPTION
    WHEN INVALID_CURSOR
        THEN DBMS_OUTPUT.PUT_LINE('Erreur Curseur CurEmp');
END;
