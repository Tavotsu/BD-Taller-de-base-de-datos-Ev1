-- Script de Poblado v2 para Base de Datos CITT DUOC UC (Oracle)

-- Limpieza de tablas en orden de dependencia inversa
DELETE FROM EVENTO_ESTUDIANTE;
DELETE FROM EVENTO_PROFESOR;
DELETE FROM EVENTO;
DELETE FROM ESTUDIANTE;
DELETE FROM PROYECTO;
DELETE FROM TRACK;
DELETE FROM PROFESOR;

-- Reinicio de secuencias
DROP SEQUENCE SEQ_PROFESOR;
CREATE SEQUENCE SEQ_PROFESOR START WITH 1 INCREMENT BY 1;
DROP SEQUENCE SEQ_TRACK;
CREATE SEQUENCE SEQ_TRACK START WITH 1 INCREMENT BY 1;
DROP SEQUENCE SEQ_PROYECTO;
CREATE SEQUENCE SEQ_PROYECTO START WITH 101 INCREMENT BY 1;
DROP SEQUENCE SEQ_EVENTO;
CREATE SEQUENCE SEQ_EVENTO START WITH 1 INCREMENT BY 1;

-- 1. Poblado de la tabla PROFESOR
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Juan', 'Pérez', 10687381);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Ana', 'García', 13500776);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Carlos', 'López', 13243785);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'María', 'Martínez', 10453137);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Luis', 'Hernández', 13428067);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Elena', 'Gómez', 12392250);

-- 2. Poblado de la tabla TRACK
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Robótica', 1);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Programación Competitiva', 2);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Inteligencia Artificial', 3);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Ciberseguridad', 4);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Desarrollo de Videojuegos', 5);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Desarrollo Web y Móvil', 6);

