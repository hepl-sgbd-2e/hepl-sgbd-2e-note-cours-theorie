BEGIN
    FOR Viteration IN 1..3
        LOOP
            DBMS_OUTPUT.PUT_LINE
                ('Viteration = ' || Viteration);
        END LOOP;
END;
-- Viteration = 1
-- Viteration = 2
-- Viteration = 3