CREATE TRIGGER upd_salaire_personnel
    BEFORE UPDATE OF sal
    ON Emp
    FOR EACH ROW
    WHEN (OLD.sal > NEW.sal)
DECLARE
    salaire_diminue EXCEPTION;
BEGIN
    RAISE salaire_diminue;
EXCEPTION
    WHEN salaire_diminue THEN
        raise_application_error(-20001,
                                'Le salaire ne peut diminuer');
END;
