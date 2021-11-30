SELECT Nom, Prenom
FROM Employes
WHERE (SELECT SUM(Heures)
       FROM EmpPro
       WHERE EmpPro.NumSecu = Employes.NumSecu)
          =
      (SELECT MIN(SUM(Heures))
       FROM EmpPro
       GROUP BY NumSecu);
