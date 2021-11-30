SELECT Nom, Commune
FROM Employes
WHERE Commune IN
      ('NEUPRE', 'ANS', 'CHAUDFONTAINE')
ORDER BY (CASE Commune
              WHEN 'NEUPRE' THEN '0'
              WHEN 'ANS' THEN '1'
              ELSE '2'
    END), Nom;
