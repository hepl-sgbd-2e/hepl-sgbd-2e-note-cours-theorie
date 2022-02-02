DECLARE
    UnEmploye Emp%ROWTYPE;
    -- le numéro d'employé 1111 n'existe pas
BEGIN
    SELECT *
    INTO UnEmploye
    FROM emp
    WHERE Empno = 1111;
    DBMS_OUTPUT.PUT_LINE(UnEmploye.Ename);
END;

-- ERREUR à la ligne 1 :
-- ORA-01403: Aucune donnée trouvée
-- ORA-06512: à ligne 5
