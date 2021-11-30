SELECT NumSecu,NOM,PRENOM
FROM Employes
WHERE NOT EXISTS
           (SELECT *
            FROM EmpPro
            WHERE EmpPro.NumSecu =
                      Employes.NumSecu);
