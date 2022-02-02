CREATE or replace VIEW eleves_de_premiere
            (num_eleve, nom, prenom, date_naissance,
             poids, annee)
AS
SELECT *
FROM eleves
WHERE annee = 1;
