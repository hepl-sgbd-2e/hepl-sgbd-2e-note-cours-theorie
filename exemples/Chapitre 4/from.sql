SELECT NomPro
FROM (SELECT *
      FROM Employes
               NATURAL JOIN EmpPro
      WHERE UPPER(nom) = 'DE NIRO')
         JOIN Projets USING (NumPro);
