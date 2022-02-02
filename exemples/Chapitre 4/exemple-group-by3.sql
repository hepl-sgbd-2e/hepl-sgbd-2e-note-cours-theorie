SELECT nom, prenom, SUM(Heures) NbHeures
FROM Employes
         JOIN EmpPro USING (NumSecu)
GROUP BY NumSecu, nom, prenom
HAVING SUM(Heures) < 40
ORDER BY 3;
-- On ne peut pas utiliser l'alias de la colonne dans le HAVING : le SELECT n'a pas encore été exécuté, donc cet alias n'est pas encore connu.