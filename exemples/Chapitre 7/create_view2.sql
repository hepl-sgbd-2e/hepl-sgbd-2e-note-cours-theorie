SELECT eleves.nom
FROM eleves,
     activites_pratiquees ap
WHERE eleves.num_eleve = ap.num_eleve
  AND niveau = 1
  AND ap.nom = 'surf'
  -- Ici le prédicat en plus
  AND annee = 1;
