DECLARE
    UnDepartement Dept%ROWTYPE;
BEGIN
    UnDepartement.Deptno := 9;
    UnDepartement.Dname := 'Inpres';
    UnDepartement.Loc := 'Seraing';
    INSERT INTO Dept VALUES UnDepartement;
    COMMIT;
END;
