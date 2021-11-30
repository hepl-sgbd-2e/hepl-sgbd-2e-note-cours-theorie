CREATE VIEW projets_prix
            (nom_projet, code_activite, tarif,
             heures_prevues, prix)
AS
SELECT projets.*,
       tarif * heures_prevues
FROM projets;