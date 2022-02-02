SELECT Nom, DateNais,
  (CURRENT_DATE - DateNais) YEAR TO MONTH AS Age
FROM Employes, Departements
WHERE Employes.NumDep = Departements.NumDep
  AND NomDep = 'Applications telecom'
ORDER BY Age DESC;

--Ou ORDER BY 3 DESC
