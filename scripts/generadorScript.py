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

# Plantillas de proyectos por cada Track
PLANTILLAS_PROYECTOS = {
    'Track de Robótica': [
        'Brazo Robótico Autónomo con Visión Artificial', 'Robot Seguidor de Línea para Competición', 'Sistema de Navegación para Drones de Interior',
        'Robot de Exploración Planetaria a Escala'
    ],
    'Track de Programación Competitiva': [
        'Plataforma de Juez en Línea para Algoritmos', 'Visualizador de Estructuras de Datos Complejas', 'Framework para Pruebas de Estrés en Problemas de Competencia',
        'Repositorio de Soluciones Optimizadas'
    ],
    'Track de Inteligencia Artificial': [
        'Modelo de Detección de Emociones en Texto', 'Sistema de Recomendación de Contenidos Educativos', 'Red Neuronal para Clasificación de Imágenes Médicas',
        'Chatbot Asistente para Estudiantes de DUOC'
    ],
    'Track de Ciberseguridad': [
        'Herramienta de Análisis de Vulnerabilidades Web', 'Sistema de Detección de Intrusiones basado en Anomalías', 'Framework para Simulación de Ataques de Phishing',
        'Analizador de Malware en Entornos Aislados (Sandbox)'
    ],
    'Track de Desarrollo de Videojuegos': [
        'Juego de Estrategia en Tiempo Real con Motor Gráfico Propio', 'RPG 2D con Narrativa Interactiva', 'Videojuego Educativo sobre Historia de Chile',
        'Juego de Puzzles basado en Físicas para Móviles'
    ],
    'Track de Desarrollo Web y Móvil': [
        'Aplicación Móvil para la Gestión de Proyectos CITT', 'Plataforma Web de Intercambio de Habilidades entre Estudiantes', 'Marketplace de Proyectos Freelance para la Comunidad DUOC',
        'App de Realidad Aumentada para el Campus'
    ]
}

# --- CONFIGURACIÓN DE GENERACIÓN ---
NUM_ESTUDIANTES = 200
NUM_PROYECTOS = 80
RUT_MIN = 18000000
RUT_MAX = 22000000

# --- FUNCIÓN AUXILIAR ---
def calcular_dv(rut_sin_dv):
    """Calcula el dígito verificador de un RUT chileno."""
    rut_reverso = str(rut_sin_dv)[::-1]
    multiplicador = 2
    suma = 0
    for digito in rut_reverso:
        suma += int(digito) * multiplicador
        multiplicador += 1
        if multiplicador == 8:
            multiplicador = 2
    resto = suma % 11
    dv = 11 - resto
    if dv == 11: return '0'
    elif dv == 10: return 'K'
    else: return str(dv)

