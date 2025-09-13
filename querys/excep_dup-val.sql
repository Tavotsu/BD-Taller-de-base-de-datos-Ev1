SET SERVEROUTPUT ON;

-- TODO: Ajustar el codigo para que funcione con los datos de la version nueva.

DECLARE
    v_rut_estudiante NUMBER := 21689802; -- Estudiante sin proyecto.
    v_id_proyecto    NUMBER := 147;      -- Proyecto ya asignado.

BEGIN
    -- Intenta asignar un proyecto que ya está ocupado.
    UPDATE ESTUDIANTE
    SET id_proyecto = v_id_proyecto
    WHERE numrun = v_rut_estudiante;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Proyecto asignado correctamente.');

EXCEPTION
    -- Captura la excepción de valor duplicado en un índice único.
    WHEN DUP_VAL_ON_INDEX THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: El proyecto ' || v_id_proyecto || ' ya está asignado a otro estudiante.');
END;
/