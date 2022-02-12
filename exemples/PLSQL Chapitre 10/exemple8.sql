CREATE [OR REPLACE] TRIGGER nom_declencheur
FOR {INSERT | UPDATE | UPDATE OF liste_colonnes | DELETE}
ON nom_table | nom_vue
COMPOUND TRIGGER

[BEFORE STATEMENT IS
[instructions_déclarations;]
BEGIN
Instructions_execution;
END BEFORE STATEMENT;]

[BEFORE EACH ROW IS ...]

[AFTER EACH ROW IS ...]

[AFTER STATEMENT IS ...]

END nom_declencheur;
