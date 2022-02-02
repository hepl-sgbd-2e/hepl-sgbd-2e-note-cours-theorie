DECLARE
    UnEmploye Emp%ROWTYPE;
BEGIN
    SELECT * INTO UnEmploye FROM emp WHERE empno = 7788;
    DBMS_OUTPUT.PUT_LINE('Le client 7788 : ' ||
                         UnEmploye.Ename || ' ' || UnEmploye.Job);
END;