CREATE OR REPLACE TRIGGER trg_MayusculaNombresApellidos
BEFORE INSERT OR UPDATE ON Personas
FOR EACH ROW
BEGIN
    :NEW.Nombres := UPPER(:NEW.Nombres);
    :NEW.Apellidos := UPPER(:NEW.Apellidos);
END;