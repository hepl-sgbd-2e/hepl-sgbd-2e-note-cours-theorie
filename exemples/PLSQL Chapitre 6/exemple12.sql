DECLARE
    TYPE TableNrDept IS TABLE OF Dept.Deptno%TYPE
        INDEX BY BINARY_INTEGER;
    LesNrDept TableNrDept;
BEGIN
    LesNrDept(1) := 50;
    LesNrDept(2) := 40; -- département 40 existe
    LesNrDept(3) := 60;
    FORALL i IN LesNrDept.FIRST..LesNrDept.LAST
        INSERT INTO Dept(deptno, dname)
        VALUES (LesNrDept(i), 'Dept' || LesNrDept(i));
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN -- Gestion médiocre...
        COMMIT;
END ;
