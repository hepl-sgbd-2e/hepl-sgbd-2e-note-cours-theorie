SELECT Nom, Prenom, SUM(Heures) NbHeures
FROM Employes
         JOIN EmpPro USING (NumSecu)
GROUP BY NumSecu, Nom, Prenom
HAVING SUM(Heures) <=
           ALL (SELECT SUM(Heures)
                FROM EmpPro
                GROUP BY NumSecu)
ORDER BY 3;
