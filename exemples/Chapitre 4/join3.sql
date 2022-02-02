SELECT E2.Nom
FROM Employes E1
         JOIN Employes E2
              ON E2.Bareme > E1.Bareme
WHERE E1.Nom = 'BEART';
