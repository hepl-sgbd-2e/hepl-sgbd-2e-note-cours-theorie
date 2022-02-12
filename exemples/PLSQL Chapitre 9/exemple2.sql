DECLARE
    CURSOR C -- Ici
        IS SELECT nom, prenom
           FROM Clients
           WHERE codepostal = '4000';
BEGIN
    -- récupérer les données du curseurd
    FETCH nom_curseur
        INTO [Liste_variable | record];
--OU
    -- récupérer les données du curseurd
    FETCH nom_curseur
        BULK COLLECT INTO collection;
END;