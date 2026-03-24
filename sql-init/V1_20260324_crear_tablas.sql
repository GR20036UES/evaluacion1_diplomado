-- Módulo 1: Creación de Objetos y Lógica Programable (DDL Avanzado)

CREATE TABLE tbl_pizarras (
    id_pizarra SERIAL PRIMARY KEY,
    ubicacion VARCHAR(50) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    
    CONSTRAINT chk_estado 
    CHECK (estado IN ('Operativa', 'En Reparación', 'Fuera de Servicio'))
);

CREATE TABLE tbl_tecnicos (
    id_tecnico SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_reportes_fallos (
    id_reporte VARCHAR(6) PRIMARY KEY,
    fecha DATE NOT NULL,
    descripcion VARCHAR(50) NOT NULL);
    