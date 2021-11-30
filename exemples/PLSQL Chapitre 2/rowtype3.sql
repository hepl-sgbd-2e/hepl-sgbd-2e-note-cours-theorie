<<Main>>
DECLARE
    Ename Emp.Ename%TYPE := 'SMITH';
BEGIN
    --On précise avec la portée de la variable. On est dans Main.
    DELETE FROM Emp WHERE Main.Ename = Ename;
END;