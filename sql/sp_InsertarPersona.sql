CREATE OR REPLACE PROCEDURE sp_InsertarPersona (
    p_Nombres IN VARCHAR2,
    p_Apellidos IN VARCHAR2,
    p_NumeroIdentificacion IN VARCHAR2,
    p_TipoIdentificacion IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_Salario IN NUMBER,
    p_Estado IN VARCHAR2
) AS
BEGIN
    INSERT INTO Personas (Nombres, Apellidos, NumeroIdentificacion, TipoIdentificacion, Email, Salario, Estado)
    VALUES (p_Nombres, p_Apellidos, p_NumeroIdentificacion, p_TipoIdentificacion, p_Email, p_Salario, p_Estado);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Registro insertado exitosamente.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Error: Identificación o Email ya existe.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;