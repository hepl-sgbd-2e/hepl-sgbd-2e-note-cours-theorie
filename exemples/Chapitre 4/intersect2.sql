SELECT NumSecu
FROM EmpPro
WHERE Numpro = 'p10346' MINUS
    (SELECT NumSecu FROM EmpPro
     WHERE Numpro = 'p10346'
     MINUS
     SELECT NumSecu FROM EmpPro
     WHERE Numpro = 'p10349');
