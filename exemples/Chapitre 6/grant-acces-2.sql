GRANT ALL ON TABLE resultats TO directeur WITH GRANT OPTION;
--Les deux secrétaires peuvent uniquement insérer dans la table  :
GRANT INSERT ON TABLE resultats TO srt_un, srt_deux;
--Les professeurs peuvent lire le contenu de la table et modifier le contenu de la colonne points :
GRANT SELECT, UPDATE (points) ON TABLE resultats TO prof_un, prof_deux, … , prof_n;
