CREATE OR REPLACE TRIGGER MajChefDept
    BEFORE INSERT OR UPDATE OF numsecu
    ON departements
    FOR EACH ROW
    WHEN (NEW.numsecu IS NOT NULL)
DECLARE
    numdep Employes.numdep%TYPE;
    ExcNumDep EXCEPTION;
BEGIN
    SELECT numdep INTO numdep FROM employes WHERE numsecu = :NEW.numsecu;
    IF numdep <> :NEW.numdep THEN RAISE ExcNumDep; END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR
        ('-20000', 'Le nr ' || :New.numsecu || 'n''est pas un employé de la societé');
    WHEN ExcNumDep THEN RAISE_APPLICATION_ERROR
        ('-20001', 'Le nr ' || :New.numsecu || ' n''est pas attaché au dept  ' || :New.numdep);
end;