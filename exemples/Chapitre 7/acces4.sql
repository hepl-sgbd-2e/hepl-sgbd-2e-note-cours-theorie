CREATE VIEW info_par_service
AS SELECT employes.*
   FROM employes e, services s
   WHERE e.num_service = s.num_service
     AND s.num_chef =
       (SELECT numero
        FROM employes
        WHERE upper(nom) = upper(USER));

GRANT SELECT ON info_par_service
TO Asterix, Panoramix, Abraracourcix;
