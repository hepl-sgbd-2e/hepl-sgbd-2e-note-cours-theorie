SELECT NumDep, MAX(AVG(Bareme)) AS MaxAvg
FROM Employes
GROUP BY NumDep;
-- Provoque une erreur ! MAX(AVG(Bareme)) - ORA-00937

SELECT NumDep, AVG(Bareme) AS MaxAvg
FROM Employes
GROUP BY NumDep
HAVING AVG(Bareme) = (SELECT MAX(AVG(Bareme))
                      FROM Employes
                      GROUP BY NumDep);


