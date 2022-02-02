UPDATE employes
SET bareme = bareme * 1.10
WHERE numdep =
      (SELECT numdep
       FROM departements
       WHERE nomdep = 'Applications telecom');
