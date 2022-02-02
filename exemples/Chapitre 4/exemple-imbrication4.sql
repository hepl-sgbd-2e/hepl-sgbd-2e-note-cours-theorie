SELECT NomDep
FROM Departements
WHERE NumDep NOT IN (SELECT NumDep
                     FROM Employes
                     WHERE Bareme < 60000);
