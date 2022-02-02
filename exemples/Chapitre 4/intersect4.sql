SELECT *
from (SELECT NOM, PRENOM
      FROM EmpPro
               inner join EMPLOYES E2 on E2.NUMSECU = EMPPRO.NUMSECU
      WHERE Numpro = 'p10346'
      INTERSECT
      SELECT NOM, PRENOM
      FROM EmpPro
               inner join EMPLOYES E on E.NUMSECU = EMPPRO.NUMSECU
      WHERE Numpro = 'p10349');