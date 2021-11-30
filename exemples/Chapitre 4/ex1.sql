SELECT COALESCE(NumDep, 'Département inconnu')
FROM Employes
WHERE UPPER(sexe) = 'F'
    MINUS
SELECT COALESCE(NumDep, 'Département inconnu')
FROM Employes
WHERE UPPER(sexe) = 'M';
