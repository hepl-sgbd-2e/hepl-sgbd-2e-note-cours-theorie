DECLARE
  vOutside NUMBER ;
BEGIN
  FOR vOutside IN 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE
           ('vOutside = ' || vOutside);
  END LOOP;
  DBMS_OUTPUT.PUT_LINE (
    'Valeur de vOutside après la boucle = '
    || '<' || vOutside || '>');
END;