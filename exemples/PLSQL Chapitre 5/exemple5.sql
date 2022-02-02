DECLARE
  TYPE TableEmployes IS TABLE OF Employes%ROWTYPE
	  INDEX BY BINARY_INTEGER;
  LesEmployes TableEmployes;
BEGIN
  SELECT * BULK COLLECT INTO LesEmployes FROM Employes;
  IF LesEmployes.EXISTS(25) -- Test sur l'indice
    THEN  DBMS_OUTPUT.PUT_LINE('élément existe');
    ELSE  DBMS_OUTPUT.PUT_LINE('élément n''existe pas');
  END IF;
EXCEPTION
  WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;

