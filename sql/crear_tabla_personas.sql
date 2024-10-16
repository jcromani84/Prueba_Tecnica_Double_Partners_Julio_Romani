CREATE TABLE Personas (
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    Nombres VARCHAR2(50) NOT NULL,
    Apellidos VARCHAR2(50) NOT NULL,
    NumeroIdentificacion VARCHAR2(20) UNIQUE NOT NULL,
    TipoIdentificacion VARCHAR2(5) NOT NULL CHECK (TipoIdentificacion IN ('CC', 'TI', 'NIT', 'PAS')),
    Email VARCHAR2(100) UNIQUE NOT NULL CHECK (Email LIKE '%_@__%.__%'),  -- formato básico de email
    Salario NUMBER(10, 2) NOT NULL CHECK (Salario >= 0),
    Estado VARCHAR2(10) NOT NULL CHECK (Estado IN ('ACTIVO', 'INACTIVO')),
    IdentificacionCompleta AS (TipoIdentificacion || NumeroIdentificacion),
    NombreCompleto AS (Nombres || ' ' || Apellidos)
);