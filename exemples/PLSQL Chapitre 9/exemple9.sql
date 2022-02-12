CREATE OR REPLACE PROCEDURE EmployeJob(Job Emp.Job%TYPE) AS
    CURSOR lesEmployes (x IN Emp.Job%TYPE) IS -- param x
        SELECT *
        FROM Emp
        WHERE job LIKE x || '%';
    UnEmploye Emp%ROWTYPE;
BEGIN
    OPEN lesEmployes(EmployeJob.Job);
    FETCH lesEmployes INTO unEmploye
    WHILE lesEmployes%FOUND
        LOOP
            DBMS_OUTPUT.PUT_LINE(lesEmployes%ROWCOUNT ||
                                 ' ' || unEmploye.ename);
            FETCH lesEmployes INTO UnEmploye;
        END LOOP;
    CLOSE lesEmployes;
END;
