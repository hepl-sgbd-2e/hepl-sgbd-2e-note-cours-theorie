SELECT Nom
FROM Employes
WHERE bareme >
      (SELECT bareme
       FROM Employes
       WHERE nom = 'BEART');

SELECT Nom
FROM Employes
WHERE (sexe, bareme, numdep) =
      (SELECT DISTINCT 'F', 80000, 'd00001'
       FROM Employes);

