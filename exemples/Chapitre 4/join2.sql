SELECT Nom, NomPro, NomDep
FROM Employes,
     EmpPro,
     Projets,
     Departements
WHERE Employes.NumSecu = EmpPro.NumSecu
  AND EmpPro.NumPro = Projets.NumPro
  AND Employes.NumDep = Departements.NumDep;
