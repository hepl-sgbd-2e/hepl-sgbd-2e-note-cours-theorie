CREATE TABLE empTemp AS
SELECT *
FROM emp;
-- les éléments de la collection possèdent des indices consécutifs
DECLARE
    TYPE TableNrEmployes IS TABLE OF Emp.Empno%TYPE
        INDEX BY BINARY_INTEGER;
    LesNrEmployes TableNrEmployes;
BEGIN
    LesNrEmployes(1) := 1234;
    LesNrEmployes(2) := 9999; -- employé 9999 n’existe pas
    LesNrEmployes(3) := 7934;
    FORALL i IN LesNrEmployes.FIRST..LesNrEmployes.LAST
        DELETE FROM empTemp WHERE empno = LesNrEmployes(i);
    COMMIT;
END;
