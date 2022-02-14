DECLARE
    UnEmploye Emp%ROWTYPE;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Avant le bloc imbriqué');
    BEGIN
        SELECT * INTO UnEmploye FROM emp WHERE Empno = 1111;
    END;
    DBMS_OUTPUT.PUT_LINE('Après le bloc imbriqué');
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE
        ('Le nr de l''employé n''existe pas');
END;
