DECLARE
  VGrade CHAR(3);

BEGIN
  CASE
 	  WHEN VGrade = 'PGD' -- ici une expression booléenne
		THEN DBMS_OUTPUT.PUT_LINE ('Plus gd dis');
 	  WHEN VGrade = 'GRD'
		THEN DBMS_OUTPUT.PUT_LINE ('Gd dis');
	  WHEN VGrade = 'DIS'
		THEN DBMS_OUTPUT.PUT_LINE ('Dis');
	  WHEN VGrade = 'SAT'
		THEN DBMS_OUTPUT.PUT_LINE ('Satis');
	  ELSE DBMS_OUTPUT.PUT_LINE ('Echec');
  END CASE;
END;
