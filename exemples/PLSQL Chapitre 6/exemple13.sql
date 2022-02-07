DECLARE
    TYPE TableNrDept IS TABLE OF Dept.Deptno%TYPE INDEX BY BINARY_INTEGER;
    LesNrDept TableNrDept;
BEGIN
    LesNrDept(1) := 50;
    LesNrDept(2) := 40; -- département 40 existe
    LesNrDept(3) := 60;
    FORALL i IN LesNrDept.FIRST..LesNrDept.LAST SAVE EXCEPTIONS
        INSERT INTO Dept (deptno, dname) VALUES (LesNrDept(i), 'Dept' || LesNrDept(i));
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN COMMIT;
    FOR i IN 1 .. SQL%BULK_EXCEPTIONS.COUNT
        LOOP
            DBMS_OUTPUT.PUT_LINE('Erreur pour le nr de dépt ' ||
                                 LesNrDept(SQL%BULK_EXCEPTIONS(i).ERROR_INDEX) || ' ' ||
                                 SQLERRM(-SQL%BULK_EXCEPTIONS(i).ERROR_CODE));
        END LOOP;
end;
