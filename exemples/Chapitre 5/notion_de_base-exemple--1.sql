-- Etat initial  : Base cohérente
UPDATE Compte
SET solde = solde – S
WHERE num_compte = A;
-- Etat intermédiaire  : Base incohérente
UPDATE Compte
SET solde = solde + S
WHERE num_compte = B;
-- Etat final  : Base cohérente