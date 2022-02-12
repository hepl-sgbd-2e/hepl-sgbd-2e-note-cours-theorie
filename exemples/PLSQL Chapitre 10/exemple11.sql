CREATE TRIGGER auditCreation
    AFTER CREATE
    ON SCHEMA
BEGIN
    INSERT INTO log
    VALUES ('Objet créé le : ' || CURRENT_DATE);
END;
