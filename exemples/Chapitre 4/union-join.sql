SELECT EmpPro.*, NULL, NULL, NULL
FROM EmpPro
UNION ALL
SELECT NULL, NULL, NULL, Departements.*
FROM Departements;
