SELECT MIN(SUM(heures)) NbHeures
FROM EmpPro
GROUP BY NumSecu;
