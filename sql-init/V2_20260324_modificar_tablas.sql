-- Módulo 2: Modificación y Evolución del Esquema 
-- Añadir columna de prioridad con restricción de rango 1-5
ALTER TABLE tbl_reportes_fallos 
ADD COLUMN nivel_prioridad NUMERIC(1,0),
ADD CONSTRAINT chk_prioridad
CHECK (nivel_prioridad BETWEEN 1 AND 5); 