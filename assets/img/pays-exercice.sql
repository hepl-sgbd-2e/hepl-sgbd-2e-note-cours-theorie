CREATE TABLE Pays
(
    CodePays    VARCHAR2(4)
        CONSTRAINT CP_Pays PRIMARY KEY,
    Nom         VARCHAR2(30)
        CONSTRAINT NN_Pays_Nom NOT NULL,
    Devise      VARCHAR2(10)    
);

CREATE TABLE Villages
(
    Village     VARCHAR2(30)
        CONSTRAINT CP_Villages PRIMARY KEY,
    NbChambres  INT,
    CodePays    VARCHAR2(4)
        CONSTRAINT FK_Villages_CodePays REFERENCES Pays(CodePays)
        CONSTRAINT NN_Villages_CodePays NOT NULL,
    TarifMin    NUMBER,
    TarifMax    NUMBER,
    Trident     INT
        CONSTRAINT CK_VILLAGES_Trident CHECK (Trident BETWEEN 1 AND 5),

    CONSTRAINT CK_VILLAGES_TARIFMINMAX CHECK (TarifMax > TarifMin)
);

CREATE TABLE Clients
(
    IdClient    VARCHAR2(10)
        CONSTRAINT CP_Clients PRIMARY KEY,
    Nom         VARCHAR2(30),
    Prenom      VARCHAR2(30),
    Ville       VARCHAR2(30),
    CodePays    VARCHAR2(4)
        CONSTRAINT FK_Clients_CodePays REFERENCES Pays(CodePays),
    Solde       Number
);

CREATE TABLE Stages
(
    Village     VARCHAR2(30)
        CONSTRAINT FK_Stages_Villages REFERENCES Villages(Village),
    Libelle     VARCHAR2(30),
    Niveau      VARCHAR2(15),
    Prix        Number,

    CONSTRAINT CP_Stages PRIMARY KEY (Village, Libelle, Niveau)
);

CREATE TABLE SEJOURS
(
    IdClient    VARCHAR2(10)
        CONSTRAINT FK_Sejours_Client REFERENCES Clients (IdClient),
    Village     VARCHAR2(30)
        CONSTRAINT FK_Sejours_Villages REFERENCES Villages(Village), 
    DateDebut   DATE,
    DateFin     DATE,
    NbPersonnes INT,
    
    CONSTRAINT CP_Sejours PRIMARY KEY (IdClient, Village, DateDebut),
    CONSTRAINT CK_Sejours_DateDebutDateFin CHECK (DateDebut < DateFin)
);
