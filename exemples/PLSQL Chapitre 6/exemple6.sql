DECLARE
    UnEmploye Employe%ROWTYPE;
BEGIN
    UPDATE emp
    SET sal = sal * 1.1
    WHERE job = 'PRESIDENT'
    RETURNING Ename, Sal INTO UnEmploye; -- ici
    IF SQL%FOUND
    THEN
        DBMS_OUTPUT.PUT_LINE
            (UnEmploye.Ename || ' ' || UnEmploye.Sal);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Pas Maj');
    END IF;
    COMMIT;
END;
