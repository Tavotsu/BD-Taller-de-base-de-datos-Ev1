SET SERVEROUTPUT ON;

DECLARE
    
    v_rut_estudiante NUMBER := 18307969; 
    v_id_proyecto    NUMBER := 147;      

BEGIN
    -- Intentamos asignar el proyecto al estudiante.
    UPDATE ESTUDIANTE
    SET id_proyecto = v_id_proyecto
    WHERE numrun = v_rut_estudiante;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Proyecto asignado correctamente.');

EXCEPTION
    -- Aqui se captura la excepción.
    WHEN DUP_VAL_ON_INDEX THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: El proyecto ' || v_id_proyecto || ' ya está asignado a otro estudiante.');
END;
/