DECLARE
    ExcIntRef EXCEPTION;
    PRAGMA EXCEPTION_INIT (ExcIntRef,-2292);
BEGIN
    DELETE
    FROM emppro p1
    WHERE p1.numpro = 'p10352'
      AND 36 < (SELECT MONTHS_BETWEEN(CURRENT_DATE, p2.DATEDEBUT)
                FROM projets p2
                WHERE p1.numpro = p2.numpro);
    DELETE FROM projets WHERE numpro = 'p10352';
    IF SQL%NOTFOUND THEN -- Ici
        DBMS_OUTPUT.PUT_LINE('Le nr de projet p10352 n''existe pas ');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Le nr de projet p10352 est effacé ');
    END IF;
EXCEPTION
    WHEN ExcIntRef THEN DBMS_OUTPUT.PUT_LINE('Le projet ne peut être effacé');
END;
