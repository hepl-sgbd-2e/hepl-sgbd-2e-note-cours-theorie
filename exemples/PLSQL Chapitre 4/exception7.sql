DECLARE
    Mes1 VARCHAR2(10);
BEGIN
    Mes1 := SQLERRM;
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE
            ('Chaine réceptrice trop petite !');
END;
