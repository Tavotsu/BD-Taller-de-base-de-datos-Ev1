import random
from datetime import datetime, timedelta

# --- CONSTANTES Y DATOS BASE ---
NOMBRES_FEMENINOS = [
    'Sofía', 'Emilia', 'Isabella', 'Julieta', 'Trinidad', 'Isidora', 'Emma', 'Agustina', 'Amanda', 'Florencia',
    'Mía', 'Antonella', 'Josefa', 'Catalina', 'Martina', 'Valentina', 'Victoria', 'Maite', 'Antonia', 'Renata'
]
NOMBRES_MASCULINOS = [
    'Mateo', 'Gaspar', 'Liam', 'Lucas', 'Santiago', 'Benjamín', 'Vicente', 'Agustín', 'Maximiliano', 'Tomás',
    'Joaquín', 'Bastián', 'Martín', 'Matías', 'Facundo', 'Emiliano', 'Alonso', 'Thiago', 'Bruno', 'Gabriel'
]
APELLIDOS = [
    'González', 'Muñoz', 'Rojas', 'Díaz', 'Pérez', 'Soto', 'Contreras', 'Silva', 'Martínez', 'Sepúlveda',
    'Morales', 'Rodríguez', 'López', 'Fuentes', 'Torres', 'Araya', 'Flores', 'Espinoza', 'Valenzuela', 'Castillo'
]
TRACKS = [
    'Track de Robótica', 'Track de Programación Competitiva', 'Track de Inteligencia Artificial',
    'Track de Ciberseguridad', 'Track de Desarrollo de Videojuegos', 'Track de Desarrollo Web y Móvil'
]
PROFESORES = [
    ('Juan', 'Pérez'), ('Ana', 'García'), ('Carlos', 'López'),
    ('María', 'Martínez'), ('Luis', 'Hernández'), ('Elena', 'Gómez')
]
PLANTILLAS_PROYECTOS = {
    'Track de Robótica': ['Brazo Robótico Autónomo', 'Robot Seguidor de Línea', 'Sistema de Navegación para Drones'],
    'Track de Programación Competitiva': ['Plataforma de Juez en Línea', 'Visualizador de Algoritmos', 'Framework para Pruebas de Estrés'],
    'Track de Inteligencia Artificial': ['Modelo de Detección de Emociones', 'Sistema de Recomendación Educativo', 'Chatbot Asistente DUOC'],
    'Track de Ciberseguridad': ['Herramienta de Análisis de Vulnerabilidades', 'Sistema de Detección de Intrusiones', 'Framework de Simulación de Phishing'],
    'Track de Desarrollo de Videojuegos': ['Juego de Estrategia en Tiempo Real', 'RPG 2D con Narrativa Interactiva', 'Juego Educativo sobre Historia'],
    'Track de Desarrollo Web y Móvil': ['App para la Gestión de Proyectos CITT', 'Plataforma Web de Intercambio de Habilidades', 'Marketplace de Proyectos Freelance']
}
NOMBRES_EVENTOS = [
    "Charla Introductoria a la IA Generativa", "Taller de Ethical Hacking", "Competencia de Programación 'CodeMasters'",
    "Seminario de Desarrollo con Unity", "Workshop de Robótica con Arduino", "Presentación de Proyectos de Ciberseguridad"
]
LUGARES_EVENTOS = ["Auditorio Principal", "Sala CatchAI", "Laboratorio de Redes", "Sala de Conferencias B", "Patio Central"]

# --- CONFIGURACIÓN DE GENERACIÓN ---
NUM_ESTUDIANTES = 140
NUM_PROYECTOS = 50
NUM_EVENTOS = 15
RUT_MIN = 18000000
RUT_MAX = 22000000

# --- FUNCIÓN AUXILIAR ---
def calcular_dv(rut_sin_dv):
    rut_reverso = str(rut_sin_dv)[::-1]
    multiplicador, suma = 2, 0
    for digito in rut_reverso:
        suma += int(digito) * multiplicador
        multiplicador = 2 if multiplicador == 7 else multiplicador + 1
    resto = suma % 11
    dv = 11 - resto
    if dv == 11: return '0'
    if dv == 10: return 'K'
    return str(dv)

