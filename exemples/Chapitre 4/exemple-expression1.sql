SELECT COUNT(NumSecu) AS NB,
       AVG(Bareme)    AS Moyenne,
       MIN(Bareme)    AS "Bareme Min",
       MAX(Bareme)    AS "Bareme Max"
FROM Employes
WHERE NumDep = 'd00004';
