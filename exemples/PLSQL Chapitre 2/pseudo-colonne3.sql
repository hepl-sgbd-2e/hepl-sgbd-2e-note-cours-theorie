DECLARE
    TYPE TableEmployes IS TABLE OF Emp%ROWTYPE;
    LesEmployes TableEmployes;
BEGIN
    SELECT * BULK COLLECT
    INTO LesEmployes
    FROM Emp
    WHERE ROWNUM < 3
    ORDER BY Ename;
    DBMS_OUTPUT.PUT_LINE('Nbre Employes : '
        || LesEmployes.COUNT);
    DBMS_OUTPUT.PUT_LINE('ROWNUM 1 : '
        || LesEmployes(1).Ename);
    DBMS_OUTPUT.PUT_LINE('ROWNUM 2 : '
        || LesEmployes(2).Ename);
END;
