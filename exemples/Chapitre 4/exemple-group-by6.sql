CREATE
OR REPLACE VIEW Temp AS (
  SELECT Nom, Prenom, SUM(Heures) NbHeures
  FROM Employes JOIN EmpPro USING (NumSecu)
  GROUP BY NumSecu, Nom, Prenom);

SELECT *
FROM Temp
WHERE NbHeures = (SELECT MIN(NbHeures)
                  FROM Temp);
