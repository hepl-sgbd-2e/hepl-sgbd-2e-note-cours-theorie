SELECT NumSecu
FROM EmpPro
WHERE NumPro = 'p10346'
  AND NumSecu IN (SELECT NumSecu
                  FROM EmpPro
                  WHERE NumPro = 'p10349');
