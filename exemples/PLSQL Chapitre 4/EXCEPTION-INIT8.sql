BEGIN
    INSERT INTO Clients
        (refClient, nomClient, adresseClient, localite)
    VALUES (1, 'Gramme', 'Rue de la dynamo', 'Rome');
    COMMIT;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        UPDATE Clients
        SET nomClient     = 'Gramme',
            adresseClient = 'Rue de la dynamo',
            localite      = 'Rome'
        WHERE refClient = 1;
        COMMIT;
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE
        ('Code erreur : ' || SQLCODE || ', message : ' || SQLERRM);
    ROLLBACK;
END;
