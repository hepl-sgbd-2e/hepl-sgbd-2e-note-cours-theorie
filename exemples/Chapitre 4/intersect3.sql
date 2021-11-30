-- pas de résultat : un même champ ne peut avoir 2 valeurs différentes dans un même tuple
SELECT NumSecu
FROM EmpPro
WHERE Numpro = 'p10346'
  AND NumPro = 'p10349';

-- cela représente l'union et non l'intersection !
SELECT NumSecu
FROM EmpPro
WHERE Numpro IN ('p10346', 'p10349');
