-- Manuelle :
SELECT Nom, NomDep
FROM Employes,
     Departements
WHERE Employes.NumDep = Departements.NumDep;

-- Interne : 
SELECT Nom, NomDep
FROM Employes
         INNER JOIN Departements
                    ON (Employes.NumDep = Departements.NumDep);

-- OU
SELECT Nom, NomDep
FROM Employes
         INNER JOIN Departements
                    USING (NumDep);

-- Naturelle : 
SELECT Nom, NomDep
FROM Employes
         NATURAL JOIN Departements;

-- Attention, dans ce cas-ci, on obtient moins de tuple car la jointure est faite sur le NumSecu en plus du NumDep, or la jointure sur le NumSecu ne doit pas intervenir dans ce cas-ci !!
