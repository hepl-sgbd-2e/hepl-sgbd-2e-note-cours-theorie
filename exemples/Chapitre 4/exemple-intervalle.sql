SELECT nom,
       DateNais,
       EXTRACT(YEAR FROM CURRENT_DATE)
           - EXTRACT(YEAR FROM DateNais) Age
FROM Employes;

SELECT nom,
       DateNais,
       (CURRENT_DATE - DateNais) YEAR TO MONTH Age
FROM Employes;


SELECT nom,
       DateNais,
       EXTRACT(YEAR FROM (CURRENT_DATE - DateNais)
           YEAR TO MONTH)
           || ' years ' ||
       EXTRACT(MONTH FROM (CURRENT_DATE - DateNais)
           YEAR TO MONTH)
           || ' months ' AS Age
FROM Employes;

