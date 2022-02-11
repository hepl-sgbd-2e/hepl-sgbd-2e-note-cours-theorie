CREATE OR REPLACE PACKAGE BODY Pkgclients IS
    FUNCTION RechercheClient(p_refClient clients.refClient%TYPE)
        RETURN Clients%ROWTYPE
        IS
        v_Client Clients%ROWTYPE;
    BEGIN
        SELECT *
        INTO v_Client
        FROM Clients
        WHERE RefClient = p_refClient;

        RETURN v_Client;
    END;
    FUNCTION RechercheClient(p_nomClient clients.nomClient%TYPE)
        RETURN Clients%ROWTYPE
        IS
        v_Client Clients%ROWTYPE;
    BEGIN
        SELECT *
        INTO v_Client
        FROM Clients
        WHERE nomClient = p_nomClient;

        RETURN v_Client;
    END;
END PkgClients;

