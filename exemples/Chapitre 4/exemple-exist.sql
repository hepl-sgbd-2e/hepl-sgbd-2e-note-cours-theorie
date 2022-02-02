SELECT Nom, Prenom
FROM Employes
WHERE EXISTS
  (SELECT * -- Constante arbitraire
   FROM EmpPro
   WHERE NumSecu = Employes.NumSecu -- Ici il y a de la corrélation
     AND Heures = 10
     AND NumPro = 'p10349');
