BEGIN
    ORDS.ENABLE_SCHEMA(
        p_enabled => TRUE,
        p_schema => 'usuario',
        p_url_mapping_type => 'BASE_PATH',
        p_base_path => '/api/personas'
    );

    ORDS.DEFINE_MODULE(
        p_module_name => 'personas',
        p_base_path => '/api/personas/',
        p_item => NULL
    );

    -- GET endpoint
    ORDS.DEFINE_HANDLER(
        p_module_name => 'personas',
        p_pattern => 'consultar',
        p_method => 'GET',
        p_source_type => 'plsql',
        p_source => 'BEGIN
                        -- Lógica para obtener registro activo
                    END;'
    );

    -- POST endpoint
    ORDS.DEFINE_HANDLER(
        p_module_name => 'personas',
        p_pattern => 'insertar',
        p_method => 'POST',
        p_source_type => 'plsql',
        p_source => 'BEGIN
                        sp_InsertarPersona(:Nombres, :Apellidos, :NumeroIdentificacion, :TipoIdentificacion, :Email, :Salario, :Estado);
                    END;'
    );

    -- PUT endpoint
    ORDS.DEFINE_HANDLER(
        p_module_name => 'personas',
        p_pattern => 'actualizar',
        p_method => 'PUT',
        p_source_type => 'plsql',
        p_source => 'BEGIN
                        sp_ActualizarPersona(:ID, :Nombres, :Apellidos, :NumeroIdentificacion, :TipoIdentificacion, :Email, :Salario, :Estado);
                    END;'
    );

    -- DELETE endpoint
    ORDS.DEFINE_HANDLER(
        p_module_name => 'personas',
        p_pattern => 'eliminar',
        p_method => 'DELETE',
        p_source_type => 'plsql',
        p_source => 'BEGIN
                        -- Lógica para eliminar registro de forma lógica
                    END;'
    );

END;