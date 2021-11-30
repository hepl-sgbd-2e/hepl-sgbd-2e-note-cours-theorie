CREATE TABLE membres
(
    num_membre char(4)
        CONSTRAINT CPMembres PRIMARY KEY,
    nom        varchar2(32),
    prenom     varchar2(32)
) CLUSTER membres_et_emprunts (num_membre);

CREATE TABLE emprunts
(
    num_membre   char(4)
        CONSTRAINT RefNumMembreMembres
            references Membres (num_membre),
    num_ouvrage  char(6)
        CONSTRAINT RefNumOuvrage
            references Ouvrages (num_ouvrage),
    date_emprunt date
) CLUSTER membres_et_emprunts (num_membre)