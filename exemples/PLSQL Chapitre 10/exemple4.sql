CREATE TRIGGER maj_nb_emp
    BEFORE INSERT OR DELETE OR UPDATE OF num_service
    ON personnel
    FOR EACH ROW
BEGIN
    IF inserting THEN
        UPDATE service
        SET nombre_emp = nombre_emp + 1
        WHERE num_service = :NEW.num_service;
    ELSIF deleting THEN
        UPDATE service
        SET nombre_emp = nombre_emp - 1
        WHERE num_service = :OLD.num_service;
    ELSIF updating THEN
        UPDATE service
        SET nombre_emp = nombre_emp + 1
        WHERE num_service = :NEW.num_service;
        UPDATE service
        SET nombre_emp = nombre_emp - 1
        WHERE num_service = :OLD.num_service;
    END IF;
END;