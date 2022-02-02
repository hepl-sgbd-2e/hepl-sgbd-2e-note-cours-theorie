SELECT NomDep
FROM Departements
WHERE NOT EXISTS
    (SELECT *
     FROM Employes
     WHERE NumDep = Departements.NumDep -- Ici il y a de la corrélation
       AND Bareme > 90000)
  AND EXISTS
    (SELECT *
     FROM Employes
     WHERE NumDep = Departements.NumDep);-- Ici il y a de la corrélation
