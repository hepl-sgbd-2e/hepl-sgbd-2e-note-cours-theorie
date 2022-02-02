SELECT Nom
FROM Employes
WHERE bareme = (SELECT MAX(bareme)
                FROM Employes);
