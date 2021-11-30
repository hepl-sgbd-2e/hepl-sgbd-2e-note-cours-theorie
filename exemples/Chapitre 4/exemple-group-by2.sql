SELECT nom, prenom, SUM(Heures) NbHeures
FROM Employes JOIN EmpPro USING (NumSecu)
GROUP BY NumSecu;
-- Ceci Provoque une erreur
-- Tous les champs qui apparaissent dans le SELECT doivent apparaître dans le GROUP BY

SELECT nom, prenom, SUM(Heures) NbHeures
FROM Employes JOIN EmpPro USING (NumSecu)
GROUP BY NumSecu, nom, prenom
ORDER BY 3;
