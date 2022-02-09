DECLARE
  UnEmploye Employes%ROWTYPE;
BEGIN
  UnEmploye := Rechercher ('111111');
  DBMS_OUTPUT.PUT_LINE ('Nom : ' || UnEmploye.Nom);
EXCEPTION
  WHEN OTHERS THEN -- On peut tester le code de l'exception SQLCODE
    DBMS_OUTPUT.PUT_LINE ('ERREUR : '|| SQLCODE || ' ' || SQLERRM);
END;
