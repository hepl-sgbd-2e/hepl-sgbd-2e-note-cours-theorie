SELECT NumSecu
FROM Employes
WHERE NumSecu <> ALL (SELECT NumSecu
                      FROM EmpPro);
