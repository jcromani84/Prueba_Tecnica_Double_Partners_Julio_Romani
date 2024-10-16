CREATE OR REPLACE PROCEDURE sp_ActualizarPersona (
    p_ID IN NUMBER,
    p_Nombres IN VARCHAR2,
    p_Apellidos IN VARCHAR2,
    p_NumeroIdentificacion IN VARCHAR2,
    p_TipoIdentificacion IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_Salario IN NUMBER,
    p_Estado IN VARCHAR2
) AS
BEGIN
    UPDATE Personas
    SET Nombres = p_Nombres,
        Apellidos = p_Apellidos,
        NumeroIdentificacion = p_NumeroIdentificacion,
        TipoIdentificacion = p_TipoIdentificacion,
        Email = p_Email,
        Salario = p_Salario,
        Estado = p_Estado
    WHERE ID = p_ID;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: No se encontró el registro con ID ' || p_ID);
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Registro actualizado exitosamente.');
    END IF;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Error: Identificación o Email ya existe.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;