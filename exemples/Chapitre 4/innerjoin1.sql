SELECT Nom, NomPro AS NomProjet
FROM Employes
         INNER JOIN EmpPro USING (NumSecu)
         INNER JOIN Projets USING (NumPro);
