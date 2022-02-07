DECLARE
    UnDepartement  Dept%ROWTYPE;
    UnDepartement2 Dept%ROWTYPE;
BEGIN
    IF COALESCE(UnDepartement.Deptno, 0) =
       COALESCE(UnDepartement2.Deptno, 0)
        AND COALESCE(UnDepartement.Dname, 'X') =
            COALESCE(UnDepartement.Dname, 'X')
        AND COALESCE(UnDepartement.Loc, 'X') =
            COALESCE(UnDepartement.Loc, 'X')
    THEN
        DBMS_OUTPUT.PUT_LINE('OK');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NOK');
    END IF;
END;
