DECLARE
    TYPE TableNrEmployes IS TABLE OF Emp.Empno%TYPE
        INDEX BY BINARY_INTEGER;
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
        RETURNING empno,ename,job,mgr,hiredate,sal,comm,deptno BULK COLLECT INTO LesEmployes;
    DBMS_OUTPUT.PUT_LINE('Deleted ' || SQL%ROWCOUNT || 'tuple(s)');
    COMMIT;
end;