SELECT Employes.numsecu, nom
FROM Employes
         LEFT OUTER JOIN EmpPro
                         ON Employes.NumSecu = EmpPro.NumSecu
WHERE EmpPro.NumSecu IS NULL;
