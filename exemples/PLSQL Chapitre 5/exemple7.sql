DECLARE
    TYPE TableEmployes IS TABLE OF Employes%ROWTYPE
        INDEX BY BINARY_INTEGER;
    LesEmployes TableEmployes;
BEGIN
    SELECT * BULK COLLECT INTO LesEmployes FROM Employes;
    FOR i IN LesEmployes.FIRST..LesEmployes.LAST
        LOOP
            DBMS_OUTPUT.PUT_LINE(i || ' ' || LesEmployes(i).nom);
        END LOOP;
EXCEPTION
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
