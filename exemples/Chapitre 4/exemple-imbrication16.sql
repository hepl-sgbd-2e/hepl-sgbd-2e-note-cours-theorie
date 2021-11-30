SELECT Nom, Prenom
FROM Employes E1
WHERE Bareme >
      (SELECT AVG(bareme)
       FROM Employes E2
       WHERE E1.NumDep = E2.NumDep);
