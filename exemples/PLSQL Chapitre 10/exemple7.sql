CREATE OR REPLACE TRIGGER departementsnumdep
BEFORE INSERT ON Departements -- Ici
FOR EACH ROW
BEGIN
  SELECT 'd' ||
      COALESCE(LPAD( MAX(SUBSTR(numdep,2,5))+1,5,'0'),'00001')
      INTO :NEW.numdep   FROM departements; -- Ici
END;
