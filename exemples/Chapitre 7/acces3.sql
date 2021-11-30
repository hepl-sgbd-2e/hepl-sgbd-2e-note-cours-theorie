CREATE VIEW employes_riches
  (numero, nom, prenom, adresse, num_service,
   salaire, performance)
AS SELECT 'xxx', 'xxx', 'xxx', 'xxx',
          num_service, salaire, performance
   FROM employes
   WHERE salaire > 3000;
