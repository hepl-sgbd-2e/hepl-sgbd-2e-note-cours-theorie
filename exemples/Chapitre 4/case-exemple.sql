SELECT nom,
       (CASE
            WHEN bareme >= 90000 THEN '>= 90000'
            WHEN bareme >= 80000 THEN 'entre 80000 et 89999'
            WHEN bareme >= 70000 THEN 'entre 70000 et 79999'
            ELSE '< 70000'
           END) AS bareme,
       (CASE sexe
            WHEN 'F' THEN 'Féminin'
            ELSE 'Masculin'
           END) AS genre
FROM Employes
WHERE UPPER(nom) LIKE '_E%';