# --- FUNCIÓN PRINCIPAL DE GENERACIÓN ---
# --- FUNCIÓN PRINCIPAL DE GENERACIÓN (MODIFICADA) ---
def generar_sql_oracle():
    ruts_usados = set()
    
    with open('poblar_citt_oracle_v2.sql', 'w', encoding='utf-8') as f:
        print("Iniciando la generación del archivo poblar_citt_oracle_v2.sql...")
        f.write("-- Script de Poblado v2 para Base de Datos CITT DUOC UC (Oracle)\n\n")
        
        # --- Limpieza de Tablas y Reinicio de Secuencias ---
        f.write("-- Limpieza de tablas en orden de dependencia inversa\n")
        f.write("DELETE FROM EVENTO_ESTUDIANTE;\n")
        f.write("DELETE FROM EVENTO_PROFESOR;\n")
        f.write("DELETE FROM EVENTO;\n")
        f.write("DELETE FROM ESTUDIANTE;\n")
        f.write("DELETE FROM PROYECTO;\n")
        f.write("DELETE FROM TRACK;\n")
        f.write("DELETE FROM PROFESOR;\n\n")
        
        f.write("-- Reinicio de secuencias\n")
        f.write("DROP SEQUENCE SEQ_PROFESOR;\nCREATE SEQUENCE SEQ_PROFESOR START WITH 1 INCREMENT BY 1;\n")
        f.write("DROP SEQUENCE SEQ_TRACK;\nCREATE SEQUENCE SEQ_TRACK START WITH 1 INCREMENT BY 1;\n")
        f.write("DROP SEQUENCE SEQ_PROYECTO;\nCREATE SEQUENCE SEQ_PROYECTO START WITH 101 INCREMENT BY 1;\n")
        f.write("DROP SEQUENCE SEQ_EVENTO;\nCREATE SEQUENCE SEQ_EVENTO START WITH 1 INCREMENT BY 1;\n\n")

        # --- 1. Poblado de la tabla PROFESOR ---
        print("Generando 6 profesores...")
        f.write("-- 1. Poblado de la tabla PROFESOR\n")
        profesores_generados = []
        for i, prof in enumerate(PROFESORES):
            while True:
                numrun = random.randint(10000000, 15000000)
                if numrun not in ruts_usados:
                    ruts_usados.add(numrun); break
            profesores_generados.append({'id': i + 1, 'pnombre': prof[0]})
            f.write(f"INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, '{prof[0]}', '{prof[1]}', {numrun});\n")
        
        # --- 2. Poblado de la tabla TRACK ---
        print("Generando 6 tracks...")
        f.write("\n-- 2. Poblado de la tabla TRACK\n")
        tracks_generados = [{'id': i + 1, 'nombre': nombre} for i, nombre in enumerate(TRACKS)]
        for i, track in enumerate(tracks_generados):
            f.write(f"INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, '{track['nombre']}', {profesores_generados[i]['id']});\n")

        # --- 3. Poblado de la tabla PROYECTO ---
        print(f"Generando {NUM_PROYECTOS} proyectos...")
        f.write(f"\n-- 3. Poblado de la tabla PROYECTO\n")
        
        # NUEVO: Diccionario para agrupar proyectos por su track.
        proyectos_por_track = {track['id']: [] for track in tracks_generados}
        
        for i in range(NUM_PROYECTOS):
            track_asignado = random.choice(tracks_generados)
            nombre_proyecto = f"{random.choice(PLANTILLAS_PROYECTOS[track_asignado['nombre']])} v{random.randint(1,5)}"
            id_proyecto = 101 + i
            
            # NUEVO: Guardamos el proyecto en la lista de su track correspondiente.
            proyectos_por_track[track_asignado['id']].append(id_proyecto)
            
            nombre_proyecto_sql = nombre_proyecto.replace("'", "''")
            f.write(f"INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES ({id_proyecto}, '{nombre_proyecto_sql}', 'Descripción del proyecto.', {track_asignado['id']});\n")

        # --- 4. Poblado de la tabla ESTUDIANTE ---
        print(f"Generando {NUM_ESTUDIANTES} estudiantes...")
        f.write(f"\n-- 4. Poblado de la tabla ESTUDIANTE\n")

        # NUEVO: Lógica para garantizar 3 estudiantes por track.
        asignaciones_obligatorias = []
        proyectos_ya_seleccionados = set()
        
        for track_id in proyectos_por_track:
            # Tomamos hasta 3 proyectos de cada track que no hayan sido ya seleccionados.
            proyectos_disponibles_en_track = [p for p in proyectos_por_track[track_id] if p not in proyectos_ya_seleccionados]
            random.shuffle(proyectos_disponibles_en_track)
            
            # Seleccionamos 3 para la asignación obligatoria
            for i in range(min(3, len(proyectos_disponibles_en_track))):
                proyecto = proyectos_disponibles_en_track[i]
                asignaciones_obligatorias.append(proyecto)
                proyectos_ya_seleccionados.add(proyecto)

        # NUEVO: Creamos la lista de proyectos restantes para asignación aleatoria.
        todos_los_proyectos = [p for lista in proyectos_por_track.values() for p in lista]
        proyectos_disponibles = [p for p in todos_los_proyectos if p not in proyectos_ya_seleccionados]
        random.shuffle(proyectos_disponibles)
        
        estudiantes_generados_ruts = []
        for i in range(NUM_ESTUDIANTES):
            while True:
                numrun = random.randint(RUT_MIN, RUT_MAX)
                if numrun not in ruts_usados:
                    ruts_usados.add(numrun); break
            
            estudiantes_generados_ruts.append(numrun)
            dv_run = calcular_dv(numrun)
            
            if random.random() < 0.80:
                id_genero, pnombre, snombre = 2, random.choice(NOMBRES_MASCULINOS), random.choice(NOMBRES_MASCULINOS)
            else:
                id_genero, pnombre, snombre = 1, random.choice(NOMBRES_FEMENINOS), random.choice(NOMBRES_FEMENINOS)
            
            papellido, mapellido = random.choice(APELLIDOS), random.choice(APELLIDOS)
            fec_nac = datetime.now() - timedelta(days=random.randint(18*365, 30*365))
            
            id_proyecto_asignado = 'NULL'
            # NUEVO: Asignamos primero de la lista obligatoria.
            if asignaciones_obligatorias:
                id_proyecto_asignado = asignaciones_obligatorias.pop(0)
            # NUEVO: Si ya se cumplió el mínimo, asignamos de los restantes con probabilidad.
            elif proyectos_disponibles and random.random() < 0.7:
                id_proyecto_asignado = proyectos_disponibles.pop()

            f.write(f"INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES ({numrun}, '{dv_run}', '{pnombre}', '{snombre}', '{papellido}', '{mapellido}', TO_DATE('{fec_nac.strftime('%Y-%m-%d')}', 'YYYY-MM-DD'), {id_genero}, {id_proyecto_asignado});\n")

        # --- 5. Poblado de Eventos y Asignaciones ---
        print(f"Generando {NUM_EVENTOS} eventos y sus asignaciones...")
        f.write(f"\n-- 5. Poblado de la tabla EVENTO y sus relaciones\n")
        
        base_date = datetime(2025, 9, 12) # Fecha actual del contexto
        for i in range(NUM_EVENTOS):
            id_evento = i + 1
            nombre_evento = random.choice(NOMBRES_EVENTOS)
            lugar = random.choice(LUGARES_EVENTOS)
            fecha_evento = base_date + timedelta(days=random.randint(5, 90))
            
            start_hour = random.randint(9, 16)
            start_minute = random.choice([0, 30])
            hora_inicio = f"{start_hour:02d}:{start_minute:02d}"
            
            end_hour = start_hour + random.randint(1, 3)
            hora_fin = f"{end_hour:02d}:{start_minute:02d}"
            
            f.write(f"\n-- Evento: {nombre_evento}\n")
            f.write(f"INSERT INTO EVENTO (id_evento, nombre, lugar, fecha, hora_inicio, hora_fin) VALUES (SEQ_EVENTO.NEXTVAL, '{nombre_evento}', '{lugar}', TO_DATE('{fecha_evento.strftime('%Y-%m-%d')}', 'YYYY-MM-DD'), '{hora_inicio}', '{hora_fin}');\n")
            
            # Asignar Profesores al Evento
            profesores_a_asignar = random.sample(profesores_generados, k=random.randint(1, 2))
            for prof in profesores_a_asignar:
                f.write(f"INSERT INTO EVENTO_PROFESOR (id_evento, id_profesor) VALUES ({id_evento}, {prof['id']});\n")
            
            # Asignar Estudiantes a Cargo del Evento
            estudiantes_a_asignar = random.sample(estudiantes_generados_ruts, k=random.randint(2, 5))
            for rut_estudiante in estudiantes_a_asignar:
                f.write(f"INSERT INTO EVENTO_ESTUDIANTE (id_evento, numrun_estudiante) VALUES ({id_evento}, {rut_estudiante});\n")

        f.write("\nCOMMIT;\n")
        print("Archivo 'poblar_citt_oracle_v2.sql' generado exitosamente.")

if __name__ == "__main__":
    generar_sql_oracle()