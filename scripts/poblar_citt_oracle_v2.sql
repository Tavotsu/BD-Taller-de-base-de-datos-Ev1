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
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Juan', 'Pérez', 11111314);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Ana', 'García', 10056692);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Carlos', 'López', 13494771);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'María', 'Martínez', 13293492);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Luis', 'Hernández', 13121617);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Elena', 'Gómez', 10722525);

-- 2. Poblado de la tabla TRACK
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Robótica', 1);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Programación Competitiva', 2);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Inteligencia Artificial', 3);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Ciberseguridad', 4);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Desarrollo de Videojuegos', 5);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Desarrollo Web y Móvil', 6);

-- 3. Poblado de la tabla PROYECTO
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (101, 'Sistema de Recomendación Educativo v4', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (102, 'Juego Educativo sobre Historia v5', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (103, 'Herramienta de Análisis de Vulnerabilidades v5', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (104, 'Framework de Simulación de Phishing v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (105, 'Visualizador de Algoritmos v4', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (106, 'Framework para Pruebas de Estrés v3', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (107, 'Sistema de Recomendación Educativo v4', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (108, 'Juego Educativo sobre Historia v3', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (109, 'Marketplace de Proyectos Freelance v5', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (110, 'Sistema de Navegación para Drones v1', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (111, 'Herramienta de Análisis de Vulnerabilidades v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (112, 'Sistema de Recomendación Educativo v2', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (113, 'Chatbot Asistente DUOC v2', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (114, 'Marketplace de Proyectos Freelance v3', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (115, 'Visualizador de Algoritmos v3', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (116, 'Herramienta de Análisis de Vulnerabilidades v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (117, 'Juego de Estrategia en Tiempo Real v2', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (118, 'Sistema de Recomendación Educativo v4', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (119, 'Plataforma Web de Intercambio de Habilidades v5', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (120, 'Modelo de Detección de Emociones v5', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (121, 'Visualizador de Algoritmos v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (122, 'Framework de Simulación de Phishing v3', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (123, 'Marketplace de Proyectos Freelance v5', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (124, 'Sistema de Recomendación Educativo v1', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (125, 'RPG 2D con Narrativa Interactiva v2', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (126, 'Framework de Simulación de Phishing v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (127, 'Marketplace de Proyectos Freelance v5', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (128, 'Modelo de Detección de Emociones v5', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (129, 'Sistema de Detección de Intrusiones v4', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (130, 'Sistema de Navegación para Drones v1', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (131, 'Sistema de Navegación para Drones v2', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (132, 'Plataforma de Juez en Línea v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (133, 'RPG 2D con Narrativa Interactiva v3', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (134, 'Juego Educativo sobre Historia v1', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (135, 'Framework de Simulación de Phishing v3', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (136, 'Plataforma de Juez en Línea v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (137, 'Robot Seguidor de Línea v4', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (138, 'Chatbot Asistente DUOC v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (139, 'Robot Seguidor de Línea v2', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (140, 'Framework de Simulación de Phishing v4', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (141, 'Brazo Robótico Autónomo v3', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (142, 'Visualizador de Algoritmos v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (143, 'Marketplace de Proyectos Freelance v2', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (144, 'Chatbot Asistente DUOC v4', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (145, 'Modelo de Detección de Emociones v1', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (146, 'Juego Educativo sobre Historia v1', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (147, 'Chatbot Asistente DUOC v5', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (148, 'Sistema de Recomendación Educativo v5', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (149, 'Framework para Pruebas de Estrés v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (150, 'Sistema de Recomendación Educativo v2', 'Descripción del proyecto.', 3);

-- 4. Poblado de la tabla ESTUDIANTE
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18371475, '9', 'Maximiliano', 'Lucas', 'Flores', 'López', TO_DATE('2002-01-31', 'YYYY-MM-DD'), 2, 110);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19369489, '6', 'Maximiliano', 'Bruno', 'Soto', 'González', TO_DATE('2002-09-28', 'YYYY-MM-DD'), 2, 139);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19391193, '5', 'Bastián', 'Gabriel', 'González', 'Torres', TO_DATE('2001-02-16', 'YYYY-MM-DD'), 2, 130);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19183756, '8', 'Tomás', 'Vicente', 'Rojas', 'González', TO_DATE('1997-09-23', 'YYYY-MM-DD'), 2, 132);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18730921, '2', 'Bastián', 'Vicente', 'Fuentes', 'González', TO_DATE('1997-10-30', 'YYYY-MM-DD'), 2, 121);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20615263, 'K', 'Valentina', 'Agustina', 'Valenzuela', 'Martínez', TO_DATE('2004-11-04', 'YYYY-MM-DD'), 1, 149);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18555444, '9', 'Bastián', 'Santiago', 'Espinoza', 'Silva', TO_DATE('2007-05-06', 'YYYY-MM-DD'), 2, 124);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18335997, '5', 'Catalina', 'Amanda', 'Araya', 'Martínez', TO_DATE('2004-06-27', 'YYYY-MM-DD'), 1, 148);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19561083, '5', 'Bruno', 'Bastián', 'Rodríguez', 'Soto', TO_DATE('2004-02-23', 'YYYY-MM-DD'), 2, 112);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21568293, '5', 'Gabriel', 'Facundo', 'Silva', 'Flores', TO_DATE('1998-10-05', 'YYYY-MM-DD'), 2, 129);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18521740, 'K', 'Joaquín', 'Tomás', 'Muñoz', 'Valenzuela', TO_DATE('2000-05-28', 'YYYY-MM-DD'), 2, 140);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19841436, '0', 'Maximiliano', 'Mateo', 'Rodríguez', 'Sepúlveda', TO_DATE('2003-10-06', 'YYYY-MM-DD'), 2, 126);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20291284, '2', 'Bruno', 'Mateo', 'González', 'Fuentes', TO_DATE('2005-05-08', 'YYYY-MM-DD'), 2, 117);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19464733, '6', 'Agustín', 'Liam', 'Castillo', 'López', TO_DATE('1996-05-26', 'YYYY-MM-DD'), 2, 146);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21667524, 'K', 'Martín', 'Mateo', 'Soto', 'Flores', TO_DATE('2001-12-10', 'YYYY-MM-DD'), 2, 125);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18904671, '5', 'Valentina', 'Emilia', 'González', 'Martínez', TO_DATE('2006-03-08', 'YYYY-MM-DD'), 1, 119);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21083641, '1', 'Benjamín', 'Vicente', 'Silva', 'López', TO_DATE('1996-09-20', 'YYYY-MM-DD'), 2, 123);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21223543, '1', 'Mateo', 'Liam', 'Fuentes', 'Flores', TO_DATE('2000-02-16', 'YYYY-MM-DD'), 2, 127);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18365239, '7', 'Santiago', 'Alonso', 'Torres', 'Martínez', TO_DATE('1996-06-23', 'YYYY-MM-DD'), 2, 105);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20548818, '9', 'Benjamín', 'Santiago', 'Sepúlveda', 'Rojas', TO_DATE('2005-11-30', 'YYYY-MM-DD'), 2, 133);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20573678, '6', 'Gabriel', 'Benjamín', 'Torres', 'Castillo', TO_DATE('1999-05-12', 'YYYY-MM-DD'), 2, 128);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18830781, '7', 'Josefa', 'Emma', 'Flores', 'Martínez', TO_DATE('2000-12-07', 'YYYY-MM-DD'), 1, 136);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18307969, '7', 'Benjamín', 'Alonso', 'Muñoz', 'González', TO_DATE('1997-10-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20417291, '9', 'Liam', 'Martín', 'Morales', 'Flores', TO_DATE('2003-01-24', 'YYYY-MM-DD'), 2, 107);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18251608, '2', 'Bastián', 'Bruno', 'Muñoz', 'Espinoza', TO_DATE('1998-08-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19235423, '4', 'Gabriel', 'Bastián', 'Morales', 'Silva', TO_DATE('2002-01-25', 'YYYY-MM-DD'), 2, 134);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19717790, 'K', 'Valentina', 'Renata', 'González', 'Muñoz', TO_DATE('1998-06-11', 'YYYY-MM-DD'), 1, 114);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21267378, '1', 'Maximiliano', 'Martín', 'Fuentes', 'López', TO_DATE('2006-05-14', 'YYYY-MM-DD'), 2, 122);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21689802, '8', 'Emiliano', 'Gabriel', 'Silva', 'Muñoz', TO_DATE('2003-05-09', 'YYYY-MM-DD'), 2, 147);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19515101, '6', 'Joaquín', 'Lucas', 'Rojas', 'González', TO_DATE('2001-10-28', 'YYYY-MM-DD'), 2, 120);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18659072, '4', 'Alonso', 'Joaquín', 'Díaz', 'Araya', TO_DATE('1998-05-31', 'YYYY-MM-DD'), 2, 131);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20244562, '4', 'Alonso', 'Facundo', 'Sepúlveda', 'Torres', TO_DATE('1997-09-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20583173, '8', 'Benjamín', 'Gaspar', 'Pérez', 'Fuentes', TO_DATE('2003-07-01', 'YYYY-MM-DD'), 2, 116);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19560037, '6', 'Liam', 'Benjamín', 'Rojas', 'González', TO_DATE('1995-10-16', 'YYYY-MM-DD'), 2, 137);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20396766, '7', 'Agustín', 'Joaquín', 'Soto', 'Rodríguez', TO_DATE('2000-01-10', 'YYYY-MM-DD'), 2, 142);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18747309, '8', 'Alonso', 'Bastián', 'Valenzuela', 'Silva', TO_DATE('2000-05-22', 'YYYY-MM-DD'), 2, 111);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19434463, '5', 'Agustín', 'Benjamín', 'Valenzuela', 'Morales', TO_DATE('2007-08-03', 'YYYY-MM-DD'), 2, 101);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19017526, 'K', 'Gabriel', 'Benjamín', 'Rodríguez', 'Castillo', TO_DATE('2004-08-11', 'YYYY-MM-DD'), 2, 113);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20402147, '3', 'Martín', 'Emiliano', 'Torres', 'Flores', TO_DATE('2007-07-13', 'YYYY-MM-DD'), 2, 144);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19351851, '6', 'Bruno', 'Joaquín', 'Araya', 'Castillo', TO_DATE('1997-11-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18171689, '4', 'Benjamín', 'Benjamín', 'Rojas', 'Contreras', TO_DATE('2004-07-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19480807, '0', 'Isidora', 'Josefa', 'Torres', 'Soto', TO_DATE('1998-06-27', 'YYYY-MM-DD'), 1, 145);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18491778, '5', 'Benjamín', 'Joaquín', 'Contreras', 'Sepúlveda', TO_DATE('1999-04-29', 'YYYY-MM-DD'), 2, 108);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20865924, '3', 'Gaspar', 'Mateo', 'Contreras', 'Contreras', TO_DATE('1999-09-22', 'YYYY-MM-DD'), 2, 141);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19869857, '1', 'Martín', 'Tomás', 'Silva', 'Contreras', TO_DATE('2000-10-27', 'YYYY-MM-DD'), 2, 135);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18268969, '6', 'Joaquín', 'Matías', 'González', 'Torres', TO_DATE('2005-03-17', 'YYYY-MM-DD'), 2, 115);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19707296, '2', 'Vicente', 'Bruno', 'Espinoza', 'Araya', TO_DATE('1995-12-17', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21020580, '2', 'Emiliano', 'Facundo', 'López', 'Morales', TO_DATE('2003-01-31', 'YYYY-MM-DD'), 2, 109);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20860198, '9', 'Antonella', 'Julieta', 'Martínez', 'Castillo', TO_DATE('1996-05-13', 'YYYY-MM-DD'), 1, 106);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21023416, '0', 'Lucas', 'Tomás', 'Espinoza', 'Díaz', TO_DATE('2006-06-24', 'YYYY-MM-DD'), 2, 150);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21486223, '9', 'Maximiliano', 'Emiliano', 'Martínez', 'González', TO_DATE('1999-05-09', 'YYYY-MM-DD'), 2, 103);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19323403, '8', 'Liam', 'Vicente', 'Morales', 'Contreras', TO_DATE('2002-08-23', 'YYYY-MM-DD'), 2, 143);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18335464, '7', 'Matías', 'Gaspar', 'Flores', 'Rodríguez', TO_DATE('2007-07-17', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18850190, '7', 'Gaspar', 'Maximiliano', 'Contreras', 'López', TO_DATE('2002-01-27', 'YYYY-MM-DD'), 2, 104);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19705815, '3', 'Alonso', 'Santiago', 'Fuentes', 'Rodríguez', TO_DATE('2003-03-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18101013, '4', 'Florencia', 'Catalina', 'Castillo', 'González', TO_DATE('1997-05-02', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19628929, '1', 'Lucas', 'Joaquín', 'López', 'Pérez', TO_DATE('2003-04-26', 'YYYY-MM-DD'), 2, 102);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21902210, '7', 'Bruno', 'Facundo', 'Rodríguez', 'Flores', TO_DATE('1999-03-21', 'YYYY-MM-DD'), 2, 118);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18277549, '5', 'Alonso', 'Santiago', 'Espinoza', 'Rojas', TO_DATE('2000-02-29', 'YYYY-MM-DD'), 2, 138);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21928085, '8', 'Vicente', 'Martín', 'Rojas', 'Flores', TO_DATE('2003-06-05', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18575614, '9', 'Tomás', 'Vicente', 'Contreras', 'Muñoz', TO_DATE('1998-07-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18606031, '8', 'Gaspar', 'Tomás', 'Contreras', 'Morales', TO_DATE('1998-12-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19872049, '6', 'Mía', 'Agustina', 'López', 'Contreras', TO_DATE('2000-02-26', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18030281, '6', 'Valentina', 'Emma', 'Espinoza', 'Soto', TO_DATE('2001-09-02', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19944601, '0', 'Vicente', 'Agustín', 'González', 'Torres', TO_DATE('2002-11-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21255025, '6', 'Mía', 'Catalina', 'Rojas', 'González', TO_DATE('1995-12-16', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19178950, '4', 'Trinidad', 'Renata', 'Muñoz', 'Soto', TO_DATE('2003-07-21', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20337939, '0', 'Emiliano', 'Facundo', 'Rojas', 'Díaz', TO_DATE('2001-02-28', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19554437, '9', 'Matías', 'Mateo', 'Soto', 'Díaz', TO_DATE('1996-08-21', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20232695, '1', 'Thiago', 'Emiliano', 'López', 'Castillo', TO_DATE('1999-10-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20054756, 'K', 'Benjamín', 'Matías', 'Torres', 'Espinoza', TO_DATE('1999-05-19', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21512637, '4', 'Florencia', 'Isabella', 'Martínez', 'López', TO_DATE('2004-01-14', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20455073, '5', 'Alonso', 'Vicente', 'Muñoz', 'Soto', TO_DATE('1997-07-01', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18868447, '5', 'Victoria', 'Mía', 'Araya', 'Muñoz', TO_DATE('1997-10-05', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20619532, '0', 'Facundo', 'Matías', 'Flores', 'Soto', TO_DATE('2006-02-25', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20450363, 'K', 'Julieta', 'Emma', 'Rojas', 'Torres', TO_DATE('1999-06-08', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21702645, '8', 'Agustín', 'Emiliano', 'Silva', 'Soto', TO_DATE('2001-12-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20742457, '9', 'Florencia', 'Isabella', 'Morales', 'Soto', TO_DATE('1996-05-17', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21203249, '2', 'Sofía', 'Sofía', 'Fuentes', 'Muñoz', TO_DATE('2003-10-23', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20839406, '1', 'Julieta', 'Julieta', 'Fuentes', 'Rodríguez', TO_DATE('2002-11-26', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20217738, '7', 'Matías', 'Gabriel', 'Flores', 'Silva', TO_DATE('1998-12-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21654685, '7', 'Lucas', 'Bastián', 'Torres', 'Araya', TO_DATE('2001-04-05', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21268429, '5', 'Facundo', 'Gaspar', 'Soto', 'Fuentes', TO_DATE('2002-01-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19191233, '0', 'Antonella', 'Mía', 'Contreras', 'Morales', TO_DATE('1999-09-26', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18686688, '6', 'Vicente', 'Mateo', 'Castillo', 'Valenzuela', TO_DATE('1997-08-19', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21691918, '1', 'Joaquín', 'Tomás', 'Torres', 'Rodríguez', TO_DATE('2001-03-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21300669, 'K', 'Emma', 'Victoria', 'Soto', 'Torres', TO_DATE('2001-10-29', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20162326, 'K', 'Joaquín', 'Emiliano', 'Silva', 'Pérez', TO_DATE('1996-04-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18544596, '8', 'Joaquín', 'Gaspar', 'Díaz', 'López', TO_DATE('2003-03-31', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20494695, '7', 'Facundo', 'Maximiliano', 'Rodríguez', 'Díaz', TO_DATE('2003-06-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20324879, '2', 'Mateo', 'Thiago', 'Flores', 'Silva', TO_DATE('1997-01-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18811021, '5', 'Liam', 'Agustín', 'Araya', 'Araya', TO_DATE('1999-12-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21634197, 'K', 'Lucas', 'Joaquín', 'Flores', 'Valenzuela', TO_DATE('2001-04-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19757413, '5', 'Amanda', 'Isabella', 'Sepúlveda', 'González', TO_DATE('2003-08-11', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21458893, '5', 'Liam', 'Facundo', 'López', 'López', TO_DATE('2000-06-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20622267, '0', 'Emiliano', 'Alonso', 'Rodríguez', 'Pérez', TO_DATE('2003-12-30', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20076993, '7', 'Liam', 'Thiago', 'Sepúlveda', 'Flores', TO_DATE('1996-12-23', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19870549, '7', 'Facundo', 'Martín', 'Morales', 'Morales', TO_DATE('1999-07-31', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18652446, '2', 'Thiago', 'Maximiliano', 'Silva', 'Morales', TO_DATE('2002-08-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20434260, '1', 'Mateo', 'Liam', 'González', 'Martínez', TO_DATE('2002-12-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19740810, '3', 'Martín', 'Mateo', 'Muñoz', 'Martínez', TO_DATE('2004-06-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20890777, '8', 'Amanda', 'Catalina', 'Contreras', 'Soto', TO_DATE('2006-09-17', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19397786, '3', 'Bruno', 'Santiago', 'Silva', 'Araya', TO_DATE('2000-07-05', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19048690, '7', 'Gabriel', 'Joaquín', 'Valenzuela', 'Rodríguez', TO_DATE('2002-08-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21775526, '3', 'Victoria', 'Trinidad', 'Espinoza', 'López', TO_DATE('2003-07-18', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20235908, '6', 'Thiago', 'Maximiliano', 'González', 'Pérez', TO_DATE('2006-04-30', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21414262, '7', 'Tomás', 'Agustín', 'Sepúlveda', 'Díaz', TO_DATE('2005-01-04', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21403798, 'K', 'Thiago', 'Emiliano', 'Fuentes', 'Pérez', TO_DATE('2005-10-23', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21571661, '9', 'Santiago', 'Vicente', 'Castillo', 'Valenzuela', TO_DATE('1996-01-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20324287, '5', 'Lucas', 'Bastián', 'Rodríguez', 'Morales', TO_DATE('2000-01-22', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18636087, '7', 'Alonso', 'Santiago', 'Contreras', 'Morales', TO_DATE('2005-12-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19527138, '0', 'Santiago', 'Gabriel', 'Castillo', 'López', TO_DATE('1996-05-01', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20744380, '8', 'Tomás', 'Liam', 'Espinoza', 'López', TO_DATE('2005-09-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21590671, 'K', 'Amanda', 'Emilia', 'Pérez', 'Castillo', TO_DATE('2001-05-13', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19308953, '4', 'Tomás', 'Santiago', 'Araya', 'Sepúlveda', TO_DATE('2004-06-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21127005, '5', 'Vicente', 'Vicente', 'González', 'Pérez', TO_DATE('2006-06-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19406258, '3', 'Mateo', 'Lucas', 'Martínez', 'Díaz', TO_DATE('2001-04-06', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18193311, '9', 'Gaspar', 'Liam', 'Rodríguez', 'Valenzuela', TO_DATE('2002-11-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20778054, '5', 'Gaspar', 'Bastián', 'Flores', 'González', TO_DATE('2004-09-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20885445, '3', 'Benjamín', 'Gaspar', 'Sepúlveda', 'Espinoza', TO_DATE('2001-07-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19281328, 'K', 'Gabriel', 'Agustín', 'Torres', 'Pérez', TO_DATE('2000-08-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20386601, '1', 'Amanda', 'Maite', 'Espinoza', 'Contreras', TO_DATE('1999-01-10', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18843434, '7', 'Thiago', 'Liam', 'Soto', 'Araya', TO_DATE('2002-04-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18004440, 'K', 'Bruno', 'Bruno', 'Sepúlveda', 'Muñoz', TO_DATE('2006-11-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20457455, '3', 'Bastián', 'Alonso', 'Araya', 'Pérez', TO_DATE('2007-09-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20948928, '7', 'Facundo', 'Liam', 'Torres', 'Silva', TO_DATE('2006-04-11', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19181825, '3', 'Martina', 'Emilia', 'Torres', 'López', TO_DATE('1996-12-21', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19424196, '8', 'Mateo', 'Emiliano', 'Rojas', 'Rojas', TO_DATE('2002-08-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21928798, '4', 'Antonia', 'Valentina', 'Fuentes', 'Rojas', TO_DATE('2001-06-13', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20172745, '6', 'Santiago', 'Facundo', 'Martínez', 'Díaz', TO_DATE('1997-09-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19651133, '4', 'Lucas', 'Facundo', 'Morales', 'Valenzuela', TO_DATE('2004-04-25', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20853750, '4', 'Facundo', 'Matías', 'Rodríguez', 'Rodríguez', TO_DATE('2000-02-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21661899, '8', 'Amanda', 'Catalina', 'Díaz', 'Torres', TO_DATE('1999-08-01', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18680908, '4', 'Bastián', 'Maximiliano', 'Fuentes', 'González', TO_DATE('1999-11-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18035701, '7', 'Santiago', 'Alonso', 'Sepúlveda', 'Castillo', TO_DATE('2002-01-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19771562, '6', 'Alonso', 'Tomás', 'López', 'Contreras', TO_DATE('2003-05-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20800832, '3', 'Gaspar', 'Liam', 'Valenzuela', 'Castillo', TO_DATE('2004-09-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21640620, '6', 'Martín', 'Gaspar', 'Espinoza', 'Fuentes', TO_DATE('2006-12-06', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21602110, 'K', 'Santiago', 'Bastián', 'Morales', 'Pérez', TO_DATE('1998-06-25', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21770898, '2', 'Gabriel', 'Facundo', 'Díaz', 'Rodríguez', TO_DATE('1998-08-31', 'YYYY-MM-DD'), 2, NULL);

-- 5. Poblado de la tabla EVENTO y sus relaciones

-- Evento: Seminario de Desarrollo con Unity
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Seminario de Desarrollo con Unity', 'Sala de Conferencias B', TO_DATE('2025-10-19', 'YYYY-MM-DD'), '15:00', '16:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (1, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 19397786);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 18575614);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 19235423);

-- Evento: Charla Introductoria a la IA Generativa
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Charla Introductoria a la IA Generativa', 'Sala CatchAI', TO_DATE('2025-09-26', 'YYYY-MM-DD'), '15:30', '18:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (2, 3);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 19944601);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 19397786);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 21661899);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 20619532);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Laboratorio de Redes', TO_DATE('2025-12-02', 'YYYY-MM-DD'), '14:30', '15:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (3, 1);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (3, 3);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 20450363);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 20885445);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 19323403);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 19705815);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 20324879);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Laboratorio de Redes', TO_DATE('2025-10-16', 'YYYY-MM-DD'), '13:30', '15:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (4, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 19651133);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 19561083);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 19707296);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 19017526);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Sala de Conferencias B', TO_DATE('2025-10-30', 'YYYY-MM-DD'), '10:30', '11:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (5, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 21902210);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 21590671);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 18335464);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 21512637);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Laboratorio de Redes', TO_DATE('2025-09-25', 'YYYY-MM-DD'), '10:30', '12:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (6, 6);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 19527138);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 18811021);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 21661899);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 20853750);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Auditorio Principal', TO_DATE('2025-10-18', 'YYYY-MM-DD'), '12:00', '15:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (7, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 21661899);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 20217738);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 19651133);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Laboratorio de Redes', TO_DATE('2025-11-16', 'YYYY-MM-DD'), '09:30', '12:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (8, 3);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (8, 6);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 18277549);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 20324879);

-- Evento: Seminario de Desarrollo con Unity
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Seminario de Desarrollo con Unity', 'Sala de Conferencias B', TO_DATE('2025-11-12', 'YYYY-MM-DD'), '09:00', '10:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (9, 1);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (9, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 18035701);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 20386601);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 20865924);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 19757413);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Patio Central', TO_DATE('2025-09-20', 'YYYY-MM-DD'), '11:00', '12:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (10, 2);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (10, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 20162326);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 19707296);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 19191233);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 20778054);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Sala CatchAI', TO_DATE('2025-09-20', 'YYYY-MM-DD'), '15:00', '17:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (11, 6);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (11, 20417291);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (11, 21414262);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Laboratorio de Redes', TO_DATE('2025-10-28', 'YYYY-MM-DD'), '16:00', '17:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (12, 6);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (12, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 19464733);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 19181825);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Sala CatchAI', TO_DATE('2025-10-10', 'YYYY-MM-DD'), '14:00', '16:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (13, 6);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 21928085);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 20948928);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 21661899);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 19397786);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Laboratorio de Redes', TO_DATE('2025-11-06', 'YYYY-MM-DD'), '12:30', '13:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (14, 6);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (14, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 19771562);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 18850190);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 19740810);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Auditorio Principal', TO_DATE('2025-11-28', 'YYYY-MM-DD'), '15:30', '18:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (15, 6);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (15, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 21691918);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 20744380);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 21203249);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 20860198);

COMMIT;
