CREATE OR REPLACE TRIGGER TrAuditPersonnel
    BEFORE INSERT OR DELETE OR UPDATE
    ON personnel
    FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO auditPersonnel
        VALUES (USER, SYSDATE, 'INSERT',
                :NEW.NUMERO, :NEW.NOM, :NEW.PRENOM,
                :NEW.SEXE, :NEW.ADRESSE, :NEW.NUM_SERVICE,
                :NEW.SALAIRE, :NEW.TAXE);
    ELSIF DELETING THEN
        INSERT INTO auditPersonnel
        VALUES (USER, SYSDATE, 'DELETE',
                :OLD.NUMERO, :OLD.NOM, :OLD.PRENOM,
                :OLD.SEXE, :OLD.ADRESSE,
                :OLD.NUM_SERVICE,
                :OLD.SALAIRE, :OLD.TAXE);
    ELSIF UPDATING THEN
        INSERT INTO auditpersonnel
        VALUES (USER, SYSDATE, 'NOUVEAU',
                :NEW.NUMERO, :NEW.NOM, :NEW.PRENOM,
                :NEW.SEXE, :NEW.ADRESSE,
                :NEW.NUM_SERVICE,
                :NEW.SALAIRE, :NEW.TAXE);
        INSERT INTO auditpersonnel
        VALUES (USER, SYSDATE, 'ANCIEN',
                :OLD.NUMERO, :OLD.NOM, :OLD.PRENOM,
                :OLD.SEXE, :OLD.ADRESSE,
                :OLD.NUM_SERVICE,
                :OLD.SALAIRE, :OLD.TAXE);
    END IF;
END;


