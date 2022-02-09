CREATE OR REPLACE PROCEDURE Select_Client
  (Nom IN CHAR, CodePostal IN NUMBER := 4500) IS
BEGIN
  null;
END;

-- utilisation
begin
Select_Client ('DELMAL'); -- appel valide
Select_Client ();--appel invalide
end;