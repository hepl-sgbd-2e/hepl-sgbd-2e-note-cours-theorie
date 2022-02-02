CREATE VIEW employes_riches
AS SELECT numero, salaire, performance
   FROM employes
   WHERE salaire > 3000;

GRANT SELECT ON employes_riches TO Asterix;
