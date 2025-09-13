-- TABLA DE PROFESORES
CREATE TABLE PROFESOR (
    id_profesor NUMBER PRIMARY KEY,
    pnombre     VARCHAR2(50),
    papellido   VARCHAR2(50),
    rut         NUMBER UNIQUE
);

-- TABLA DE TRACKS (CATEGORÍAS DE PROYECTOS)
CREATE TABLE TRACK (
    id_track      NUMBER PRIMARY KEY,
    nombre        VARCHAR2(100) UNIQUE,
    id_profesor   NUMBER,
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor)
);

-- TABLA DE PROYECTOS
CREATE TABLE PROYECTO (
    id_proyecto   NUMBER PRIMARY KEY,
    nombre        VARCHAR2(150),
    descripcion   VARCHAR2(500),
    id_track      NUMBER,
    FOREIGN KEY (id_track) REFERENCES TRACK(id_track)
);

-- TABLA DE ESTUDIANTES
CREATE TABLE ESTUDIANTE (
    numrun      NUMBER PRIMARY KEY,
    dv_run      CHAR(1),
    pnombre     VARCHAR2(50),
    snombre     VARCHAR2(50),
    papellido   VARCHAR2(50),
    mapellido   VARCHAR2(50),
    fec_nac     DATE,
    id_genero   NUMBER, -- 1: Femenino, 2: Masculino
    id_proyecto NUMBER UNIQUE, -- Puede ser NULL
    FOREIGN KEY (id_proyecto) REFERENCES PROYECTO(id_proyecto)
);

-- TABLA DE EVENTOS
CREATE TABLE EVENTO (
    id_evento   NUMBER PRIMARY KEY,
    nombre      VARCHAR2(150),
    lugar       VARCHAR2(100),
    fecha       DATE,
    hora_inicio VARCHAR2(5), -- Formato HH24:MI
    hora_fin    VARCHAR2(5)  -- Formato HH24:MI
);

CREATE TABLE LOG_ASIGNACIONES (
    id_log       NUMBER GENERATED ALWAYS AS IDENTITY,
    rut_estudiante NUMBER,
    id_proyecto  NUMBER,
    fecha_asig   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id_log)
);

-- TABLA INTERMEDIA: EVENTO <-> PROFESOR
CREATE TABLE EVENTO_PROFESOR (
    id_evento     NUMBER,
    id_profesor   NUMBER,
    PRIMARY KEY (id_evento, id_profesor),
    FOREIGN KEY (id_evento) REFERENCES EVENTO(id_evento),
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor)
);

-- TABLA INTERMEDIA: EVENTO <-> ESTUDIANTE
CREATE TABLE EVENTO_ESTUDIANTE (
    id_evento           NUMBER,
    numrun_estudiante   NUMBER,
    PRIMARY KEY (id_evento, numrun_estudiante),
    FOREIGN KEY (id_evento) REFERENCES EVENTO(id_evento),
    FOREIGN KEY (numrun_estudiante) REFERENCES ESTUDIANTE(numrun)
);

-- SECUENCIA PARA IDs DE EVENTOS
CREATE SEQUENCE SEQ_EVENTO START WITH 1 INCREMENT BY 1;
-- SECUENCIAS PARA IDs AUTO-INCREMENTALES
CREATE SEQUENCE SEQ_PROFESOR START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_TRACK START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SEQ_PROYECTO START WITH 101 INCREMENT BY 1;