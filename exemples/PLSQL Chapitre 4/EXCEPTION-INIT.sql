DECLARE
    ExcCleEtrangere EXCEPTION;
    PRAGMA EXCEPTION_INIT (ExcCleEtrangere,-2291);
BEGIN
    -- le numéro d'employé 1000 n'existe pas
    INSERT INTO Emp (Empno, Ename, HireDate, Mgr) VALUES (SequenceEmp.NEXTVAL, USER, CURRENT_DATE, 1000);
    COMMIT;
EXCEPTION
    WHEN ExcCleEtrangere THEN DBMS_OUTPUT.PUT_LINE
        ('Contrainte d''intégrité sur Mgr est violée');
END;
-- Contrainte d'intégrité sur Mgr est violée
