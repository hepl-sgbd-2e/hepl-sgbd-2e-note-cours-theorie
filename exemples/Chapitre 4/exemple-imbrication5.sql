SELECT NomDep
FROM Departements
WHERE NumDep NOT IN
      (SELECT COALESCE(NumDep, 'Sans Numéro')
       FROM Employes
       WHERE Bareme < 60000);
