ALTER TABLE tbl_reportes_fallos
    ADD COLUMN id_pizarra INT NOT NULL,
    ADD COLUMN id_tecnico INT,
    -- Regla Propagar: Si se elimina la pizarra, se borra su historial
    ADD CONSTRAINT fk_pizarra FOREIGN KEY (id_pizarra)
        REFERENCES tbl_pizarras(id_pizarra) ON DELETE CASCADE,
    -- Regla Anular: Si el técnico se va, el reporte queda para reasignar
    ADD CONSTRAINT fk_tecnico FOREIGN KEY (id_tecnico)
        REFERENCES tbl_tecnicos(id_tecnico) ON DELETE SET NULL;