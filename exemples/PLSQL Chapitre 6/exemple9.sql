DECLARE
    TYPE TableEmployes IS TABLE OF Emp%ROWTYPE
        INDEX BY BINARY_INTEGER;
    LesEmployes TableEmployes;
    Nbre        NUMBER := 1;
BEGIN
    FOR UnEmploye IN (SELECT * FROM Emp)
        LOOP
            LesEmployes(Nbre) := UnEmploye;
            Nbre := Nbre + 1;
        END LOOP;
END;
