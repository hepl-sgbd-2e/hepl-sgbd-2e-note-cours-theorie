SELECT Nom, Prenom
FROM Employes
WHERE NumSecu IN (SELECT NumSecu
                  FROM EmpPro
                  WHERE NumPro = 'p10347');
