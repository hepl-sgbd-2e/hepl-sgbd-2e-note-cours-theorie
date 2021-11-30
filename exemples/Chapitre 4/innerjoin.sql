SELECT Nom, NumPro
FROM Employes
         INNER JOIN EmpPro
                    USING (NumSecu);


SELECT Nom, NumPro
FROM Employes
         INNER JOIN EmpPro
                    ON (Employes.NumSecu = EmpPro.NumSecu);
