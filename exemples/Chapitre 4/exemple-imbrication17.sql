SELECT Nom, Prenom
FROM Employes
WHERE 0 <
      (SELECT COUNT(*)
       FROM EmpPro
       WHERE heures = 10
         AND NumPro = 'p10349'
         AND EmpPro.NumSecu = Employes.NumSecu);
-- ou avec une jointure
select nom, PRENOM
from EMPLOYES
         inner join EMPPRO E on EMPLOYES.NUMSECU = E.NUMSECU
where HEURES = 10
  AND NumPro = 'p10349';
