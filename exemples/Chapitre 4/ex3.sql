SELECT NumDep
FROM Employes
WHERE UPPER(Commune) = 'LIEGE'
UNION
SELECT NumDep
FROM Employes
WHERE UPPER(Commune) = 'HERSTAL';
