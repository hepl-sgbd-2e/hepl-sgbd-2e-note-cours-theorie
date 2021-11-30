DECLARE
    UnEmploye Emp%ROWTYPE;
    -- il existe 2 employés Scott
BEGIN
    SELECT * INTO UnEmploye FROM emp WHERE Ename = 'SCOTT';
    DBMS_OUTPUT.PUT_LINE(UnEmploye.Job);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Le nom n''existe pas');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Plus d''un employé SCOTT');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
