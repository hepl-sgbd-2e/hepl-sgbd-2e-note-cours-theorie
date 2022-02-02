SELECT NomPro,
       DateDebut,
       DateDebut + Interval '4' MONTH AS "+4 Mois"
FROM Projets;

SELECT NomPro, DateDebut,
  DateDebut + TO_YMINTERVAL('0-4') "+4 Mois"
FROM Projets;
