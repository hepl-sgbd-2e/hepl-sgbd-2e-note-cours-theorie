SELECT NumSecu
FROM EmpPro EP1
WHERE NumPro = 'p10346'
  AND 1 = (SELECT COUNT (*)
           FROM EmpPro
           WHERE NumPro = 'p10349'
           AND EmpPro.NumSecu = EP1.NumSecu);
