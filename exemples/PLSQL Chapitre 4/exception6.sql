-- Il existe un employé avec un numéro 1234
BEGIN
    INSERT INTO Emp (Empno, Ename, HireDate)
    VALUES (1234, 'Dupont', CURRENT_DATE);
    COMMIT;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE
            ('Numéro d''employé existe déjà !');
END;
