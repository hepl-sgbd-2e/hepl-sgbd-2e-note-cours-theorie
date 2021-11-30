DECLARE
    VLoc  VARCHAR2(20);
    Vuser VARCHAR2(50) := USER;
BEGIN
    VLoc := 'Bloc Principal';
    DECLARE
        VLoc VARCHAR2(50);
    BEGIN
        VLoc := 'Bloc imbriqué';
        DBMS_OUTPUT.PUT_LINE('VLoc = ' || VLoc ||
                             ', Vuser = ' || Vuser);
    END;
    -- Ici VLoc du bloc imbriqué n'est plus connu
    DBMS_OUTPUT.PUT_LINE('VLoc = ' || VLoc ||
                         ', Vuser = ' || VUser);
END;
-- VLoc = Bloc imbriqué, Vuser = USER_SGBD_2
-- VLoc = Bloc Principal, Vuser = USER_SGBD_2