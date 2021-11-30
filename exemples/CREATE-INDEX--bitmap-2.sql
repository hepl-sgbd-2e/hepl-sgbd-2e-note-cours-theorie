-- Avec cet index :

CREATE INDEX IdxPrixNet ON
    Articles (Prix - Ristourne);

--Oracle utilisera cet index pour ceci
SELECT *
FROM Articles
WHERE Prix - Ristourne > 200;
