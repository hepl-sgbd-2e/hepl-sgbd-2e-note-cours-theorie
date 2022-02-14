DECLARE
    v_client clients%ROWTYPE;
    v_dummy  dual.dummy%TYPE;
BEGIN
    SELECT dummy INTO v_dummy FROM DUAL;
    SELECT * into v_client FROM Clients WHERE refClient = 6;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Problème de sélection');
END;
