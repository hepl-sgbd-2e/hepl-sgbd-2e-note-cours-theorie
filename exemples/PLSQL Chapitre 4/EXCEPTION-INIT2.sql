DECLARE
    UnEmploye Emp%ROWTYPE;
    ExcRessourceBusy EXCEPTION;
    PRAGMA EXCEPTION_INIT (ExcRessourceBusy,-54);
-- autre session a exécuté la requête SELECT * FROM emp FOR UPDATE;
BEGIN
    SELECT *
    INTO UnEmploye
    FROM emp
    WHERE Empno = 7788
        FOR UPDATE NOWAIT;
    DBMS_OUTPUT.PUT_LINE(UnEmploye.Ename);
EXCEPTION
    WHEN ExcRessourceBusy THEN
        DBMS_OUTPUT.PUT_LINE('La ressource est occupée');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Le nr de l’employé n’existe pas');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;

