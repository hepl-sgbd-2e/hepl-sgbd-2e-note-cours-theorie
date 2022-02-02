-- indices non consécutifs
DECLARE
  TYPE TableEmployes IS TABLE OF Employes.bareme%TYPE
    INDEX BY VARCHAR2(10);
  LesEmployes TableEmployes;
  i VARCHAR2(10);
BEGIN
  i := LesEmployes.FIRST;
  WHILE i IS NOT NULL LOOP
    DBMS_OUTPUT.PUT_LINE(i || ' : ' || LesEmployes(i));
    i := LesEmployes.NEXT(i); -- Ici
  END LOOP;
EXCEPTION
  WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
