CREATE OR REPLACE PROCEDURE EmployeJob
    (Job Emp.Job%TYPE) AS
  CURSOR lesEmployes (x IN Emp.Job%TYPE) IS -- param x
    SELECT *
    FROM Emp
    WHERE job LIKE x || '%'; -- param x
BEGIN
  FOR unEmploye IN lesEmployes (EmployeJob.Job)
  LOOP
    DBMS_OUTPUT.PUT_LINE (unEmploye.ename);
  END LOOP;
EXCEPTION
  WHEN OTHERS THEN RAISE;
END;

EXECUTE EmployeJob('A');