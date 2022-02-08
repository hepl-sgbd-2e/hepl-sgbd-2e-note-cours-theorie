DECLARE
    UnEmploye Emp%ROWTYPE;
BEGIN
    SELECT * INTO UnEmploye FROM Emp WHERE Empno = 7902;
    DBMS_OUTPUT.PUT_LINE(UnEmploye.Ename);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Pas d''employé');
END;