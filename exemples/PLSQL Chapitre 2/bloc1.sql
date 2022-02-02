DECLARE
    Vuser           VARCHAR2(35) := USER;
    -- PLS-00218: a variable declared NOT NULL must have an initialization assignment
    VNotNull        INTEGER NOT NULL;
    Vdefaut         INTEGER DEFAULT 1;
    Vconst CONSTANT INTEGER      := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Vuser : ' || Vuser);
    DBMS_OUTPUT.PUT_LINE('VNotNull : ' || VNotNull);
    DBMS_OUTPUT.PUT_LINE('Vdefaut : ' || Vdefaut);
    DBMS_OUTPUT.PUT_LINE('Vconst : ' || Vconst);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
