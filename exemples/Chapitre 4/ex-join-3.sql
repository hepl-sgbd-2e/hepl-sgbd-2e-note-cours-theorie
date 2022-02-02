SELECT D1.NomDep, D2.NomDep
FROM Departements D1
         INNER JOIN Departements D2 USING (NumSecu)
WHERE D1.NomDep < D2.NomDep;
