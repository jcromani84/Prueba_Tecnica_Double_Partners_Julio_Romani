CREATE OR REPLACE PROCEDURE sp_AjustarSalario (
    p_ID IN NUMBER
) AS
    v_Salario NUMBER;
BEGIN
    SELECT Salario INTO v_Salario FROM Personas WHERE ID = p_ID;

    IF v_Salario < 2000 THEN
        v_Salario := v_Salario * 1.10;
        UPDATE Personas SET Salario = v_Salario WHERE ID = p_ID;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Nuevo salario: ' || v_Salario);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se realizaron cambios, el salario es mayor o igual a 2000.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: ID no existe.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;