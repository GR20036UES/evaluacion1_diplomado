CREATE OR REPLACE FUNCTION fn_actualizar_estado_pizarra()
RETURNS TRIGGER AS $$
BEGIN
    -- Lógica de Negocio: Actualiza la pizarra vinculada al nuevo reporte 
    UPDATE tbl_pizarras 
    SET estado = 'En Reparación'
    WHERE id_pizarra = NEW.id_pizarra; 
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_nuevo_reporte_fallo
AFTER INSERT ON tbl_reportes_fallos
FOR EACH ROW
EXECUTE FUNCTION fn_actualizar_estado_pizarra();
--JUSTIFICACION
/*¿Por qué FOR EACH ROW?: Porque el cambio de estado debe aplicarse individualmente 
a la pizarra específica mencionada en cada fila insertada. Si se insertan varios 
reportes a la vez, cada pizarra afectada debe actualizarse.*/

/*¿Por qué el timing AFTER?: Es preferible en actualizaciones cruzadas para gaerantizar
que la inserción del reporte fue exitosa y definitiva antes de modificar otra tabla. 
Esto asegura la consistencia de la transacción.*/