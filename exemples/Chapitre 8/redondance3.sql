CREATE TRIGGER maj_cascade
BEFORE DELETE OR UPDATE OF num_auteur
  ON auteurs
FOR EACH ROW
BEGIN
  IF updating THEN
    UPDATE a_ecrit SET num_auteur = :NEW.num_auteur
      WHERE num_auteur = :OLD.num_auteur;
  ELSIF deleting THEN
    DELETE FROM a_ecrit
      WHERE num_auteur = :OLD.num_auteur;
  END IF;
END;
