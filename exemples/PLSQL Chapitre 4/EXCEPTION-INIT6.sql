DECLARE
    UnEmploye Emp%ROWTYPE;
BEGIN
    BEGIN
        SELECT * INTO UnEmploye FROM emp WHERE Empno = 1111;
        DBMS_OUTPUT.PUT_LINE('Trouvé ' || UnEmploye.Ename);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Pas de numéro 1111');
    END;
    DBMS_OUTPUT.PUT_LINE('Après le bloc imbriqué');
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE
        ('Le nr de l''employé n''existe pas');
END;
