SELECT NumSecu
FROM EmpPro
WHERE NumPro = 'p10346'
  AND NumSecu =
    ANY (SELECT NumSecu
         FROM EmpPro
         WHERE NumPro = 'p10349');
