CREATE TABLE Dept
(
    DeptNo NUMBER(2)
        CONSTRAINT CPDept PRIMARY KEY,
    Dname  VARCHAR2(14),
    Loc    VARCHAR2(13)
);

declare
    TYPE TypeDept IS RECORD
                     (
                         DeptNo NUMBER,
                         Dname  VARCHAR2(14),
                         Loc    VARCHAR2(13)
                     );
    UnDepartement TypeDept;
BEGIN
    null;
END;
