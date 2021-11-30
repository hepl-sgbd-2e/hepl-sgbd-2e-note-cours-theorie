SELECT Nom, Prenom, SUM(Heures) NbHeures
FROM Employes
         JOIN EmpPro USING (NumSecu)
GROUP BY NumSecu, Nom, Prenom
HAVING SUM(Heures) =
       (SELECT MIN(SUM(Heures))
        FROM Employes
                 JOIN EmpPro USING (NumSecu)
        GROUP BY NumSecu);
