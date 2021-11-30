DECLARE
    UnEmploye Emp%ROWTYPE;
    -- il n'existe pas d'employé avec un nr 1111
BEGIN
    SELECT * INTO UnEmploye FROM emp WHERE Empno = 1111;
    DBMS_OUTPUT.PUT_LINE(UnEmploye.Ename);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE
            ('Le nr de l''employé n''existe pas');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
