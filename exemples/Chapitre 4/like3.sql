CREATE TABLE Chaines
(
    NomChar4     CHAR(4),
    NomChar10    CHAR(10),
    NomVarChar4  VARCHAR(4),
    NomVarChar10 VARCHAR(10)
);

INSERT INTO Chaines
VALUES ('SQL', 'SQL', 'SQL', 'SQL');
COMMIT;

SELECT *
FROM Chaines
WHERE NomVarChar4 LIKE NomVarChar10;
