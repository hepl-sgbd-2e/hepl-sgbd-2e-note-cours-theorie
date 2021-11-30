DECLARE
  Viteration NUMBER ;
BEGIN
  FOR Viteration IN 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE
           ('Viteration = ' || Viteration);
  END LOOP;
  DBMS_OUTPUT.PUT_LINE (
    'Valeur de Viteration après la boucle = '
    || '<' || Viteration || '>');
END;