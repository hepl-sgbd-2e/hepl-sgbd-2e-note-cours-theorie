DECLARE
    VRowid ROWID;
    VSal   Emp.Sal%TYPE;
BEGIN
    SELECT Sal, ROWID
    INTO VSal, VRowid
    FROM emp
    WHERE Empno = 7369;
    VSal := 1000;
    UPDATE Emp SET sal = VSal WHERE rowid = VRowid;
END;
