--INDICES
-- Índice para búsquedas por rango de fechas
CREATE INDEX idx_reportes_fecha ON tbl_reportes_fallos(fecha); 

-- Índice para el identificador del técnico
CREATE INDEX idx_reportes_tecnico ON tbl_reportes_fallos(id_tecnico); 

--JUSTIFICACIONES
/*Impacto en el Planificador: Los índices pormiten que el optimizador de PostgreSQL
elija un Index Scan (búsqueda directa) en lugar de un Sequential Scan (revisar toda la tabla), 
reduciendo drásticamente el tiempo de respuesta en tablas grandes.*/

/*Balance de Estritura: Debes considerar el -coste del equipaimiento adicional--: aunque la lectura 
es más rápida, cada operación de INSERT o UPDATE será ligeramente más lenta porque 
el motor también debe actualizar los índices.*/