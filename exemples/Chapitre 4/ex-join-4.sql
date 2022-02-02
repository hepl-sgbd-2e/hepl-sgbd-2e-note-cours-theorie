SELECT NomPro
FROM Projets
         LEFT JOIN EmpPro USING (NumPro)
WHERE NumSecu IS NULL;
