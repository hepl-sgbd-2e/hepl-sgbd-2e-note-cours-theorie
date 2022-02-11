CREATE OR REPLACE PACKAGE Pkgclients IS
    -- ici refClient
    FUNCTION RechercheClient(p_refClient IN clients.refClient%TYPE)
        RETURN Clients%ROWTYPE;
    -- ici nomClient
    FUNCTION RechercheClient(p_nomClient IN clients.nomClient%TYPE)
        RETURN Clients%ROWTYPE;
END PkgClients;