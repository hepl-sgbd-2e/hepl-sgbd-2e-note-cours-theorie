BEGIN
  FOR Viteration IN 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE
           ('Viteration = ' || Viteration);
    Viteration := Viteration + 1; -- erreur
  END LOOP;
END;

-- ERREUR à la ligne 4 :
-- ORA-06550: Ligne 4, colonne 1:
-- PLS-00363: expression 'VITERATION' ne peut être utilisée comme cible d'affectation
