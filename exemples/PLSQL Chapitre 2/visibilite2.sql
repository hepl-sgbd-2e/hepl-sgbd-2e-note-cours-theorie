<<Main>>
DECLARE
    VLoc  VARCHAR2(20);
    Vuser VARCHAR2(50) := USER;
BEGIN
    VLoc := 'Bloc Principal';
    DECLARE
        VLoc VARCHAR2(50);
    BEGIN
        VLoc := 'Bloc imbriqué';
        DBMS_OUTPUT.PUT_LINE('Vloc = ' || VLoc ||
                             ', Vuser = ' || Vuser);
        DBMS_OUTPUT.PUT_LINE('Main.Vloc = ' || Main.Vloc);
    END;
    DBMS_OUTPUT.PUT_LINE('Vloc = ' || Vloc ||
                         ', Vuser = ' || VUser);
END;
