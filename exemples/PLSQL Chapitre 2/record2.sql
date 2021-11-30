DECLARE
    TYPE TupleEmploye IS RECORD
                         (
                             EmpNo    NUMBER(4),
                             Ename    VARCHAR2(10),
                             Job      CHAR(9),
                             Mgr      NUMBER(4),
                             HireDate DATE,
                             Sal      NUMBER(7, 2),
                             Comm     NUMBER(7, 2),
                             DeptNo   NUMBER(2)
                         );
    UnEmploye TupleEmploye;
BEGIN
    SELECT * INTO UnEmploye FROM emp WHERE empno = 7788;
    DBMS_OUTPUT.PUT_LINE('Le client 7788 : ' || UnEmploye.Ename
        || ' ' || UnEmploye.Job);
END;
