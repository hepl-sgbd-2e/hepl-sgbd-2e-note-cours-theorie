SELECT E1.Nom, E2.Nom, E1.Commune
FROM Employes E1,
     Employes E2
WHERE E1.Commune = E2.Commune
  AND E1.Nom < E2.Nom
ORDER BY E1.Nom;
