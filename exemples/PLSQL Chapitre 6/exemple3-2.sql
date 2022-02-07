DECLARE
    UnDepartement  Dept%ROWTYPE;
    UnDepartement2 Dept%ROWTYPE;
BEGIN
    IF UnDepartement.Deptno = UnDepartement2.Deptno
        AND UnDepartement.Dname = UnDepartement.Dname
        AND UnDepartement.Loc = UnDepartement.Loc
    THEN
        DBMS_OUTPUT.PUT_LINE('OK');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NOK');
    END IF;
END ;
