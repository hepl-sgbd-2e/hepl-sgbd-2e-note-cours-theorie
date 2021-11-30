SELECT Employes.numsecu, nom, COALESCE(EmpPro.NumPro, 'Pas de projet en cours') AS "Numéro de projet"
FROM Employes
         LEFT OUTER JOIN EmpPro
                         ON Employes.NumSecu = EmpPro.NumSecu
ORDER BY 2;
