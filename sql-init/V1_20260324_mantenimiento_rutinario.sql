--Módulo 3: Mantenimiento Rutinario y Salud de la Base de Datos 
-- Limpieza de espacio y actualización de estadísticas
VACUUM ANALYZE tbl_reportes_fallos; 

--JUSTIFICACION
/*VACUUM: Reclama el espacio físico en disco ocopado por registros obsoletos, 
evietando que los archivos de la base de datos crezcan innecesariamente.*/

/*ANALYZE: Actualiza los metadatos de distribución de datos (estadísticas), 
permitiendo que el planificador elija la ruta de acceso más eficiente para las consultas.*/