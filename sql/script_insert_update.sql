BEGIN
    sp_InsertarPersona('Juan', 'Pérez', '123456789', 'CC', 'juan.perez@example.com', 1500.00, 'ACTIVO');
    sp_InsertarPersona('Ana', 'Gómez', '987654321', 'TI', 'ana.gomez@example.com', 2000.00, 'ACTIVO');
    sp_InsertarPersona('Luis', 'Martínez', '456789123', 'NIT', 'luis.martinez@example.com', 2500.00, 'INACTIVO');
    sp_InsertarPersona('Marta', 'Rodríguez', '321654987', 'PAS', 'marta.rodriguez@example.com', 3000.00, 'ACTIVO');
    sp_InsertarPersona('Carlos', 'Sánchez', '654321789', 'CC', 'carlos.sanchez@example.com', 1800.00, 'INACTIVO');
END;


BEGIN
    sp_ActualizarPersona(1, 'Juan Carlos', 'Pérez', '123456789', 'CC', 'juan.perez@nuevo.com', 1600.00, 'ACTIVO');
    sp_ActualizarPersona(2, 'Ana María', 'Gómez', '987654321', 'TI', 'ana.maria.gomez@example.com', 2100.00, 'ACTIVO');
    sp_ActualizarPersona(3, 'Luis Fernando', 'Martínez', '456789123', 'NIT', 'luis.fernando.martinez@example.com', 2600.00, 'INACTIVO');
END;