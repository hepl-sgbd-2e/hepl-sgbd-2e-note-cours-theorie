CREATE VIEW moyenne_par_eleve (nom, moyenne)
AS SELECT e.nom, AVG (points)
   FROM eleves e, resultats r
   WHERE e.num_eleve = r.num_eleve
   GROUP BY e.num_eleve, e.nom
   HAVING upper(e.nom) = upper(USER);

GRANT SELECT ON moyenne_par_eleve TO PUBLIC;

CREATE PUBLIC SYNONYM moyenne_par_eleve
FOR del.moyenne_par_eleve;