DECLARE
    VRistourne NUMBER(4);
BEGIN
    VRistourne := COALESCE(VRistourne, 0) + 1;
    DBMS_OUTPUT.PUT_LINE('VRistourne = ' ||
                         '<' || VRistourne || '>');
END;
