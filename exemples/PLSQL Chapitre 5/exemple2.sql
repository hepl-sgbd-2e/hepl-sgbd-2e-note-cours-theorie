create table Emp (nom varchar2(100)); -- Création de la table
declare
    TYPE TypeLesEmployes
        IS TABLE OF Emp%ROWTYPE
        INDEX BY BINARY_INTEGER;
    TableEmployes TypeLesEmployes;
BEGIN
    -- on peut se servir de TableEmployes
    null;
END;