DECLARE
    UnDepartement  Dept%ROWTYPE;
    UnDepartement2 Dept%ROWTYPE;
BEGIN
    -- ERREUR
    IF UnDepartement = UnDepartement2 -- ORA-06550
    THEN
        DBMS_OUTPUT.PUT_LINE('OK');
    END IF;
END;