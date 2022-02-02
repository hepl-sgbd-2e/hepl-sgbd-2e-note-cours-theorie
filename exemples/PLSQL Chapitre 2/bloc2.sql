DECLARE
  VNotNull	INTEGER NOT NULL := 1;
  Vconst 	CONSTANT INTEGER := 1;
BEGIN
  DBMS_OUTPUT.PUT_LINE('VNotNull : ' || VNotNull);
  DBMS_OUTPUT.PUT_LINE('Vconst : ' || Vconst);
  VNotNull := 0;
  -- PLS-00363: expression 'VCONST' cannot be used as an assignment target
  Vconst := 0;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
