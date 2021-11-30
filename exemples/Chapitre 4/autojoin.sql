SELECT E1.Nom, ' a pour chef ', E2.Nom
FROM Employes E1,
     Employes E2 -- même table
WHERE COALESCE(E1.NumChef, E1.NumSecu)
          = E2.NumSecu
ORDER BY E2.Nom;
