SELECT Employes.numsecu, nom
FROM Employes
         LEFT OUTER JOIN EmpPro
                         ON Employes.NumSecu = EmpPro.NumSecu
WHERE EmpPro.NumSecu IS NULL;

SELECT NumSecu
FROM Employes MINUS -- en Oracle 10g
SELECT NumSecu
FROM EmpPro;
