SELECT NomDep
FROM Departements
WHERE EXISTS
          (SELECT *
           FROM Employes
           WHERE NumDep = Departements.NumDep
             AND Bareme > 90000);
