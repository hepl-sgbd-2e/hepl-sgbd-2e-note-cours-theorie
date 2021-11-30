SELECT NumSecu
FROM Employes
WHERE bareme > ANY (SELECT bareme
                    FROM Employes);
