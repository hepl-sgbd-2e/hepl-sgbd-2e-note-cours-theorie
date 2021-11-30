DELETE
FROM EmpPro
WHERE numsecu
          IN (SELECT numsecu
              FROM employes
              WHERE nom = 'CELARIE'
                AND prenom = 'Clémentine');
