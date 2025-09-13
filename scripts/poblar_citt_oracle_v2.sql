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
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Juan', 'Pérez', 10443343);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Ana', 'García', 13424227);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Carlos', 'López', 11160595);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'María', 'Martínez', 11731565);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Luis', 'Hernández', 11088501);
INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, 'Elena', 'Gómez', 10791726);

-- 2. Poblado de la tabla TRACK
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Robótica', 1);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Programación Competitiva', 2);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Inteligencia Artificial', 3);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Ciberseguridad', 4);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Desarrollo de Videojuegos', 5);
INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, 'Track de Desarrollo Web y Móvil', 6);

-- 3. Poblado de la tabla PROYECTO
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (101, 'RPG 2D con Narrativa Interactiva v3', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (102, 'Brazo Robótico Autónomo v2', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (103, 'Sistema de Recomendación Educativo v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (104, 'Framework de Simulación de Phishing v3', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (105, 'Brazo Robótico Autónomo v3', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (106, 'Juego de Estrategia en Tiempo Real v4', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (107, 'Visualizador de Algoritmos v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (108, 'Framework de Simulación de Phishing v5', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (109, 'Visualizador de Algoritmos v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (110, 'Framework para Pruebas de Estrés v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (111, 'Framework para Pruebas de Estrés v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (112, 'Juego Educativo sobre Historia v1', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (113, 'Visualizador de Algoritmos v4', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (114, 'Visualizador de Algoritmos v2', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (115, 'Framework para Pruebas de Estrés v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (116, 'Herramienta de Análisis de Vulnerabilidades v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (117, 'Plataforma Web de Intercambio de Habilidades v1', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (118, 'Juego Educativo sobre Historia v5', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (119, 'Sistema de Detección de Intrusiones v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (120, 'Juego de Estrategia en Tiempo Real v3', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (121, 'Framework para Pruebas de Estrés v3', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (122, 'Plataforma de Juez en Línea v3', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (123, 'App para la Gestión de Proyectos CITT v1', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (124, 'Robot Seguidor de Línea v1', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (125, 'Modelo de Detección de Emociones v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (126, 'Framework para Pruebas de Estrés v2', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (127, 'Marketplace de Proyectos Freelance v3', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (128, 'Sistema de Detección de Intrusiones v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (129, 'RPG 2D con Narrativa Interactiva v2', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (130, 'Marketplace de Proyectos Freelance v3', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (131, 'Framework para Pruebas de Estrés v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (132, 'Sistema de Detección de Intrusiones v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (133, 'Chatbot Asistente DUOC v3', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (134, 'Sistema de Detección de Intrusiones v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (135, 'Plataforma Web de Intercambio de Habilidades v4', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (136, 'Robot Seguidor de Línea v2', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (137, 'Plataforma Web de Intercambio de Habilidades v2', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (138, 'Visualizador de Algoritmos v3', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (139, 'Sistema de Recomendación Educativo v2', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (140, 'Sistema de Detección de Intrusiones v5', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (141, 'Framework de Simulación de Phishing v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (142, 'Sistema de Detección de Intrusiones v3', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (143, 'Robot Seguidor de Línea v4', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (144, 'Framework de Simulación de Phishing v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (145, 'Brazo Robótico Autónomo v1', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (146, 'Juego Educativo sobre Historia v3', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (147, 'Herramienta de Análisis de Vulnerabilidades v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (148, 'Brazo Robótico Autónomo v5', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (149, 'Marketplace de Proyectos Freelance v2', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (150, 'Framework para Pruebas de Estrés v4', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (151, 'App para la Gestión de Proyectos CITT v1', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (152, 'Visualizador de Algoritmos v5', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (153, 'Robot Seguidor de Línea v1', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (154, 'Robot Seguidor de Línea v3', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (155, 'Sistema de Detección de Intrusiones v4', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (156, 'Juego Educativo sobre Historia v2', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (157, 'Sistema de Detección de Intrusiones v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (158, 'RPG 2D con Narrativa Interactiva v5', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (159, 'Juego de Estrategia en Tiempo Real v5', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (160, 'Juego Educativo sobre Historia v3', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (161, 'Sistema de Navegación para Drones v2', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (162, 'Robot Seguidor de Línea v3', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (163, 'Brazo Robótico Autónomo v1', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (164, 'Herramienta de Análisis de Vulnerabilidades v1', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (165, 'Brazo Robótico Autónomo v4', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (166, 'Marketplace de Proyectos Freelance v4', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (167, 'Marketplace de Proyectos Freelance v4', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (168, 'Modelo de Detección de Emociones v5', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (169, 'Sistema de Navegación para Drones v4', 'Descripción del proyecto.', 1);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (170, 'Marketplace de Proyectos Freelance v3', 'Descripción del proyecto.', 6);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (171, 'Framework de Simulación de Phishing v3', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (172, 'Juego de Estrategia en Tiempo Real v1', 'Descripción del proyecto.', 5);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (173, 'Framework para Pruebas de Estrés v4', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (174, 'Herramienta de Análisis de Vulnerabilidades v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (175, 'Framework para Pruebas de Estrés v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (176, 'Herramienta de Análisis de Vulnerabilidades v2', 'Descripción del proyecto.', 4);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (177, 'Plataforma de Juez en Línea v3', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (178, 'Modelo de Detección de Emociones v5', 'Descripción del proyecto.', 3);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (179, 'Framework para Pruebas de Estrés v1', 'Descripción del proyecto.', 2);
INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES (180, 'Juego de Estrategia en Tiempo Real v1', 'Descripción del proyecto.', 5);

-- 4. Poblado de la tabla ESTUDIANTE
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21499581, '6', 'Gaspar', 'Bastián', 'González', 'Sepúlveda', TO_DATE('1997-12-03', 'YYYY-MM-DD'), 2, 147);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21036408, '0', 'Gaspar', 'Bastián', 'Muñoz', 'Soto', TO_DATE('2001-09-13', 'YYYY-MM-DD'), 2, 124);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20536609, '1', 'Alonso', 'Mateo', 'Rojas', 'Araya', TO_DATE('2004-04-28', 'YYYY-MM-DD'), 2, 104);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19904472, '9', 'Agustina', 'Trinidad', 'Díaz', 'Rodríguez', TO_DATE('1998-05-20', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19627011, '6', 'Renata', 'Trinidad', 'Muñoz', 'Araya', TO_DATE('2005-01-22', 'YYYY-MM-DD'), 1, 134);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18736218, '0', 'Matías', 'Gabriel', 'Espinoza', 'González', TO_DATE('2006-09-22', 'YYYY-MM-DD'), 2, 156);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19464148, '6', 'Matías', 'Maximiliano', 'Fuentes', 'Martínez', TO_DATE('2007-01-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19430129, '4', 'Bastián', 'Liam', 'Espinoza', 'Castillo', TO_DATE('2007-02-24', 'YYYY-MM-DD'), 2, 123);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20350677, '5', 'Emiliano', 'Benjamín', 'Morales', 'Espinoza', TO_DATE('1998-12-06', 'YYYY-MM-DD'), 2, 113);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20462306, '6', 'Joaquín', 'Agustín', 'Valenzuela', 'Pérez', TO_DATE('1997-08-01', 'YYYY-MM-DD'), 2, 157);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21373704, 'K', 'Mateo', 'Lucas', 'Díaz', 'Flores', TO_DATE('2005-01-10', 'YYYY-MM-DD'), 2, 179);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19332392, '8', 'Catalina', 'Valentina', 'Díaz', 'Soto', TO_DATE('1998-11-21', 'YYYY-MM-DD'), 1, 131);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19641388, 'K', 'Tomás', 'Maximiliano', 'Castillo', 'Díaz', TO_DATE('1999-10-03', 'YYYY-MM-DD'), 2, 111);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20719827, '7', 'Josefa', 'Antonia', 'Muñoz', 'Flores', TO_DATE('2006-02-27', 'YYYY-MM-DD'), 1, 107);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21392482, '6', 'Bastián', 'Mateo', 'Sepúlveda', 'Muñoz', TO_DATE('2002-08-11', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19204499, '5', 'Emiliano', 'Mateo', 'Fuentes', 'González', TO_DATE('2006-05-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20471644, '7', 'Mateo', 'Alonso', 'Soto', 'Martínez', TO_DATE('2006-07-04', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20919806, '1', 'Martina', 'Emilia', 'Rojas', 'Morales', TO_DATE('2005-12-12', 'YYYY-MM-DD'), 1, 151);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19410620, '3', 'Victoria', 'Antonella', 'Rodríguez', 'Fuentes', TO_DATE('1998-05-02', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21430350, '7', 'Emiliano', 'Bruno', 'Fuentes', 'Fuentes', TO_DATE('1999-11-13', 'YYYY-MM-DD'), 2, 176);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19306901, '0', 'Alonso', 'Thiago', 'González', 'Morales', TO_DATE('1998-03-10', 'YYYY-MM-DD'), 2, 119);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20685490, '1', 'Lucas', 'Martín', 'Morales', 'López', TO_DATE('1999-06-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20823290, '8', 'Vicente', 'Facundo', 'González', 'Castillo', TO_DATE('2005-01-21', 'YYYY-MM-DD'), 2, 114);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21195770, '0', 'Catalina', 'Victoria', 'Valenzuela', 'Morales', TO_DATE('2004-02-13', 'YYYY-MM-DD'), 1, 138);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21901240, '3', 'Liam', 'Matías', 'Sepúlveda', 'Soto', TO_DATE('1996-04-18', 'YYYY-MM-DD'), 2, 130);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20147940, '1', 'Josefa', 'Isabella', 'González', 'Silva', TO_DATE('1999-12-01', 'YYYY-MM-DD'), 1, 120);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20218667, 'K', 'Joaquín', 'Benjamín', 'Muñoz', 'Rodríguez', TO_DATE('1997-05-02', 'YYYY-MM-DD'), 2, 127);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19714383, '5', 'Alonso', 'Bastián', 'Soto', 'Rodríguez', TO_DATE('2003-08-31', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19014359, '7', 'Emiliano', 'Vicente', 'Espinoza', 'Contreras', TO_DATE('2004-11-16', 'YYYY-MM-DD'), 2, 106);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19751373, 'K', 'Tomás', 'Tomás', 'Silva', 'Pérez', TO_DATE('2000-02-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20833465, '4', 'Agustín', 'Tomás', 'Morales', 'Torres', TO_DATE('2007-07-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20842924, '8', 'Joaquín', 'Alonso', 'Torres', 'Rojas', TO_DATE('2007-04-21', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21728277, '2', 'Santiago', 'Vicente', 'Rojas', 'López', TO_DATE('1996-01-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18849199, '5', 'Gaspar', 'Joaquín', 'Martínez', 'Morales', TO_DATE('1997-12-05', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18646000, '6', 'Emiliano', 'Santiago', 'Castillo', 'Morales', TO_DATE('1999-06-29', 'YYYY-MM-DD'), 2, 144);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19055509, '7', 'Martín', 'Alonso', 'Torres', 'Martínez', TO_DATE('1998-04-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20224119, '0', 'Sofía', 'Emilia', 'Castillo', 'Morales', TO_DATE('2000-03-21', 'YYYY-MM-DD'), 1, 112);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21142980, '1', 'Tomás', 'Agustín', 'Fuentes', 'Martínez', TO_DATE('2007-06-23', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18031299, '4', 'Josefa', 'Trinidad', 'López', 'Araya', TO_DATE('1999-10-12', 'YYYY-MM-DD'), 1, 162);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21682499, '7', 'Lucas', 'Agustín', 'Araya', 'Díaz', TO_DATE('1998-11-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21517785, '8', 'Gabriel', 'Thiago', 'Muñoz', 'Torres', TO_DATE('1998-08-18', 'YYYY-MM-DD'), 2, 148);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20058755, '3', 'Matías', 'Agustín', 'Soto', 'Fuentes', TO_DATE('2005-04-30', 'YYYY-MM-DD'), 2, 126);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18059407, '8', 'Maximiliano', 'Tomás', 'Silva', 'Pérez', TO_DATE('1997-01-23', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21048842, '1', 'Bastián', 'Facundo', 'Soto', 'Martínez', TO_DATE('1998-12-10', 'YYYY-MM-DD'), 2, 146);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18772274, '8', 'Matías', 'Joaquín', 'Martínez', 'Castillo', TO_DATE('2004-05-09', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20080205, '5', 'Maximiliano', 'Facundo', 'López', 'Torres', TO_DATE('2007-07-25', 'YYYY-MM-DD'), 2, 136);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18952820, '5', 'Matías', 'Tomás', 'Muñoz', 'Fuentes', TO_DATE('1998-11-26', 'YYYY-MM-DD'), 2, 109);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18931988, '6', 'Benjamín', 'Santiago', 'González', 'Muñoz', TO_DATE('2003-10-24', 'YYYY-MM-DD'), 2, 161);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20057445, '1', 'Maximiliano', 'Mateo', 'Araya', 'Araya', TO_DATE('1997-05-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19723445, '8', 'Renata', 'Amanda', 'Morales', 'Morales', TO_DATE('1999-08-21', 'YYYY-MM-DD'), 1, 110);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18394020, '1', 'Matías', 'Bastián', 'Soto', 'Valenzuela', TO_DATE('2000-09-30', 'YYYY-MM-DD'), 2, 170);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18558936, '6', 'Agustín', 'Agustín', 'Flores', 'Silva', TO_DATE('2005-12-29', 'YYYY-MM-DD'), 2, 172);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21165545, '3', 'Thiago', 'Lucas', 'González', 'Espinoza', TO_DATE('2002-09-16', 'YYYY-MM-DD'), 2, 175);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19278253, '8', 'Santiago', 'Tomás', 'Díaz', 'Valenzuela', TO_DATE('2005-09-11', 'YYYY-MM-DD'), 2, 108);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20967729, '6', 'Bastián', 'Bastián', 'Pérez', 'Castillo', TO_DATE('1999-11-23', 'YYYY-MM-DD'), 2, 155);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19851577, '9', 'Isidora', 'Trinidad', 'Silva', 'Castillo', TO_DATE('2005-12-18', 'YYYY-MM-DD'), 1, 163);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18262283, '4', 'Joaquín', 'Benjamín', 'Pérez', 'Araya', TO_DATE('1996-10-17', 'YYYY-MM-DD'), 2, 171);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20069015, 'K', 'Victoria', 'Renata', 'Pérez', 'Soto', TO_DATE('2003-07-05', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21900510, '5', 'Vicente', 'Maximiliano', 'Rojas', 'Castillo', TO_DATE('2002-06-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20535591, 'K', 'Emilia', 'Emilia', 'Pérez', 'Pérez', TO_DATE('2003-10-09', 'YYYY-MM-DD'), 1, 142);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19420738, '7', 'Santiago', 'Martín', 'Rojas', 'Díaz', TO_DATE('2000-04-11', 'YYYY-MM-DD'), 2, 129);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19436902, '6', 'Trinidad', 'Isabella', 'Pérez', 'Araya', TO_DATE('1998-02-06', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20844546, '4', 'Tomás', 'Maximiliano', 'Pérez', 'Silva', TO_DATE('1999-02-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19711561, '0', 'Lucas', 'Liam', 'Pérez', 'Fuentes', TO_DATE('1997-08-18', 'YYYY-MM-DD'), 2, 166);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21694151, '9', 'Bruno', 'Bruno', 'González', 'Silva', TO_DATE('2002-11-24', 'YYYY-MM-DD'), 2, 116);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20170012, '4', 'Gaspar', 'Bruno', 'Silva', 'Silva', TO_DATE('2005-05-25', 'YYYY-MM-DD'), 2, 101);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18424385, '7', 'Florencia', 'Valentina', 'Muñoz', 'Rodríguez', TO_DATE('1998-12-09', 'YYYY-MM-DD'), 1, 121);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19781759, '3', 'Matías', 'Gabriel', 'Rojas', 'Martínez', TO_DATE('2007-02-08', 'YYYY-MM-DD'), 2, 133);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19639669, '1', 'Maximiliano', 'Gabriel', 'Contreras', 'López', TO_DATE('1996-11-28', 'YYYY-MM-DD'), 2, 102);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21061602, '0', 'Bastián', 'Emiliano', 'Contreras', 'Castillo', TO_DATE('1998-10-17', 'YYYY-MM-DD'), 2, 154);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21762491, '6', 'Vicente', 'Maximiliano', 'Pérez', 'Morales', TO_DATE('1996-02-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20491042, '1', 'Alonso', 'Matías', 'Silva', 'Muñoz', TO_DATE('2002-12-12', 'YYYY-MM-DD'), 2, 141);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19858474, '6', 'Mateo', 'Martín', 'Martínez', 'Contreras', TO_DATE('1999-12-23', 'YYYY-MM-DD'), 2, 152);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18525807, '6', 'Matías', 'Gabriel', 'Araya', 'Flores', TO_DATE('1996-01-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19055688, '3', 'Martín', 'Gaspar', 'Castillo', 'Castillo', TO_DATE('2004-05-31', 'YYYY-MM-DD'), 2, 160);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19444684, '5', 'Gaspar', 'Facundo', 'Flores', 'González', TO_DATE('1997-07-22', 'YYYY-MM-DD'), 2, 103);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19433011, '1', 'Martina', 'Maite', 'Contreras', 'Muñoz', TO_DATE('2006-11-05', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19479935, '7', 'Liam', 'Benjamín', 'Silva', 'Castillo', TO_DATE('2007-01-28', 'YYYY-MM-DD'), 2, 158);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21819090, '1', 'Joaquín', 'Agustín', 'Pérez', 'Castillo', TO_DATE('1996-12-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18163779, 'K', 'Antonella', 'Catalina', 'Espinoza', 'Castillo', TO_DATE('2003-05-03', 'YYYY-MM-DD'), 1, 132);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21094733, '7', 'Thiago', 'Matías', 'González', 'Flores', TO_DATE('1999-01-30', 'YYYY-MM-DD'), 2, 173);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19433430, '3', 'Sofía', 'Antonella', 'Araya', 'González', TO_DATE('1998-06-19', 'YYYY-MM-DD'), 1, 139);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19598634, '7', 'Lucas', 'Bastián', 'Rojas', 'González', TO_DATE('1996-04-22', 'YYYY-MM-DD'), 2, 167);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20202850, '0', 'Martín', 'Santiago', 'Castillo', 'Morales', TO_DATE('1998-12-02', 'YYYY-MM-DD'), 2, 143);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20659919, '7', 'Gabriel', 'Benjamín', 'Flores', 'Castillo', TO_DATE('2004-04-23', 'YYYY-MM-DD'), 2, 178);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20744598, '3', 'Matías', 'Mateo', 'Araya', 'Rojas', TO_DATE('2001-07-11', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20500257, 'K', 'Maximiliano', 'Vicente', 'Flores', 'Fuentes', TO_DATE('1997-01-10', 'YYYY-MM-DD'), 2, 118);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19064881, '8', 'Lucas', 'Agustín', 'Morales', 'Morales', TO_DATE('1995-10-14', 'YYYY-MM-DD'), 2, 169);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21550469, '7', 'Thiago', 'Liam', 'Rojas', 'Rodríguez', TO_DATE('2004-06-28', 'YYYY-MM-DD'), 2, 125);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20675529, '6', 'Alonso', 'Bastián', 'Silva', 'Morales', TO_DATE('2006-01-04', 'YYYY-MM-DD'), 2, 159);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18582265, '6', 'Joaquín', 'Emiliano', 'Espinoza', 'Valenzuela', TO_DATE('1998-11-06', 'YYYY-MM-DD'), 2, 153);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18681980, '2', 'Maximiliano', 'Santiago', 'Valenzuela', 'Contreras', TO_DATE('1997-01-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20898965, '0', 'Emma', 'Catalina', 'Flores', 'Contreras', TO_DATE('2005-11-28', 'YYYY-MM-DD'), 1, 164);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21059396, '9', 'Santiago', 'Matías', 'López', 'Silva', TO_DATE('1996-03-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20208553, '9', 'Agustín', 'Tomás', 'Rojas', 'Rojas', TO_DATE('2003-08-30', 'YYYY-MM-DD'), 2, 177);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19357007, '0', 'Vicente', 'Bastián', 'Araya', 'Araya', TO_DATE('2003-02-03', 'YYYY-MM-DD'), 2, 140);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20622365, '0', 'Martín', 'Maximiliano', 'López', 'Martínez', TO_DATE('1998-12-06', 'YYYY-MM-DD'), 2, 128);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21759745, '5', 'Agustín', 'Benjamín', 'Flores', 'Díaz', TO_DATE('1996-01-24', 'YYYY-MM-DD'), 2, 180);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18321204, '4', 'Mía', 'Agustina', 'Muñoz', 'Morales', TO_DATE('1998-05-08', 'YYYY-MM-DD'), 1, 137);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20566222, '7', 'Alonso', 'Matías', 'Díaz', 'Torres', TO_DATE('2002-02-25', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21491297, 'K', 'Gabriel', 'Joaquín', 'González', 'Flores', TO_DATE('2007-01-17', 'YYYY-MM-DD'), 2, 117);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19356095, '4', 'Emiliano', 'Vicente', 'Contreras', 'López', TO_DATE('2004-10-29', 'YYYY-MM-DD'), 2, 174);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21965314, 'K', 'Gaspar', 'Emiliano', 'Torres', 'Espinoza', TO_DATE('1997-01-22', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18714986, 'K', 'Alonso', 'Vicente', 'Espinoza', 'Rojas', TO_DATE('2000-03-01', 'YYYY-MM-DD'), 2, 122);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21216149, '7', 'Bruno', 'Thiago', 'Martínez', 'González', TO_DATE('2003-08-29', 'YYYY-MM-DD'), 2, 105);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21407641, '1', 'Emiliano', 'Gabriel', 'Fuentes', 'Soto', TO_DATE('2000-05-19', 'YYYY-MM-DD'), 2, 165);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21055626, '5', 'Tomás', 'Facundo', 'Silva', 'Sepúlveda', TO_DATE('1998-02-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19886657, '1', 'Emiliano', 'Emiliano', 'Contreras', 'Soto', TO_DATE('1995-10-08', 'YYYY-MM-DD'), 2, 149);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18906628, '7', 'Agustín', 'Bruno', 'Muñoz', 'Araya', TO_DATE('2002-03-14', 'YYYY-MM-DD'), 2, 168);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20691558, '7', 'Santiago', 'Gabriel', 'Martínez', 'Muñoz', TO_DATE('2004-08-26', 'YYYY-MM-DD'), 2, 145);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21767990, '7', 'Bruno', 'Joaquín', 'Fuentes', 'Silva', TO_DATE('2002-09-03', 'YYYY-MM-DD'), 2, 135);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18911191, '6', 'Facundo', 'Lucas', 'Sepúlveda', 'Valenzuela', TO_DATE('2003-04-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21794998, 'K', 'Gabriel', 'Joaquín', 'Araya', 'Valenzuela', TO_DATE('2001-07-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19291378, '0', 'Bruno', 'Lucas', 'López', 'Espinoza', TO_DATE('2007-07-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20193584, '9', 'Tomás', 'Vicente', 'Díaz', 'Castillo', TO_DATE('2002-03-14', 'YYYY-MM-DD'), 2, 115);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21820867, '3', 'Sofía', 'Maite', 'Rodríguez', 'González', TO_DATE('2001-05-20', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19197794, '7', 'Emiliano', 'Benjamín', 'Espinoza', 'Castillo', TO_DATE('2000-11-06', 'YYYY-MM-DD'), 2, 150);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18200535, '5', 'Martín', 'Gabriel', 'Rodríguez', 'Contreras', TO_DATE('1998-07-24', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20787127, '3', 'Mía', 'Antonia', 'Díaz', 'Valenzuela', TO_DATE('1998-04-29', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18736930, '4', 'Santiago', 'Joaquín', 'Castillo', 'Sepúlveda', TO_DATE('2007-07-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20440329, '5', 'Lucas', 'Maximiliano', 'Rojas', 'Castillo', TO_DATE('1998-08-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18972045, '9', 'Mía', 'Maite', 'Silva', 'López', TO_DATE('2006-03-28', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21262445, '4', 'Santiago', 'Alonso', 'Torres', 'Valenzuela', TO_DATE('2000-04-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18051897, '5', 'Benjamín', 'Joaquín', 'Martínez', 'Rojas', TO_DATE('1997-05-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21718790, '7', 'Santiago', 'Santiago', 'Martínez', 'Flores', TO_DATE('1997-12-22', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18116567, '7', 'Mateo', 'Vicente', 'Silva', 'Contreras', TO_DATE('2003-08-23', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18129258, 'K', 'Trinidad', 'Agustina', 'Soto', 'Martínez', TO_DATE('2005-10-16', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21964842, '1', 'Agustina', 'Mía', 'Flores', 'Soto', TO_DATE('2007-06-11', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18584524, '9', 'Bastián', 'Alonso', 'Rodríguez', 'Muñoz', TO_DATE('2006-09-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21593639, '2', 'Gaspar', 'Lucas', 'Silva', 'Flores', TO_DATE('1997-08-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19830273, '2', 'Bastián', 'Bastián', 'Fuentes', 'Muñoz', TO_DATE('2003-11-24', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21609843, '9', 'Joaquín', 'Facundo', 'Muñoz', 'Martínez', TO_DATE('2001-01-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19634841, '7', 'Valentina', 'Julieta', 'Pérez', 'Pérez', TO_DATE('1998-12-06', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20023323, '9', 'Liam', 'Bastián', 'Soto', 'Espinoza', TO_DATE('1999-01-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18579731, '7', 'Mateo', 'Joaquín', 'Araya', 'Morales', TO_DATE('2006-11-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18583283, 'K', 'Liam', 'Gabriel', 'Contreras', 'Muñoz', TO_DATE('1996-07-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20885892, '0', 'Matías', 'Bruno', 'Sepúlveda', 'Díaz', TO_DATE('2006-12-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21744453, '5', 'Emiliano', 'Benjamín', 'Valenzuela', 'Soto', TO_DATE('1998-06-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19832935, '5', 'Bastián', 'Mateo', 'Flores', 'González', TO_DATE('2004-02-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18667782, 'K', 'Santiago', 'Bastián', 'Rojas', 'Sepúlveda', TO_DATE('2003-03-04', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18910868, '0', 'Facundo', 'Joaquín', 'Martínez', 'González', TO_DATE('1999-04-04', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18470281, '9', 'Alonso', 'Santiago', 'Sepúlveda', 'López', TO_DATE('1997-04-30', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19981830, '9', 'Catalina', 'Julieta', 'Martínez', 'Valenzuela', TO_DATE('2000-07-10', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19924128, '1', 'Gaspar', 'Matías', 'Araya', 'Silva', TO_DATE('2001-03-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19883092, '5', 'Joaquín', 'Santiago', 'Rodríguez', 'Morales', TO_DATE('2007-03-21', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20000504, 'K', 'Tomás', 'Lucas', 'Sepúlveda', 'Morales', TO_DATE('2000-07-19', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20715648, '5', 'Matías', 'Gaspar', 'Pérez', 'Fuentes', TO_DATE('2000-09-23', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20080259, '4', 'Victoria', 'Julieta', 'González', 'Castillo', TO_DATE('1999-09-16', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18018902, '5', 'Santiago', 'Emiliano', 'Araya', 'Castillo', TO_DATE('2002-06-08', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20844553, '7', 'Florencia', 'Antonella', 'Rojas', 'Espinoza', TO_DATE('2005-06-11', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19683999, '2', 'Valentina', 'Josefa', 'Flores', 'Sepúlveda', TO_DATE('2002-01-15', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20130797, 'K', 'Gabriel', 'Vicente', 'Fuentes', 'Pérez', TO_DATE('2004-11-21', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18574640, '2', 'Trinidad', 'Renata', 'Castillo', 'Soto', TO_DATE('1999-11-22', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20394143, '9', 'Benjamín', 'Santiago', 'Muñoz', 'Espinoza', TO_DATE('2001-01-05', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20422131, '6', 'Joaquín', 'Benjamín', 'Espinoza', 'Sepúlveda', TO_DATE('2003-02-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21609807, '2', 'Maximiliano', 'Maximiliano', 'Rojas', 'Araya', TO_DATE('1998-08-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20110952, '3', 'Facundo', 'Gaspar', 'Morales', 'Pérez', TO_DATE('1995-10-07', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20675486, '9', 'Antonia', 'Isabella', 'Morales', 'Díaz', TO_DATE('2001-09-14', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20229215, '1', 'Vicente', 'Santiago', 'Soto', 'Contreras', TO_DATE('2004-01-01', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20475610, '4', 'Joaquín', 'Emiliano', 'Díaz', 'Sepúlveda', TO_DATE('1999-01-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19891728, '1', 'Liam', 'Joaquín', 'Castillo', 'Morales', TO_DATE('2001-06-30', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20436150, '9', 'Emiliano', 'Mateo', 'Soto', 'Díaz', TO_DATE('2006-10-30', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21313200, '8', 'Lucas', 'Liam', 'Rodríguez', 'Flores', TO_DATE('2007-06-15', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19781701, '1', 'Joaquín', 'Matías', 'Martínez', 'Torres', TO_DATE('2002-04-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18433882, '3', 'Agustín', 'Tomás', 'Rodríguez', 'Díaz', TO_DATE('1998-01-16', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19668443, '3', 'Facundo', 'Agustín', 'Torres', 'Torres', TO_DATE('2004-08-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19399768, '6', 'Benjamín', 'Bruno', 'Araya', 'Rojas', TO_DATE('1999-07-24', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20965760, '0', 'Agustín', 'Bruno', 'Fuentes', 'Muñoz', TO_DATE('2001-08-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18383529, '7', 'Gaspar', 'Martín', 'Díaz', 'Pérez', TO_DATE('2002-06-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21780020, 'K', 'Josefa', 'Emilia', 'Valenzuela', 'Flores', TO_DATE('2005-07-08', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19258037, '4', 'Tomás', 'Tomás', 'Flores', 'Rojas', TO_DATE('2006-02-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18656445, '6', 'Vicente', 'Thiago', 'Espinoza', 'Fuentes', TO_DATE('2007-07-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20859892, '9', 'Emilia', 'Isidora', 'Sepúlveda', 'Silva', TO_DATE('1999-02-19', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18539926, '5', 'Liam', 'Tomás', 'Rojas', 'Fuentes', TO_DATE('1995-10-11', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21902729, 'K', 'Gaspar', 'Gaspar', 'Valenzuela', 'Fuentes', TO_DATE('2005-12-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21943083, '3', 'Vicente', 'Matías', 'Rodríguez', 'Sepúlveda', TO_DATE('1998-01-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18645230, '5', 'Bruno', 'Vicente', 'Valenzuela', 'Soto', TO_DATE('1999-09-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20373293, '7', 'Gabriel', 'Matías', 'Martínez', 'Muñoz', TO_DATE('2004-08-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20100630, '9', 'Emiliano', 'Santiago', 'Soto', 'González', TO_DATE('1999-08-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21486750, '8', 'Emiliano', 'Mateo', 'Silva', 'Rojas', TO_DATE('1995-10-31', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21980205, '6', 'Mateo', 'Lucas', 'Sepúlveda', 'Espinoza', TO_DATE('2004-01-27', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21326618, '7', 'Gabriel', 'Agustín', 'Silva', 'Martínez', TO_DATE('1997-08-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18157207, '8', 'Alonso', 'Mateo', 'Sepúlveda', 'Rodríguez', TO_DATE('2006-10-03', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18471400, '0', 'Bastián', 'Alonso', 'Valenzuela', 'Sepúlveda', TO_DATE('1998-01-12', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18087992, '7', 'Joaquín', 'Alonso', 'Rojas', 'Morales', TO_DATE('2005-01-10', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21311154, 'K', 'Benjamín', 'Benjamín', 'Muñoz', 'Martínez', TO_DATE('1998-05-28', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20215296, '1', 'Maximiliano', 'Martín', 'Torres', 'Soto', TO_DATE('2002-04-18', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18675437, '9', 'Mía', 'Victoria', 'Díaz', 'Morales', TO_DATE('1999-06-07', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19066858, '4', 'Lucas', 'Bruno', 'Sepúlveda', 'Sepúlveda', TO_DATE('1998-12-02', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18341994, '3', 'Mateo', 'Emiliano', 'Díaz', 'Fuentes', TO_DATE('2000-03-29', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18073214, '4', 'Antonella', 'Florencia', 'Morales', 'Torres', TO_DATE('2003-12-03', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21703859, '6', 'Josefa', 'Florencia', 'López', 'Muñoz', TO_DATE('2002-04-14', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19087107, 'K', 'Lucas', 'Maximiliano', 'Araya', 'López', TO_DATE('1998-05-17', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18512910, '1', 'Thiago', 'Thiago', 'Araya', 'Muñoz', TO_DATE('2001-03-19', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20965150, '5', 'Tomás', 'Bastián', 'Flores', 'Torres', TO_DATE('2002-08-14', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (21621431, '5', 'Maximiliano', 'Maximiliano', 'Díaz', 'López', TO_DATE('1998-12-20', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18301786, '1', 'Bastián', 'Joaquín', 'Castillo', 'Silva', TO_DATE('2000-07-26', 'YYYY-MM-DD'), 2, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (20278594, '8', 'Emilia', 'Trinidad', 'González', 'Martínez', TO_DATE('1998-04-22', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (18202297, '7', 'Victoria', 'Isidora', 'Pérez', 'Castillo', TO_DATE('1996-04-13', 'YYYY-MM-DD'), 1, NULL);
INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES (19437224, '8', 'Julieta', 'Josefa', 'Pérez', 'Rodríguez', TO_DATE('1996-01-02', 'YYYY-MM-DD'), 1, NULL);

-- 5. Poblado de la tabla EVENTO y sus relaciones

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Sala CITT', TO_DATE('2025-12-10', 'YYYY-MM-DD'), '13:00', '15:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (1, 3);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (1, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 19891728);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 21262445);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 19278253);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (1, 19832935);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Laboratorio W611', TO_DATE('2025-10-06', 'YYYY-MM-DD'), '14:30', '16:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (2, 4);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (2, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 18262283);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 20422131);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 21593639);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (2, 19924128);

-- Evento: Competencia de Programación 'CodeMasters'
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Competencia de Programación ''CodeMasters''', 'Sala CITT', TO_DATE('2025-10-10', 'YYYY-MM-DD'), '12:30', '15:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (3, 5);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (3, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 20278594);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (3, 20885892);

-- Evento: Competencia de Programación 'CodeMasters'
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Competencia de Programación ''CodeMasters''', 'Sala CITT', TO_DATE('2025-10-23', 'YYYY-MM-DD'), '14:30', '16:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (4, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 20715648);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (4, 20833465);

-- Evento: Charla Introductoria a la IA Generativa
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Charla Introductoria a la IA Generativa', 'Sala CITT', TO_DATE('2025-11-18', 'YYYY-MM-DD'), '12:30', '14:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (5, 1);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 19420738);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 21901240);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 21517785);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (5, 21165545);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Auditorio Principal', TO_DATE('2025-11-10', 'YYYY-MM-DD'), '12:30', '13:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (6, 5);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (6, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 18584524);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (6, 21326618);

-- Evento: Competencia de Programación 'CodeMasters'
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Competencia de Programación ''CodeMasters''', 'Sala CITT', TO_DATE('2025-11-06', 'YYYY-MM-DD'), '16:30', '19:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (7, 6);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (7, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 20147940);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 18202297);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 19639669);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (7, 18163779);

-- Evento: Competencia de Programación 'CodeMasters'
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Competencia de Programación ''CodeMasters''', 'Auditorio Principal', TO_DATE('2025-09-25', 'YYYY-MM-DD'), '14:00', '17:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (8, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 20859892);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 19598634);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 20659919);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (8, 20147940);

-- Evento: Charla Introductoria a la IA Generativa
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Charla Introductoria a la IA Generativa', 'Auditorio Principal', TO_DATE('2025-09-22', 'YYYY-MM-DD'), '12:30', '13:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (9, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 21762491);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 20536609);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 18584524);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (9, 19357007);

-- Evento: Workshop de Robótica con Arduino
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Workshop de Robótica con Arduino', 'Sala CITT', TO_DATE('2025-09-30', 'YYYY-MM-DD'), '14:30', '15:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (10, 1);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (10, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 20440329);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 20965150);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (10, 19436902);

-- Evento: Seminario de Desarrollo con Unity
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Seminario de Desarrollo con Unity', 'Sala CITT', TO_DATE('2025-11-29', 'YYYY-MM-DD'), '15:00', '17:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (11, 3);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (11, 5);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (11, 19781701);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (11, 20675486);

-- Evento: Seminario de Desarrollo con Unity
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Seminario de Desarrollo con Unity', 'Sala CITT', TO_DATE('2025-12-11', 'YYYY-MM-DD'), '14:00', '16:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (12, 3);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (12, 4);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 21373704);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 18931988);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (12, 20659919);

-- Evento: Competencia de Programación 'CodeMasters'
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Competencia de Programación ''CodeMasters''', 'Auditorio Principal', TO_DATE('2025-10-29', 'YYYY-MM-DD'), '09:00', '12:00');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (13, 3);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 20823290);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 21621431);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 18073214);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (13, 19464148);

-- Evento: Presentación de Proyectos de Ciberseguridad
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Presentación de Proyectos de Ciberseguridad', 'Auditorio Principal', TO_DATE('2025-10-13', 'YYYY-MM-DD'), '13:30', '16:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (14, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 18931988);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 19278253);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (14, 20967729);

-- Evento: Taller de Ethical Hacking
INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, 'Taller de Ethical Hacking', 'Sala CITT', TO_DATE('2025-09-26', 'YYYY-MM-DD'), '14:30', '17:30');
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (15, 5);
INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES (15, 2);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 19891728);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 21964842);
INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES (15, 18656445);

COMMIT;
