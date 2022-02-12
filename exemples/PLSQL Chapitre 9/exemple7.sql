DECLARE
    CURSOR lesEmployes IS
        SELECT *
        FROM Emp
        WHERE sal > 2500;
BEGIN
    FOR UnEmploye IN lesEmployes
        LOOP
            DBMS_OUTPUT.PUT_LINE(lesEmployes%ROWCOUNT
                || ' ' || unEmploye.ename
                || ' ' || unEmploye.job);
        END LOOP;
END;
