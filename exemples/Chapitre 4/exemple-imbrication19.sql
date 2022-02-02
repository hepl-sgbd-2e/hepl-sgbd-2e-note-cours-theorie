SELECT NumSecu
FROM Employes
WHERE 0 =
      (SELECT COUNT(*)
       FROM EmpPro
       WHERE EmpPro.NumSecu = Employes.NumSecu);
