BEGIN
    FOR Employe IN
        (SELECT *
         FROM Emp
         WHERE job LIKE 'A%')
        LOOP
            DBMS_OUTPUT.PUT_LINE(Employe.nom);
        END LOOP;
END;
