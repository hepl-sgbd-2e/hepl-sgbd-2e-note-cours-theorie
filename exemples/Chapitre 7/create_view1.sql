SELECT ep.nom
FROM eleves_de_premiere ep,
     activites_pratiquees ap
WHERE ep.num_eleve = ap.num_eleve
  AND niveau = 1
  AND ap.nom = 'surf';
