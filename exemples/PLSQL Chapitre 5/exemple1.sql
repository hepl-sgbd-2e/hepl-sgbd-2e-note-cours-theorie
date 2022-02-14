declare
    TYPE TypeTableMessErreur
        IS TABLE OF VARCHAR2(200)
        INDEX BY BINARY_INTEGER;
    TableMessErreur TypeTableMessErreur;
BEGIN
    -- on peut se servir de TableMessErreur
    null;
END;