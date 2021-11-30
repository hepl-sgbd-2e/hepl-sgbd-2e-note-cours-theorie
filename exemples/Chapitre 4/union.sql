SELECT nom, prenom
FROM Employes
WHERE UPPER(commune) = 'LIEGE'
  and sexe = 'F'
UNION
SELECT nom, prenom
FROM Employes
WHERE UPPER(commune) = 'WAREMME'
  and sexe = 'F';
