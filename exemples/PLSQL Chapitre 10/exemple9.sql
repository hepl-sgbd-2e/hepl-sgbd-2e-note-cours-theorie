CREATE OR REPLACE TRIGGER GestionDesDept
    FOR INSERT OR UPDATE OF numdep
    ON employes
    COMPOUND TRIGGER
    TYPE ArrayOfRowid IS TABLE OF ROWID INDEX BY BINARY_INTEGER;
    NewRowids ArrayOfRowid; Compt NUMBER; MaxEmployes NUMBER := 5;
    NbreAtteint EXCEPTION;
AFTER EACH ROW IS
BEGIN
    NewRowids(NewRowids.COUNT + 1) := :NEW.rowid;
End AFTER EACH ROW;

AFTER STATEMENT IS
BEGIN
    FOR i in 1.. NewRowids.COUNT
        LOOP
            SELECT COUNT(*)
            INTO Compt
            FROM employes
            WHERE numdep = (SELECT numdep FROM employes WHERE ROWID = NewRowids(i));
            IF Compt > MaxEmployes THEN RAISE NbreAtteint; END IF;
        END LOOP;
EXCEPTION
    WHEN NbreAtteint
        THEN RAISE_APPLICATION_ERROR(-20002, 'Departement a atteint le max');
END AFTER STATEMENT;
END GestionDesDept;
