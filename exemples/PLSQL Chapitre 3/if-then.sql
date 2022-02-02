DECLARE
 Vtest NUMBER;-- Vtest est NULL
BEGIN
	IF Vtest >= 0
	  THEN DBMS_OUTPUT.PUT_LINE ('Vtest est positif');
    ELSE DBMS_OUTPUT.PUT_LINE ('Vtest n''est pas positif');
 	END IF;
	IF Vtest < 0
  	  THEN DBMS_OUTPUT.PUT_LINE ('Vtest est négatif');
 	  ELSE DBMS_OUTPUT.PUT_LINE ('Vtest n''est pas négatif');
 	END IF;
END;
-- Vtest N'est PAS positif
-- Vtest N'est PAS négatif
