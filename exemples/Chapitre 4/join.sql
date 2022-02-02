SELECT Nom, NomPro
FROM Employes,
     EmpPro,
     Projets
WHERE Employes.NumSecu = EmpPro.NumSecu
  AND EmpPro.NumPro = Projets.NumPro;
