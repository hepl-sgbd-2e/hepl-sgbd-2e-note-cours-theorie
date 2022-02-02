UPDATE employes emp1
SET bareme = (SELECT MAX(bareme)
              FROM employes
              WHERE numdep = emp1.numdep)
WHERE nom = 'DE NIRO'
  AND prenom = 'Robert';

SELECT numsecu, bareme
FROM employes
WHERE nom = 'DE NIRO'
  AND prenom = 'Robert';
