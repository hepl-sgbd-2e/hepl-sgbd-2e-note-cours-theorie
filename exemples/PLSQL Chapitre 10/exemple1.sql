CREATE TRIGGER nom_déclencheur
  BEFORE | AFTER
    DELETE | INSERT | UPDATE [OF liste_colonne]
        ON nom_table | nom_vue
  [FOR EACH ROW]
  [WHEN condition]
[bloc PL/SQL];
