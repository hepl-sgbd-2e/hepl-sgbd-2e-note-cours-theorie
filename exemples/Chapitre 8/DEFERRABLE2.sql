CREATE TABLE t
(
    c1 integer,
    c2 integer,
    CONSTRAINT c CHECK (c1 < c2)
        INITIALLY DEFERRED
);
