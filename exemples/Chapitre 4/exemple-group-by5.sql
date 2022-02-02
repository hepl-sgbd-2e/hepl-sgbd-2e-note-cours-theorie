SELECT Nom, Prenom, MIN(SUM(heures)) NbHeures
FROM Employes JOIN EmpPro USING (NumSecu)
GROUP BY NumSecu, Nom, Prenom;
--Provoque une erreur - ORA-00937
