BEGIN
    -- Du code
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE
            ('Code Erreur : ' || SQLCODE || 'Message : ' || SQLERRM);
END;
