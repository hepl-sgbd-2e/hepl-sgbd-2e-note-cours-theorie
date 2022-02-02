SELECT MAX (AVG(Bareme))
FROM Employes;
--Provoque une erreur !!!

SELECT MAX(AVG(Bareme)) AS MaxAvg
FROM Employes
GROUP BY NumDep;
--OU
SELECT MAX(Temp.Moyenne)
FROM (SELECT AVG(Bareme) AS Moyenne
      FROM Employes
      GROUP BY NumDep) Temp;
