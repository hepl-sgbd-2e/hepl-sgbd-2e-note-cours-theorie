SELECT nom,
       COALESCE(numchef, 'Président') AS Chef
FROM employes;
