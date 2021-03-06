CREATE TABLE PUESTO_MIEMBRO
(
    MIEMBRO_cod_miembro INTEGER NOT NULL,
    PUESTO_cod_puesto INTEGER NOT NULL,
    DEPARTAMENTO_cod_depto INTEGER NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    
    CONSTRAINT PUESTO_MIEMBRO_pkey PRIMARY KEY (MIEMBRO_cod_miembro,PUESTO_cod_puesto,DEPARTAMENTO_cod_depto),

    CONSTRAINT fk_MIEMBRO_cod_miembro FOREIGN KEY (MIEMBRO_cod_miembro) REFERENCES MIEMBRO (cod_miembro),
    CONSTRAINT fk_PUESTO_cod_puesto FOREIGN KEY (PUESTO_cod_puesto) REFERENCES PUESTO (cod_puesto),
    CONSTRAINT fk_DEPARTAMENTO_cod_depto FOREIGN KEY (DEPARTAMENTO_cod_depto) REFERENCES DEPARTAMENTO (cod_depto)
);


