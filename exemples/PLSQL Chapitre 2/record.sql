DECLARE
   TYPE TupleEmploye IS RECORD (
    EmpNo	NUMBER(4),
    Ename	VARCHAR2(10),
    Job		CHAR(9),
    Mgr		NUMBER(4),
    HireDate	DATE,
    Sal		NUMBER(7,2),
    Comm	NUMBER(7,2),
    DeptNo	NUMBER(2));
    UnEmploye TupleEmploye; -- On se sert du record
BEGIN

EXCEPTION

END;
