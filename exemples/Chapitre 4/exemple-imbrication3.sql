SELECT NumSecu
FROM Employes
WHERE NumSecu NOT IN (SELECT NumSecu
                      FROM EmpPro);
