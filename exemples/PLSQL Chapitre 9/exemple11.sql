DECLARE
    CURSOR CurEmploye IS
        SELECT *
        FROM Emp
            FOR UPDATE OF sal; -- Ici
BEGIN
    FOR UnEmploye IN CurEmploye
        LOOP
            IF UnEmploye.job = 'ANALYST' THEN
                UPDATE Emp
                SET sal = sal * 1.1
                WHERE CURRENT OF CurEmploye; -- Ici
            END IF;
        END LOOP;
    COMMIT; -- Ici
END;
