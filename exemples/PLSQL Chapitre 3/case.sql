DECLARE
  VTest BOOLEAN;
BEGIN
  CASE VTest
 	  WHEN TRUE THEN
			DBMS_OUTPUT.PUT_LINE ('Vtest TRUE');
	  WHEN FALSE THEN
			DBMS_OUTPUT.PUT_LINE ('Vtest FALSE');
	  ELSE DBMS_OUTPUT.PUT_LINE ('Vtest UNKNOWN');
  END CASE;
END;
-- Vtest UNKNOWN