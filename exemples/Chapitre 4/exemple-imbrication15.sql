SELECT Nom
FROM Employes E1
WHERE NumDep <> (SELECT NumDep
                 FROM Employes
                 WHERE NumSecu = E1.NumChef);

SELECT Nom
FROM Employes E1
WHERE COALESCE(NumDep, 'X') <>
              (SELECT COALESCE (NumDep, 'X')
               FROM Employes
               WHERE NumSecu = E1.NumChef);
