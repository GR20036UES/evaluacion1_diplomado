-- Crear reporte de fallo (ID de pizarra y técnico según la inserción anterior)
INSERT INTO tbl_reportes_fallos (id_reporte,id_pizarra, id_tecnico, fecha, descripcion, nivel_prioridad) 
VALUES ('FP1', 1, 1, CURRENT_DATE, 'Píxel muerto en cuadrante superior', 3);
INSERT INTO tbl_reportes_fallos (id_reporte,id_pizarra, id_tecnico, fecha, descripcion, nivel_prioridad) 
VALUES ('EC1', 2, 2, CURRENT_DATE, 'Pizarra no tiene internet', 2);

-- Verificar si el trigger cambió el estado de la pizarra 1
SELECT * FROM tbl_pizarras;