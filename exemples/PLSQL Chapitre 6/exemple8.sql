DECLARE
    TYPE TableEmployes IS TABLE OF Emp%ROWTYPE
        INDEX BY BINARY_INTEGER;
    LesEmployes TableEmployes;
BEGIN
    -- Ici BULK COLLECT INTO
    SELECT * BULK COLLECT INTO LesEmployes FROM Emp WHERE Deptno = 10;
    IF LesEmployes.FIRST IS NOT NULL THEN
        FOR i IN LesEmployes.FIRST..LesEmployes.LAST
            LOOP
                DBMS_OUTPUT.PUT_LINE(LesEmployes(i).Ename);
            END LOOP;
    END IF;
END;
