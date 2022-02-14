DECLARE
  UnDepartement  Dept%ROWTYPE;
  VDeptno        Dept.Deptno%TYPE;
BEGIN
    -- C'est avec le "." qu'on accède à la propriété
  UnDepartement.Deptno := 99;
  UnDepartement.Dname := 'Inpres';
  VDeptno := UnDepartement.Deptno;
  DBMS_OUTPUT.PUT_LINE ('Nom département : ' ||
            UnDepartement.Dname);
END;
