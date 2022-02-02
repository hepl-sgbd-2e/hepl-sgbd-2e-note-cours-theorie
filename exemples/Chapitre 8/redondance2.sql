CREATE TRIGGER maj_nb_emp
    BEFORE INSERT OR DELETE OR UPDATE OF num_service
    ON personnel
    FOR EACH ROW
BEGIN
    IF inserting THEN
        UPDATE service
        SET nombre_emp = nombre_emp + 1
        WHERE num_service = :NEW.num_service;-- NEW
    ELSIF deleting THEN
        UPDATE service
        SET nombre_emp = nombre_emp - 1
        WHERE num_service = :OLD.num_service;-- OLD
    ELSIF updating THEN
        UPDATE service
        SET nombre_emp = nombre_emp + 1
        WHERE num_service = :NEW.num_service;-- NEW
        UPDATE service
        SET nombre_emp = nombre_emp - 1
        WHERE num_service = :OLD.num_service;-- OLD
    END IF;
END;
