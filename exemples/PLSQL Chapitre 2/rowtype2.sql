DECLARE
    Ename Emp.Ename%TYPE := 'SCOTT';
BEGIN
    -- Le nom de la colonne l'emporte sur le nom de la variable.
    DELETE FROM Emp WHERE Ename = Ename; -- toujours VRAI
END ;

