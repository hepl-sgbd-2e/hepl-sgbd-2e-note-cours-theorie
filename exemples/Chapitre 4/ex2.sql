SELECT COALESCE (NumDep, 'Département inconnu')
FROM Employes
WHERE UPPER(sexe) = 'F'
INTERSECT
SELECT COALESCE (NumDep, 'Département inconnu')
FROM Employes
WHERE UPPER(sexe) = 'M';
