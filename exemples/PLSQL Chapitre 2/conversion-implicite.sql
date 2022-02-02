DECLARE
    TimeStart   CHAR(5);
    TimeFinish  CHAR(5);
    TimeElapsed NUMBER(5);
BEGIN
    -- recherche du nb de secondes écoulées depuis minuit
    SELECT TO_CHAR(CURRENT_DATE, 'SSSSS') INTO TimeStart FROM DUAL;
    -- …
    -- recherche du nb de secondes écoulées depuis minuit
    SELECT TO_CHAR(CURRENT_DATE, 'SSSSS') INTO TimeFinish FROM DUAL;
    -- La soustraction est effectuée car convertion automatique
    TimeElapsed := TimeFinish - TimeStart;
    DBMS_OUTPUT.PUT_LINE('Temps écoulé = ' || TimeElapsed);
END;
