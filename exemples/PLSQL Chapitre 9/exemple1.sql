DECLARE
    CURSOR C -- Ici
        IS SELECT nom, prenom
           FROM Clients
           WHERE codepostal = '4000';
BEGIN
    null;
END;