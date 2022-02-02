SELECT Nom, Prenom
FROM Employes
WHERE (NumSecu, 10, 'p10349') IN
      (SELECT NumSecu, Heures, NumPro
       FROM EmpPro);
