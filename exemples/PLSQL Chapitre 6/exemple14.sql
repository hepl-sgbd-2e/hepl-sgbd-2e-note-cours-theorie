DECLARE
    TYPE TableNrEmployes IS TABLE OF Emp.Empno%TYPE INDEX BY BINARY_INTEGER;
    LesNrEmployes TableNrEmployes;
    TYPE TableEmployes IS TABLE OF Emp%ROWTYPE
        INDEX BY BINARY_INTEGER;
    LesEmployes   TableEmployes;
BEGIN
    LesNrEmployes(1) := 1234;
    LesNrEmployes(2) := 9999; -- employé 9999 n’existe pas
    LesNrEmployes(3) := 7934;
    FORALL i IN LesNrEmployes.FIRST..LesNrEmployes.LAST
        DELETE
        FROM empTemp
        WHERE empno = LesNrEmployes(i)
              -- Ici
        RETURNING empno, ename,job,mgr,hiredate,sal,comm,deptno BULK COLLECT INTO LesEmployes;
    DBMS_OUTPUT.PUT_LINE('Deleted ' || SQL%ROWCOUNT || ' tuple(s)');
    COMMIT;
    FOR i IN LesNrEmployes.FIRST..LesNrEmployes.LAST
        LOOP
            IF SQL%BULK_ROWCOUNT(i) = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Employé non effacé ' || LesNrEmployes(i));
            END IF;
        END LOOP;
    IF LesEmployes.FIRST IS NOT NULL THEN
        FOR i IN LesEmployes.FIRST..LesEmployes.LAST
            LOOP
                DBMS_OUTPUT.PUT_LINE('Employé effacé ' || LesEmployes(i).Empno || ' ' ||
                                     LesEmployes(i).Ename);
            END LOOP;
    END IF;
EXCEPTION
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
