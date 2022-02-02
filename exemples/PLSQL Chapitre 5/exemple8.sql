DECLARE
  TYPE TableEmployes IS TABLE OF Employes%ROWTYPE
    INDEX BY BINARY_INTEGER;
  LesEmployes TableEmployes;
  i NUMBER;
BEGIN
  i := LesEmployes.LAST; -- Ici
  DBMS_OUTPUT.PUT_LINE('i'|| '/' || i || '/');
EXCEPTION
  WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;

