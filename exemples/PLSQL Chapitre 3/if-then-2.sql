DECLARE
    VContinue BOOLEAN := FALSE;

BEGIN
    IF (NOT VContinue) OR ((41 / 0) > 0)
    THEN
        DBMS_OUTPUT.PUT_LINE('Pas d’erreur de division');
    END IF;
END;

--Pas d'erreur de division
