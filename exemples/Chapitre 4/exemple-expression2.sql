SELECT Nom, Prenom, Bareme
FROM Employes
WHERE Bareme = (SELECT MIN(Bareme) FROM Employes)
UNION
SELECT Nom, Prenom, Bareme
FROM Employes
WHERE Bareme = (SELECT MAX(Bareme) FROM Employes);
