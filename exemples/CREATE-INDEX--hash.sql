CREATE
CLUSTER klu (num_article number (5, 0)
    hash is num_article
    hashkeys 25000;

CREATE TABLE Articles (
    num_article	number (5, 0)
        CONSTRAINT CPArticles PRIMARY KEY,
    nom		varchar2 (100),)
CLUSTER klu;
