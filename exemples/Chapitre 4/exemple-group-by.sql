SELECT NumDep, COUNT(*) NbEmp
FROM Employes
GROUP BY NumDep;

--Mieux :
SELECT COALESCE(NumDep, 'Inconnu') NrDep,
       COUNT(*)                    NbEmp
FROM Employes
GROUP BY NumDep;
