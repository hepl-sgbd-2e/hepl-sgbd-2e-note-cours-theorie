declare
    TYPE TypeDept IS RECORD
                     (
                         DeptNo Dept.DeptNo%TYPE,-- Type
                         Dname  Dept.Danme%TYPE,
                         Loc    Dept.Loc%TYPE
                     );
    UnDepartement TypeDept;
BEGIN
    null;
END;
