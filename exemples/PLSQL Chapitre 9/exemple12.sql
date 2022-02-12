BEGIN
    UPDATE Emp
    SET Job = 'A. S.'
    WHERE ename = 'BOND';
    IF SQL%NOTFOUND THEN -- NOTFOUND
        INSERT INTO Emp
            (EmpNo, Ename, job, HireDate, sal)
        VALUES ('007', 'BOND', 'A. S.', CURRENT_DATE, 10000);
    END IF;
END;
