DECLARE
    TYPE TypeLesEmployes
        IS TABLE OF Emp%ROWTYPE
        INDEX BY BINARY_INTEGER;
    TableEmployes TypeLesEmployes;
BEGIN
    -- On charge dans le tableau le résultat d'une requête !
    SELECT * BULK COLLECT
    INTO TableEmployes
    FROM Emp;
EXCEPTION
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