-- 3. Poblado de la tabla PROYECTO
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (101, 'Modelo de Detección de Emociones v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (102, 'Robot Seguidor de Línea v1', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (103, 'Plataforma de Juez en Línea v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (104, 'Framework para Pruebas de Estrés v3', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (105, 'Framework de Simulación de Phishing v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (106, 'Chatbot Asistente DUOC v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (107, 'Plataforma Web de Intercambio de Habilidades v3', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (108, 'RPG 2D con Narrativa Interactiva v1', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (109, 'Juego de Estrategia en Tiempo Real v2', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (110, 'Framework de Simulación de Phishing v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (111, 'Brazo Robótico Autónomo v4', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (112, 'Framework para Pruebas de Estrés v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (113, 'Framework para Pruebas de Estrés v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (114, 'Sistema de Detección de Intrusiones v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (115, 'RPG 2D con Narrativa Interactiva v2', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (116, 'Juego de Estrategia en Tiempo Real v5', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (117, 'Chatbot Asistente DUOC v4', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (118, 'Modelo de Detección de Emociones v1', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (119, 'Plataforma de Juez en Línea v4', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (120, 'RPG 2D con Narrativa Interactiva v2', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (121, 'Herramienta de Análisis de Vulnerabilidades v4', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (122, 'Sistema de Navegación para Drones v5', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (123, 'Plataforma de Juez en Línea v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (124, 'App para la Gestión de Proyectos CITT v5', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (125, 'Marketplace de Proyectos Freelance v1', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (126, 'Juego de Estrategia en Tiempo Real v1', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (127, 'Sistema de Navegación para Drones v5', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (128, 'Brazo Robótico Autónomo v4', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (129, 'Framework de Simulación de Phishing v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (130, 'Herramienta de Análisis de Vulnerabilidades v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (131, 'Herramienta de Análisis de Vulnerabilidades v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (132, 'App para la Gestión de Proyectos CITT v1', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (133, 'Robot Seguidor de Línea v4', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (134, 'Juego de Estrategia en Tiempo Real v3', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (135, 'Modelo de Detección de Emociones v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (136, 'Plataforma de Juez en Línea v2', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (137, 'Visualizador de Algoritmos v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (138, 'Chatbot Asistente DUOC v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (139, 'Plataforma Web de Intercambio de Habilidades v5', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (140, 'Brazo Robótico Autónomo v3', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (141, 'Plataforma de Juez en Línea v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (142, 'Juego de Estrategia en Tiempo Real v5', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (143, 'Visualizador de Algoritmos v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (144, 'Visualizador de Algoritmos v4', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (145, 'Marketplace de Proyectos Freelance v4', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (146, 'Plataforma Web de Intercambio de Habilidades v3', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (147, 'Framework para Pruebas de Estrés v2', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (148, 'Framework para Pruebas de Estrés v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (149, 'Plataforma Web de Intercambio de Habilidades v5', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (150, 'Modelo de Detección de Emociones v5', 'Descripción del proyecto.', 3);

-- 4. Poblado de la tabla ESTUDIANTE
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19795715, '8', 'Joaquín', 'Martín', 'Sepúlveda', 'Flores', TO_DATE('2004-11-14', 'YYYY-MM-DD'), 2, 128);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20928566, '5', 'Bastián', 'Bastián', 'López', 'Morales', TO_DATE('1998-07-24', 'YYYY-MM-DD'), 2, 133);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18740982, '9', 'Santiago', 'Liam', 'Pérez', 'Contreras', TO_DATE('1999-06-27', 'YYYY-MM-DD'), 2, 111);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21752565, '9', 'Joaquín', 'Maximiliano', 'Contreras', 'Rojas', TO_DATE('2004-08-08', 'YYYY-MM-DD'), 2, 141);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19888809, '5', 'Lucas', 'Benjamín', 'Soto', 'Flores', TO_DATE('2002-11-02', 'YYYY-MM-DD'), 2, 148);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18098800, '9', 'Sofía', 'Catalina', 'Rojas', 'Valenzuela', TO_DATE('1995-10-28', 'YYYY-MM-DD'), 1, 112);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18066191, '3', 'Liam', 'Bastián', 'Fuentes', 'Espinoza', TO_DATE('2005-09-29', 'YYYY-MM-DD'), 2, 101);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18113727, '4', 'Alonso', 'Facundo', 'Muñoz', 'Rojas', TO_DATE('2003-11-18', 'YYYY-MM-DD'), 2, 117);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18692148, '8', 'Martín', 'Gabriel', 'Castillo', 'Contreras', TO_DATE('2001-08-08', 'YYYY-MM-DD'), 2, 150);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21612624, '6', 'Emiliano', 'Santiago', 'Morales', 'Soto', TO_DATE('2006-05-26', 'YYYY-MM-DD'), 2, 105);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21291272, '7', 'Mateo', 'Alonso', 'González', 'Flores', TO_DATE('2007-02-01', 'YYYY-MM-DD'), 2, 110);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18797240, 'K', 'Vicente', 'Alonso', 'Valenzuela', 'Fuentes', TO_DATE('2004-06-12', 'YYYY-MM-DD'), 2, 114);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21820192, 'K', 'Gabriel', 'Joaquín', 'Espinoza', 'Flores', TO_DATE('1999-07-16', 'YYYY-MM-DD'), 2, 134);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20484701, '0', 'Bruno', 'Facundo', 'Martínez', 'Sepúlveda', TO_DATE('1997-12-09', 'YYYY-MM-DD'), 2, 126);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18571944, '8', 'Alonso', 'Santiago', 'Soto', 'Silva', TO_DATE('2004-06-28', 'YYYY-MM-DD'), 2, 109);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18475404, '5', 'Benjamín', 'Emiliano', 'Soto', 'Espinoza', TO_DATE('2006-08-08', 'YYYY-MM-DD'), 2, 125);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19588023, '9', 'Benjamín', 'Liam', 'Martínez', 'Valenzuela', TO_DATE('1995-10-25', 'YYYY-MM-DD'), 2, 149);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21652554, 'K', 'Victoria', 'Julieta', 'Flores', 'Díaz', TO_DATE('2004-07-18', 'YYYY-MM-DD'), 1, 146);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18591568, '9', 'Maite', 'Antonella', 'Espinoza', 'González', TO_DATE('1999-05-07', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19904883, 'K', 'Joaquín', 'Joaquín', 'Díaz', 'Muñoz', TO_DATE('2000-09-09', 'YYYY-MM-DD'), 2, 124);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19595393, '7', 'Gabriel', 'Martín', 'Muñoz', 'Soto', TO_DATE('2005-09-11', 'YYYY-MM-DD'), 2, 138);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21682908, '5', 'Isabella', 'Agustina', 'Rojas', 'Pérez', TO_DATE('2005-09-26', 'YYYY-MM-DD'), 1, 108);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20028726, '6', 'Thiago', 'Benjamín', 'Sepúlveda', 'González', TO_DATE('2002-12-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21334983, 'K', 'Thiago', 'Santiago', 'Torres', 'Contreras', TO_DATE('1999-02-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20793870, 'K', 'Liam', 'Liam', 'Rojas', 'Torres', TO_DATE('2003-02-25', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18076718, '5', 'Gaspar', 'Bruno', 'Torres', 'Flores', TO_DATE('2001-08-20', 'YYYY-MM-DD'), 2, 143);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20490781, '1', 'Victoria', 'Julieta', 'Silva', 'Martínez', TO_DATE('2005-02-11', 'YYYY-MM-DD'), 1, 106);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20835939, '8', 'Gaspar', 'Vicente', 'Torres', 'Fuentes', TO_DATE('1995-12-07', 'YYYY-MM-DD'), 2, 145);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19526774, 'K', 'Joaquín', 'Bruno', 'Castillo', 'Muñoz', TO_DATE('2000-08-15', 'YYYY-MM-DD'), 2, 129);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18953943, '6', 'Maite', 'Renata', 'López', 'Espinoza', TO_DATE('2003-06-30', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21729915, '2', 'Mateo', 'Bruno', 'González', 'Soto', TO_DATE('2001-10-25', 'YYYY-MM-DD'), 2, 107);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18080757, '8', 'Gabriel', 'Benjamín', 'Flores', 'Castillo', TO_DATE('2000-11-06', 'YYYY-MM-DD'), 2, 135);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19011489, '9', 'Martín', 'Thiago', 'Muñoz', 'Rodríguez', TO_DATE('1995-10-19', 'YYYY-MM-DD'), 2, 142);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18005307, '7', 'Lucas', 'Agustín', 'Valenzuela', 'Flores', TO_DATE('2005-12-13', 'YYYY-MM-DD'), 2, 123);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18072099, '5', 'Gaspar', 'Santiago', 'González', 'Rojas', TO_DATE('2003-05-10', 'YYYY-MM-DD'), 2, 140);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19307986, '5', 'Gaspar', 'Vicente', 'Sepúlveda', 'Contreras', TO_DATE('2000-06-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21805518, '4', 'Santiago', 'Joaquín', 'Araya', 'Sepúlveda', TO_DATE('1999-02-21', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19707690, '9', 'Facundo', 'Benjamín', 'Contreras', 'Flores', TO_DATE('2006-02-07', 'YYYY-MM-DD'), 2, 102);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21074633, '1', 'Sofía', 'Florencia', 'Silva', 'Contreras', TO_DATE('2003-01-14', 'YYYY-MM-DD'), 1, 127);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20464931, '6', 'Thiago', 'Emiliano', 'Pérez', 'López', TO_DATE('2004-06-07', 'YYYY-MM-DD'), 2, 116);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18172413, '7', 'Maite', 'Amanda', 'Pérez', 'Soto', TO_DATE('2005-02-17', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18556548, '3', 'Santiago', 'Gaspar', 'López', 'Muñoz', TO_DATE('2004-08-26', 'YYYY-MM-DD'), 2, 144);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21259932, '8', 'Antonella', 'Josefa', 'Silva', 'Araya', TO_DATE('2002-01-20', 'YYYY-MM-DD'), 1, 147);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21091987, '2', 'Matías', 'Thiago', 'Muñoz', 'Fuentes', TO_DATE('2001-11-11', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21608263, 'K', 'Valentina', 'Josefa', 'Espinoza', 'Díaz', TO_DATE('1997-04-24', 'YYYY-MM-DD'), 1, 115);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18207566, '3', 'Victoria', 'Isidora', 'Castillo', 'Silva', TO_DATE('1999-02-23', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19750830, '2', 'Facundo', 'Lucas', 'Martínez', 'Rodríguez', TO_DATE('2006-03-25', 'YYYY-MM-DD'), 2, 137);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19294912, '2', 'Mateo', 'Alonso', 'Morales', 'Soto', TO_DATE('2000-07-11', 'YYYY-MM-DD'), 2, 121);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18358103, '1', 'Maximiliano', 'Alonso', 'Díaz', 'Pérez', TO_DATE('2005-12-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21071273, '9', 'Bruno', 'Santiago', 'López', 'Espinoza', TO_DATE('1997-04-08', 'YYYY-MM-DD'), 2, 119);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19691331, '9', 'Tomás', 'Tomás', 'Martínez', 'González', TO_DATE('1999-02-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20945762, '8', 'Facundo', 'Mateo', 'Contreras', 'Rodríguez', TO_DATE('1998-11-06', 'YYYY-MM-DD'), 2, 103);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21152496, '0', 'Emiliano', 'Benjamín', 'Flores', 'Rojas', TO_DATE('2000-04-05', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21401565, 'K', 'Facundo', 'Tomás', 'González', 'Martínez', TO_DATE('1998-09-07', 'YYYY-MM-DD'), 2, 113);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19686003, '7', 'Catalina', 'Renata', 'Morales', 'Valenzuela', TO_DATE('1995-12-03', 'YYYY-MM-DD'), 1, 104);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19202262, '2', 'Vicente', 'Matías', 'Morales', 'Morales', TO_DATE('2006-03-23', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21862996, '2', 'Vicente', 'Santiago', 'Martínez', 'Díaz', TO_DATE('2006-03-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21096428, '2', 'Gaspar', 'Vicente', 'Rodríguez', 'Fuentes', TO_DATE('1999-03-12', 'YYYY-MM-DD'), 2, 136);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21904430, '5', 'Emilia', 'Isidora', 'Torres', 'Flores', TO_DATE('2007-01-20', 'YYYY-MM-DD'), 1, 122);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20932371, '0', 'Emilia', 'Martina', 'Díaz', 'Morales', TO_DATE('2005-08-16', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19831058, '1', 'Thiago', 'Lucas', 'Castillo', 'Rojas', TO_DATE('2003-03-25', 'YYYY-MM-DD'), 2, 118);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18651917, '5', 'Vicente', 'Alonso', 'González', 'González', TO_DATE('2000-01-30', 'YYYY-MM-DD'), 2, 131);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18129780, '8', 'Maite', 'Sofía', 'López', 'Sepúlveda', TO_DATE('2000-09-16', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19239842, '8', 'Joaquín', 'Bruno', 'López', 'Rojas', TO_DATE('2007-01-09', 'YYYY-MM-DD'), 2, 120);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19121714, '4', 'Alonso', 'Facundo', 'Rodríguez', 'Silva', TO_DATE('2004-02-12', 'YYYY-MM-DD'), 2, 132);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21601211, '9', 'Santiago', 'Lucas', 'Fuentes', 'Contreras', TO_DATE('2004-04-15', 'YYYY-MM-DD'), 2, 130);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20110513, '7', 'Lucas', 'Facundo', 'Morales', 'Contreras', TO_DATE('2003-07-12', 'YYYY-MM-DD'), 2, 139);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21775879, '3', 'Lucas', 'Thiago', 'Rodríguez', 'Martínez', TO_DATE('2006-10-25', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19042555, 'K', 'Joaquín', 'Gabriel', 'Muñoz', 'Soto', TO_DATE('2002-01-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18859841, '2', 'Emma', 'Valentina', 'Rodríguez', 'Rodríguez', TO_DATE('2002-04-07', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18583511, '1', 'Gabriel', 'Bruno', 'Díaz', 'Contreras', TO_DATE('1998-01-11', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18775833, '5', 'Matías', 'Gabriel', 'Contreras', 'Fuentes', TO_DATE('2003-09-24', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18871959, '7', 'Joaquín', 'Tomás', 'Valenzuela', 'Espinoza', TO_DATE('2005-09-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18154630, '1', 'Alonso', 'Bruno', 'Morales', 'Silva', TO_DATE('1998-10-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19424742, '7', 'Lucas', 'Vicente', 'Espinoza', 'Castillo', TO_DATE('2003-05-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18061026, 'K', 'Emiliano', 'Liam', 'Araya', 'Rodríguez', TO_DATE('2003-11-28', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21770342, '5', 'Mateo', 'Emiliano', 'Flores', 'Silva', TO_DATE('1999-12-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18230300, '3', 'Santiago', 'Santiago', 'Sepúlveda', 'Fuentes', TO_DATE('1997-05-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21747403, '5', 'Liam', 'Gaspar', 'Silva', 'Rodríguez', TO_DATE('2004-06-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19133274, '1', 'Lucas', 'Santiago', 'Fuentes', 'López', TO_DATE('1996-12-17', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21472435, '9', 'Agustina', 'Martina', 'Flores', 'Silva', TO_DATE('1998-01-07', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21309161, '1', 'Gabriel', 'Thiago', 'Pérez', 'Espinoza', TO_DATE('2004-10-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19527921, '7', 'Agustina', 'Emma', 'Rodríguez', 'Castillo', TO_DATE('2001-09-23', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21272252, '9', 'Emiliano', 'Mateo', 'González', 'Díaz', TO_DATE('1997-05-21', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20308826, '4', 'Emiliano', 'Agustín', 'Valenzuela', 'Valenzuela', TO_DATE('2000-11-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21749641, '1', 'Agustín', 'Bruno', 'Valenzuela', 'Sepúlveda', TO_DATE('2002-12-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18953515, '5', 'Joaquín', 'Gabriel', 'Rojas', 'Araya', TO_DATE('2004-09-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21379272, '5', 'Bruno', 'Matías', 'Pérez', 'Pérez', TO_DATE('2004-06-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21325621, '1', 'Tomás', 'Benjamín', 'Soto', 'Torres', TO_DATE('2003-12-19', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20655897, '0', 'Santiago', 'Joaquín', 'Rodríguez', 'Araya', TO_DATE('2005-11-17', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21039583, '0', 'Maite', 'Amanda', 'Rodríguez', 'Muñoz', TO_DATE('2003-09-30', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20233758, '9', 'Mía', 'Victoria', 'Morales', 'Torres', TO_DATE('2000-04-03', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21388065, '9', 'Tomás', 'Bruno', 'Castillo', 'Rodríguez', TO_DATE('2004-12-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19525932, '1', 'Gaspar', 'Gaspar', 'Rojas', 'Morales', TO_DATE('1999-06-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20321432, '4', 'Alonso', 'Gaspar', 'Silva', 'Sepúlveda', TO_DATE('2003-05-01', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21815804, '8', 'Mateo', 'Lucas', 'Martínez', 'Pérez', TO_DATE('1995-09-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20308396, '3', 'Vicente', 'Emiliano', 'Araya', 'Castillo', TO_DATE('1999-06-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21297409, '9', 'Lucas', 'Benjamín', 'Silva', 'Morales', TO_DATE('2005-06-06', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19306502, '3', 'Agustín', 'Facundo', 'Fuentes', 'Muñoz', TO_DATE('1996-09-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18474830, '4', 'Gaspar', 'Bastián', 'Díaz', 'Silva', TO_DATE('2001-11-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19735889, '0', 'Santiago', 'Joaquín', 'Castillo', 'Rodríguez', TO_DATE('1998-12-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19610297, '3', 'Bruno', 'Joaquín', 'Torres', 'Valenzuela', TO_DATE('2007-06-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19806253, '7', 'Bastián', 'Bruno', 'Martínez', 'Silva', TO_DATE('2001-11-28', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18082353, '0', 'Liam', 'Martín', 'Valenzuela', 'Muñoz', TO_DATE('2002-09-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18513818, '6', 'Sofía', 'Valentina', 'Contreras', 'Fuentes', TO_DATE('2005-02-01', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19360429, '3', 'Joaquín', 'Maximiliano', 'Flores', 'Castillo', TO_DATE('2004-02-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18642632, '0', 'Mateo', 'Joaquín', 'Espinoza', 'Muñoz', TO_DATE('1996-05-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20251994, '6', 'Maximiliano', 'Bastián', 'Muñoz', 'Valenzuela', TO_DATE('2004-10-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18155245, 'K', 'Martín', 'Tomás', 'Contreras', 'Díaz', TO_DATE('2005-02-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20933574, '3', 'Vicente', 'Matías', 'Sepúlveda', 'Contreras', TO_DATE('2004-01-24', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18707867, '9', 'Mía', 'Isabella', 'Castillo', 'Flores', TO_DATE('2004-06-04', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21125370, '3', 'Martina', 'Isabella', 'Contreras', 'Sepúlveda', TO_DATE('2005-07-03', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18425583, '9', 'Gabriel', 'Martín', 'Sepúlveda', 'Silva', TO_DATE('2000-10-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19990884, '7', 'Sofía', 'Catalina', 'Díaz', 'Muñoz', TO_DATE('2007-04-03', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20584299, '3', 'Gaspar', 'Gabriel', 'Morales', 'González', TO_DATE('2007-09-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21474824, 'K', 'Facundo', 'Matías', 'Pérez', 'Muñoz', TO_DATE('1995-12-21', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19944281, '3', 'Mía', 'Julieta', 'Araya', 'Araya', TO_DATE('2005-04-24', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19820298, '3', 'Emilia', 'Mía', 'Martínez', 'Araya', TO_DATE('2000-12-10', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19530834, '9', 'Bastián', 'Bruno', 'Muñoz', 'Morales', TO_DATE('1996-09-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18263266, 'K', 'Martín', 'Emiliano', 'Flores', 'Castillo', TO_DATE('1997-08-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18815631, '2', 'Benjamín', 'Bastián', 'Díaz', 'Díaz', TO_DATE('2002-10-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20978146, '8', 'Bruno', 'Vicente', 'Morales', 'Martínez', TO_DATE('2002-10-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18574955, 'K', 'Martín', 'Liam', 'Rojas', 'Soto', TO_DATE('2003-03-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21442757, '5', 'Josefa', 'Florencia', 'Rojas', 'Contreras', TO_DATE('1998-12-25', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20986409, '6', 'Tomás', 'Gaspar', 'Soto', 'Díaz', TO_DATE('1998-06-30', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20374336, 'K', 'Bruno', 'Bruno', 'Silva', 'Martínez', TO_DATE('2002-07-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19416347, '9', 'Liam', 'Thiago', 'López', 'Rojas', TO_DATE('1996-06-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20451696, '0', 'Julieta', 'Antonia', 'Araya', 'Torres', TO_DATE('2001-03-09', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21755876, 'K', 'Vicente', 'Alonso', 'Martínez', 'Castillo', TO_DATE('2001-01-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18043974, '9', 'Bruno', 'Vicente', 'Valenzuela', 'Espinoza', TO_DATE('1998-11-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19964765, '2', 'Valentina', 'Sofía', 'Rodríguez', 'Muñoz', TO_DATE('2000-11-16', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20240711, '0', 'Maximiliano', 'Bastián', 'Sepúlveda', 'Espinoza', TO_DATE('2001-07-31', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19992258, '0', 'Benjamín', 'Bruno', 'Contreras', 'Sepúlveda', TO_DATE('2004-06-06', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21756194, '9', 'Matías', 'Tomás', 'Soto', 'Rojas', TO_DATE('2006-02-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20530359, '6', 'Maximiliano', 'Facundo', 'Soto', 'González', TO_DATE('2002-05-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18121112, '1', 'Bruno', 'Santiago', 'Espinoza', 'Flores', TO_DATE('2001-09-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20802973, '8', 'Matías', 'Gabriel', 'Silva', 'Pérez', TO_DATE('1995-11-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19204194, '5', 'Agustina', 'Trinidad', 'Díaz', 'Contreras', TO_DATE('1996-06-28', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21829293, '3', 'Agustín', 'Gaspar', 'Pérez', 'Silva', TO_DATE('1999-04-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18058875, '2', 'Bastián', 'Lucas', 'Fuentes', 'Fuentes', TO_DATE('1996-09-23', 'YYYY-MM-DD'), 2, NULL);

-- 5. Poblado de la tabla EVENTO y sus relaciones

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Patio Central', TO_DATE('2025-09-23', 'YYYY-MM-DD'), '16:30', '19:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (1, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 21747403);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 18207566);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 19416347);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 18066191);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Laboratorio de Redes', TO_DATE('2025-12-07', 'YYYY-MM-DD'), '16:30', '19:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (2, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 18513818);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 21775879);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 21152496);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 19750830);

-- Evento: Charla Introductoria a la IA Generativa
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Charla Introductoria a la IA Generativa', 'Sala CatchAI', TO_DATE('2025-10-30', 'YYYY-MM-DD'), '14:30', '17:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (3, 5);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (3, 3);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 21682908);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 21388065);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Laboratorio de Redes', TO_DATE('2025-11-14', 'YYYY-MM-DD'), '14:30', '16:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (4, 4);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (4, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 18740982);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 18082353);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 18571944);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 21682908);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Sala CatchAI', TO_DATE('2025-11-05', 'YYYY-MM-DD'), '09:00', '11:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (5, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 20484701);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 20530359);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Sala de Conferencias B', TO_DATE('2025-10-07', 'YYYY-MM-DD'), '13:00', '16:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (6, 6);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (6, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 19527921);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 20240711);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 20835939);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Patio Central', TO_DATE('2025-11-14', 'YYYY-MM-DD'), '13:30', '14:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (7, 2);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (7, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 21291272);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 21388065);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 19992258);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 18098800);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 18230300);

-- Evento: Seminario de Desarrollo con Unity
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Seminario de Desarrollo con Unity', 'Auditorio Principal', TO_DATE('2025-10-20', 'YYYY-MM-DD'), '12:00', '13:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (8, 4);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (8, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 18871959);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 19360429);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 18207566);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 19992258);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 21608263);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Sala de Conferencias B', TO_DATE('2025-12-04', 'YYYY-MM-DD'), '11:30', '12:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (9, 5);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (9, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 19820298);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 19525932);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 19011489);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Sala CatchAI', TO_DATE('2025-09-21', 'YYYY-MM-DD'), '15:30', '17:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (10, 3);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (10, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 21862996);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 19992258);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 21039583);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 18113727);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 19806253);

-- Evento: Seminario de Desarrollo con Unity
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Seminario de Desarrollo con Unity', 'Sala CatchAI', TO_DATE('2025-11-19', 'YYYY-MM-DD'), '13:00', '14:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (11, 2);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (11, 6);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (11, 19294912);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (11, 20028726);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (11, 21334983);

-- Evento: Seminario de Desarrollo con Unity
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Seminario de Desarrollo con Unity', 'Patio Central', TO_DATE('2025-10-27', 'YYYY-MM-DD'), '15:00', '18:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (12, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 20233758);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 21747403);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 19806253);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 21442757);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 18080757);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Auditorio Principal', TO_DATE('2025-11-25', 'YYYY-MM-DD'), '15:00', '18:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (13, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 18474830);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 19944281);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 19133274);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 19011489);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Sala de Conferencias B', TO_DATE('2025-10-13', 'YYYY-MM-DD'), '15:30', '17:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (14, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 19990884);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 19121714);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 20308396);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 21039583);

-- Evento: Charla Introductoria a la IA Generativa
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Charla Introductoria a la IA Generativa', 'Auditorio Principal', TO_DATE('2025-11-07', 'YYYY-MM-DD'), '09:00', '10:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (15, 4);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (15, 3);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 20802973);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 19202262);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 21601211);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 19750830);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 18066191);

COMMIT;
