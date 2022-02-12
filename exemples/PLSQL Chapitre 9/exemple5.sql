BEGIN
    null;
EXCEPTION
    WHEN uneException THEN
        IF c%ISOPEN THEN
            CLOSE c; -- On ferme le curseur
        END IF;
END;
