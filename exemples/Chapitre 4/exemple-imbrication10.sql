SELECT NumSecu
FROM Employes
WHERE Bareme > ALL (SELECT Bareme
                    FROM Employes
                    WHERE NumDep = 'd00002');
