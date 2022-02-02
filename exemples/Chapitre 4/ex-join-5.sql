SELECT Nom
FROM Employes
         LEFT JOIN EmpPro USING (NumSecu)
WHERE NumPro IS NULL;
