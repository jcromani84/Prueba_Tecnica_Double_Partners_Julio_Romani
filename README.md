# Prueba Técnica Julio Romani

## Descripción
Este repositorio contiene la solución para la prueba técnica que incluye la creación de una tabla 'Personas', trigger, procedimientos almacenados, y la exposición de servicios REST utilizando Oracle REST Data Services (ORDS).

## Estructura del Repositorio
- **sql/**: Contiene scripts SQL para crear la tabla y procedimientos.
- **docs/**: Contiene la documentación de la API en formato OpenAPI.

## Instrucciones para Ejecutar y Probar la Solución

### Requisitos Previos
- Oracle Database con PL/SQL habilitado.
- Oracle REST Data Services (ORDS) instalado y configurado.

### Ejecución de Scripts SQL

1. **Crear la Tabla Personas**
   @sql/crear_tabla_personas.sql
   
2. **Crear Trigger**
   @sql/trigger_trg_MayusculaNombresApellidos.sql
   
3. **Crear Procedimiento Almacenado Insertar**
   @sql/sp_InsertarPersona.sql
   
4. **Crear Procedimiento Almacenado Actualizar**
   @sql/sp_ActualizarPersona.sql
   
5. **Script Insertar y Actualizar registros**
   @sql/script_insert_update.sql

6. **Crear Procedimiento Almacenado Ajustar Salario**
   @sql/sp_AjustarSalario.sql

7. **Configurar ORDS Ejecuta el siguiente script para configurar los endpoints REST**
   @sql/ords_config.sql