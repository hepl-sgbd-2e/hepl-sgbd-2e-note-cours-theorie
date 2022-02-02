SELECT E1.Nom, E1.Prenom, E1.Bareme
FROM Employes E1,
     (SELECT MIN(Bareme) AS BaremeMin FROM Employes) E2,
     (SELECT MAX(Bareme) AS BaremeMax FROM Employes) E3
WHERE E1.bareme = E2.BaremeMin
   OR E1.bareme = E3.BaremeMax;

