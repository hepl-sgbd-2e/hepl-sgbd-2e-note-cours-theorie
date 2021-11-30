CREATE SEQUENCE SequenceEmp START WITH 1000;
DECLARE
    Ename Emp.Ename%TYPE;
    ExcEnameNULL EXCEPTION;
BEGIN
    IF Ename IS NULL THEN RAISE ExcEnameNULL; END IF;
    INSERT INTO Emp (Empno, Ename, HireDate) VALUES (SequenceEmp.NEXTVAL, Ename, CURRENT_DATE);
    COMMIT;
EXCEPTION
    WHEN ExcEnameNULL THEN
        DBMS_OUTPUT.PUT_LINE('Nom de l''employé est inconnu');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;

-- Nom de l'employé est inconnu
-- Procédure PL/SQL terminée avec succès.
