DECLARE
  VTest BOOLEAN;      --Vtest est NULL

BEGIN
  IF Vtest = TRUE
	THEN
	  DBMS_OUTPUT.PUT_LINE('Vtest TRUE');
  ELSE
    DBMS_OUTPUT.PUT_LINE ('Vtest FALSE');
  END IF;
END;
-- Vtest FALSE
-- Résultat compréhensible, mais non souhaitable.