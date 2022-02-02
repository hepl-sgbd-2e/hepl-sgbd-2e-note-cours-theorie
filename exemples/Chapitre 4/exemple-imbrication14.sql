SELECT Nom, Prenom
FROM Employes
WHERE ('10', 'p10349') IN
      (SELECT Heures, NumPro
       FROM EmpPro
       WHERE EmpPro.NumSecu =
             Employes.NumSecu);
