CREATE OR REPLACE PACKAGE Session_Persistante IS
    PROCEDURE AssigneVariable(P_Valeur CHAR);
    FUNCTION AfficheVariable RETURN CHAR;
END SessionPersistante;
