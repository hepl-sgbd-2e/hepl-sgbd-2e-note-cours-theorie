CREATE VIEW projets_prix
  (nom_projet, code_activite, tarif,
   heures_prevues, prix)
AS SELECT nom_Projet, dp.code_activite, tarif,
          heures_prevues, tarif * heures_prevues
   FROM description_projets dp, table_tarifs tf
   WHERE dp.code_activite = tf.code_activite;

