DECLARE
    VariableDeBase NUMBER DEFAULT 20;
    ma_variable    VariableDeBase%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Variable de base ' ||
                         VariableDeBase);
    DBMS_OUTPUT.PUT_LINE('Variable dérivée ' ||
                         ma_variable);
END;
