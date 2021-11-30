CREATE VIEW information_me_concernant
AS SELECT *
   FROM employes
   WHERE upper(nom) = upper(USER);

GRANT SELECT, UPDATE (adresse) ON information_me_concernant
TO PUBLIC;

CREATE PUBLIC SYNONYM information_me_concernant
FOR del.information_me_concernant;