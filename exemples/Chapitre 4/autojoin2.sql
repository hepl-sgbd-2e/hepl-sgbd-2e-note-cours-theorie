SELECT Ep1.NumSecu
FROM EmpPro Ep1, EmpPro Ep2
WHERE Ep1.NumSecu = Ep2.NumSecu
  AND Ep1.NumPro = 'p10346'
  AND Ep2.NumPro = 'p10349';


SELECT NumSecu FROM EmpPro WHERE NumPro = 'p10346'
INTERSECT
SELECT NumSecu FROM EmpPro WHERE NumPro = 'p10349';
