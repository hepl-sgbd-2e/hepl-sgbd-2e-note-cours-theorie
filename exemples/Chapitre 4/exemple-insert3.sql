INSERT INTO employes
    (numsecu, nom, prenom, numdep, bareme, numchef)
VALUES ('888888', 'DUBOIS', 'Luc',
        (SELECT numdep
         FROM employes
         WHERE numdep IS NOT NULL
         GROUP BY numdep
         HAVING COUNT(*) <= ALL
                (SELECT COUNT(*)
                 FROM employes
                 WHERE numdep IS NOT NULL
                 GROUP BY numdep)),
        (SELECT AVG(bareme) FROM employes),
        (SELECT numsecu FROM employes WHERE nom = 'HOFFMAN'));
