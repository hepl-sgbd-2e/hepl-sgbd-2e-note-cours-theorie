DECLARE
    UnDepartement Dept%ROWTYPE;
BEGIN
    UnDepartement.Deptno := 9;
    UnDepartement.Dname := 'Rennequins';
    UnDepartement.Loc := 'Liège';
    UPDATE Dept SET ROW = UnDepartement WHERE Deptno = 9;
    IF SQL%NOTFOUND
    THEN
        DBMS_OUTPUT.PUT_LINE('Pas de MAJ');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Mise à jour OK');
    END IF;
    COMMIT;
END;
