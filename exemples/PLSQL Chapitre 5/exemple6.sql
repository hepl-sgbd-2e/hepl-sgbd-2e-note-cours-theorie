DECLARE
  TYPE TableEmployes IS TABLE OF Employes%ROWTYPE
    INDEX BY BINARY_INTEGER;
  LesEmployes TableEmployes;
BEGIN
  DBMS_OUTPUT.PUT_LINE(LesEmployes.COUNT);
  SELECT * BULK COLLECT INTO LesEmployes FROM Employes;
  DBMS_OUTPUT.PUT_LINE(LesEmployes.COUNT);
EXCEPTION
  WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