# --- FUNCIÓN PRINCIPAL DE GENERACIÓN ---
def generar_sql_oracle():
    """Genera el archivo .sql para poblar la base de datos Oracle."""
    ruts_usados = set()
    
    with open('poblar_citt_oracle.sql', 'w', encoding='utf-8') as f:
        print("Iniciando la generación del archivo poblar_citt_oracle.sql...")
        f.write("-- Script de Poblado para Base de Datos CITT DUOC UC (Oracle)\n\n")
        
        # --- Limpieza de Tablas y Reinicio de Secuencias ---
        f.write("-- Limpieza de tablas en orden de dependencia inversa\n")
        f.write("DELETE FROM ESTUDIANTE;\n")
        f.write("DELETE FROM PROYECTO;\n")
        f.write("DELETE FROM TRACK;\n")
        f.write("DELETE FROM PROFESOR;\n\n")
        
        f.write("-- Reinicio de secuencias (si es necesario)\n")
        f.write("DROP SEQUENCE SEQ_PROFESOR;\n")
        f.write("CREATE SEQUENCE SEQ_PROFESOR START WITH 1 INCREMENT BY 1;\n")
        f.write("DROP SEQUENCE SEQ_TRACK;\n")
        f.write("CREATE SEQUENCE SEQ_TRACK START WITH 1 INCREMENT BY 1;\n")
        f.write("DROP SEQUENCE SEQ_PROYECTO;\n")
        f.write("CREATE SEQUENCE SEQ_PROYECTO START WITH 101 INCREMENT BY 1;\n\n")

        # --- 1. Poblado de la tabla PROFESOR ---
        print("Generando 6 profesores...")
        f.write("-- 1. Poblado de la tabla PROFESOR\n")
        profesores_generados = []
        for i, prof in enumerate(PROFESORES):
            while True:
                numrun = random.randint(10000000, 15000000)
                if numrun not in ruts_usados:
                    ruts_usados.add(numrun)
                    break
            profesores_generados.append({'id': i + 1, 'pnombre': prof[0], 'papellido': prof[1]})
            f.write(f"INSERT INTO PROFESOR (id_profesor, pnombre, papellido, rut) VALUES (SEQ_PROFESOR.NEXTVAL, '{prof[0]}', '{prof[1]}', {numrun});\n")
        
        # --- 2. Poblado de la tabla TRACK ---
        print("Generando 6 tracks y asignando profesores...")
        f.write("\n-- 2. Poblado de la tabla TRACK\n")
        tracks_generados = []
        for i, track_nombre in enumerate(TRACKS):
            id_profesor_asignado = profesores_generados[i]['id']
            tracks_generados.append({'id': i + 1, 'nombre': track_nombre})
            f.write(f"INSERT INTO TRACK (id_track, nombre, id_profesor) VALUES (SEQ_TRACK.NEXTVAL, '{track_nombre}', {id_profesor_asignado});\n")

        # --- 3. Poblado de la tabla PROYECTO ---
        print(f"Generando {NUM_PROYECTOS} proyectos...")
        f.write(f"\n-- 3. Poblado de la tabla PROYECTO\n")
        proyectos_generados_ids = []
        for i in range(NUM_PROYECTOS):
            track_asignado = random.choice(tracks_generados)
            nombre_proyecto = random.choice(PLANTILLAS_PROYECTOS[track_asignado['nombre']])
            # Evitar duplicados de nombres de proyecto
            nombre_proyecto_unico = f"{nombre_proyecto} v{random.randint(1,5)}"
            descripcion = f"Descripción detallada del proyecto {nombre_proyecto_unico}."
            id_proyecto = 101 + i
            proyectos_generados_ids.append(id_proyecto)
            nombre_proyecto_sql = nombre_proyecto_unico.replace("'", "''")
            f.write(f"INSERT INTO PROYECTO (id_proyecto, nombre, descripcion, id_track) VALUES ({id_proyecto}, '{nombre_proyecto_sql}', '{descripcion}', {track_asignado['id']});\n")

        # --- 4. Poblado de la tabla ESTUDIANTE ---
        print(f"Generando {NUM_ESTUDIANTES} estudiantes...")
        f.write(f"\n-- 4. Poblado de la tabla ESTUDIANTE\n")
        proyectos_disponibles = list(proyectos_generados_ids) # Copia para poder eliminar ids
        random.shuffle(proyectos_disponibles)

        for i in range(NUM_ESTUDIANTES):
            while True:
                numrun = random.randint(RUT_MIN, RUT_MAX)
                if numrun not in ruts_usados:
                    ruts_usados.add(numrun)
                    break
            
            dv_run = calcular_dv(numrun)
            
            # Proporción 80% hombres, 20% mujeres
            if random.random() < 0.80:
                id_genero = 2 # Masculino
                pnombre = random.choice(NOMBRES_MASCULINOS)
                snombre = random.choice(NOMBRES_MASCULINOS)
            else:
                id_genero = 1 # Femenino
                pnombre = random.choice(NOMBRES_FEMENINOS)
                snombre = random.choice(NOMBRES_FEMENINOS)

            papellido = random.choice(APELLIDOS)
            mapellido = random.choice(APELLIDOS)
            fec_nac = datetime.now() - timedelta(days=random.randint(18*365, 30*365))
            
            # Asignar proyecto si quedan disponibles (un estudiante puede no tener proyecto)
            id_proyecto_asignado = 'NULL'
            if proyectos_disponibles and random.random() < 0.7: # 70% de probabilidad de tener proyecto
                id_proyecto_asignado = proyectos_disponibles.pop()

            f.write(
                f"INSERT INTO ESTUDIANTE (numrun, dv_run, pnombre, snombre, papellido, mapellido, fec_nac, id_genero, id_proyecto) VALUES "
                f"({numrun}, '{dv_run}', '{pnombre}', '{snombre}', '{papellido}', '{mapellido}', "
                f"TO_DATE('{fec_nac.strftime('%Y-%m-%d')}', 'YYYY-MM-DD'), {id_genero}, {id_proyecto_asignado});\n"
            )

        f.write("\nCOMMIT;\n")
        print("Archivo 'poblar_citt_oracle.sql' generado exitosamente.")

if __name__ == "__main__":
    generar_sql_oracle()