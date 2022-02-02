DECLARE
    TYPE TupleEmploye IS RECORD
                         (
                             EmpNo    Emp.Empno%TYPE,
                             Ename    Emp.Ename%TYPE,
                             Job      Emp.Job%TYPE,
                             Mgr      Emp.Mgr%TYPE,
                             HireDate Emp.HireDate%TYPE,
                             Sal      Emp.Sal%TYPE,
                             Comm     Emp.Comm%TYPE,
                             DeptNo   Emp.DeptNo%TYPE
                         );

    UnEmploye TupleEmploye;
BEGIN
    SELECT * INTO UnEmploye FROM emp WHERE empno = 7788;
    DBMS_OUTPUT.PUT_LINE('Le client 7788 : ' ||
                         UnEmploye.Ename || ' ' || UnEmploye.Job);
END;
