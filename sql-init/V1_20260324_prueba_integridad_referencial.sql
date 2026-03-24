--Prueba de Integridad Referencial (Borrado)
-- 1. Borrar al técnico y verificar reporte (SET NULL)
DELETE FROM tbl_tecnicos WHERE id_tecnico = 1;
SELECT * FROM tbl_reportes_fallos; -- El id_tecnico debería ser NULL

-- 2. Borrar la pizarra y verificar reporte (CASCADE)
DELETE FROM tbl_pizarras WHERE id_pizarra = 1;
SELECT rf.fecha, rf.descripcion, tc.nombre as tecnico, p.ubicacion, p.estado FROM tbl_reportes_fallos rf JOIN tbl_tecnicos tc ON rf.id_tecnico = tc.id_tecnico JOIN tbl_pizarras p ON rf.id_pizarra = p.id_pizarra;