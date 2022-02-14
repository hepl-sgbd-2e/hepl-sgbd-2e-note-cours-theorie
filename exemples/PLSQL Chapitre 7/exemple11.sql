CREATE OR REPLACE PROCEDURE Search_Client(
    p_NomClient IN,
    p_AdresseClient IN)
BEGIN
    null;
END;
-- utilisation
begin
Search_Client (p_NomClient=>'DELMAL',
		   p_AdresseClient => 'HUY');
end;