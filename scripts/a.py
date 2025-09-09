import random
from datetime import datetime, timedelta

# --- CONSTANTES Y DATOS BASE ---
# Mantenemos las listas de nombres y apellidos que son muy útiles.
NOMBRES_FEMENINOS = [
    'Sofía', 'Emilia', 'Isabella', 'Julieta', 'Trinidad', 'Isidora', 'Emma', 'Agustina', 'Amanda', 'Florencia',
    'Mía', 'Antonella'
]
NOMBRES_MASCULINOS = [
    'Mateo', 'Gaspar', 'Liam', 'Lucas', 'Santiago', 'Benjamín', 'Vicente', 'Agustín', 'Maximiliano', 'Tomás',
    'Joaquín', 'Bastián', 'Martín', 'Matías', 'Facundo', 'Emiliano', 'Alonso', 'Thiago', 'Bruno', 'Gabriel'
]
APELLIDOS = [
    'González', 'Muñoz', 'Rojas', 'Díaz', 'Pérez', 'Soto', 'Contreras', 'Silva', 'Martínez', 'Sepúlveda',
    'Morales', 'Rodríguez', 'López', 'Fuentes', 'Torres', 'Araya', 'Flores', 'Espinoza', 'Valenzuela', 'Castillo'
]

# Nuevos datos para nuestro dominio de Club de Estudiantes
NOMBRES_CLUBES = [
    'Club de Robótica', 'Club de Debate', 'Club de Programación Competitiva', 'Club de Inteligencia Artificial',
    'Semillero de Ciberseguridad', 'Taller de Desarrollo de Videojuegos'
]
NOMBRES_PROYECTOS = [
    'App de Realidad Virtual para Educación', 'Sistema de Gestión de Biblioteca', 'Robot Seguidor de Línea Avanzado',
    'Modelo de Machine Learning para Detección de Fake News', 'Plataforma Web para Voluntariado',
    'Videojuego Educativo de Historia', 'Red Neuronal para Composición Musical'
]

# --- CONFIGURACIÓN DE GENERACIÓN ---
NUM_ESTUDIANTES = 45
RUT_MIN = 16000000
RUT_MAX = 22000000

# --- FUNCIÓN PARA CALCULAR EL DÍGITO VERIFICADOR DEL RUT ---
# Esta función es un clásico y funciona perfectamente, la reutilizamos tal cual.
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

# --- FUNCIÓN PRINCIPAL PARA GENERAR EL SCRIPT SQL ---
def generar_sql_oracle():
    """
    Genera un script .sql para poblar una base de datos Oracle con datos
    de estudiantes, clubes y proyectos.
    """
    ruts_usados = set()
    
    # Abrimos el archivo en modo escritura. Se creará si no existe.
    with open('poblar_club_estudiantes_oracle.sql', 'w', encoding='utf-8') as f:
        print("Iniciando la generación del archivo poblar_club_estudiantes_oracle.sql...")
        
        # --- ENCABEZADO Y LIMPIEZA INICIAL ---
        f.write("-- Script de Poblado para Base de Datos de Club de Estudiantes (Oracle)\n\n")
        
        # En Oracle, para "resetear" las tablas, es común deshabilitar constraints,
        # truncar y luego volver a habilitar. Pero una forma más segura es
        # simplemente borrar en el orden inverso a la creación y la dependencia.
        # Aquí vamos a generar un script que asume que las tablas ya existen.
        f.write("-- Limpieza de datos existentes (en orden inverso de dependencia)\n")
        f.write("TRUNCATE TABLE ESTUDIANTE_PROYECTO;\n")
        f.write("TRUNCATE TABLE ESTUDIANTE_CLUB;\n")
        f.write("TRUNCATE TABLE ESTUDIANTE;\n")
        f.write("TRUNCATE TABLE PROYECTO;\n")
        f.write("TRUNCATE TABLE CLUB;\n\n")

        # --- POBLADO DE TABLAS BASE (SIN DEPENDENCIAS) ---
        
        # 1. Clubes
        f.write("-- 1. Poblado de la tabla CLUB\n")
        clubes_generados = []
        for i, nombre_club in enumerate(NOMBRES_CLUBES, 1):
            clubes_generados.append({'id': i, 'nombre': nombre_club})
            # La sintaxis de INSERT es estándar, no necesita cambios drásticos.
            f.write(f"INSERT INTO CLUB (ID_CLUB, NOMBRE) VALUES ({i}, '{nombre_club}');\n")
        
        # 2. Proyectos
        f.write("\n-- 2. Poblado de la tabla PROYECTO\n")
        proyectos_generados = []
        for i, nombre_proyecto in enumerate(NOMBRES_PROYECTOS, 1):
            # Escapamos comillas simples en el nombre del proyecto si las hubiera
            nombre_proyecto_sql = nombre_proyecto.replace("'", "''")
            proyectos_generados.append({'id': i, 'nombre': nombre_proyecto_sql})
            f.write(f"INSERT INTO PROYECTO (ID_PROYECTO, NOMBRE) VALUES ({i}, '{nombre_proyecto_sql}');\n")

        # --- POBLADO DE TABLAS CON DEPENDENCIAS ---

        # 3. Estudiantes
        print(f"Generando {NUM_ESTUDIANTES} estudiantes...")
        f.write(f"\n-- 3. Poblado de la tabla ESTUDIANTE ({NUM_ESTUDIANTES} registros)\n")
        estudiantes_generados = []
        for _ in range(NUM_ESTUDIANTES):
            # Generamos un RUT único
            while True:
                numrun = random.randint(RUT_MIN, RUT_MAX)
                if numrun not in ruts_usados:
                    ruts_usados.add(numrun)
                    break
            
            dv_run = calcular_dv(numrun)
            
            # Asignamos nombres y apellidos aleatoriamente
            if random.random() < 0.5: # 50% probabilidad para cada género
                pnombre, snombre = random.choice(NOMBRES_FEMENINOS), random.choice(NOMBRES_FEMENINOS)
            else:
                pnombre, snombre = random.choice(NOMBRES_MASCULINOS), random.choice(NOMBRES_MASCULINOS)
            
            papellido, mapellido = random.choice(APELLIDOS), random.choice(APELLIDOS)
            
            # Generamos una fecha de nacimiento (estudiantes entre 18 y 28 años)
            fec_nac = datetime.now() - timedelta(days=random.randint(18*365, 28*365))
            
            estudiantes_generados.append(numrun) # Guardamos el RUT para usarlo después
            
            # ¡IMPORTANTE! Usamos TO_DATE para insertar fechas en Oracle
            f.write(f"INSERT INTO ESTUDIANTE (NUMRUN, DV_RUN, PNOMBRE, SNOMBRE, PAPELLIDO, MAPELLIDO, FEC_NAC) VALUES "
                    f"({numrun}, '{dv_run}', '{pnombre}', '{snombre}', '{papellido}', '{mapellido}', "
                    f"TO_DATE('{fec_nac.strftime('%Y-%m-%d')}', 'YYYY-MM-DD'));\n")

        # --- POBLADO DE TABLAS DE RELACIÓN (MUCHOS A MUCHOS) ---
        
        print("Asignando estudiantes a clubes y proyectos...")
        # 4. Relación Estudiante <-> Club
        f.write("\n-- 4. Poblado de la tabla de relación ESTUDIANTE_CLUB\n")
        for numrun in estudiantes_generados:
            # Cada estudiante estará en 1 o 2 clubes
            num_clubes = random.randint(1, 2)
            clubes_asignados = random.sample(clubes_generados, k=num_clubes)
            for club in clubes_asignados:
                f.write(f"INSERT INTO ESTUDIANTE_CLUB (NUMRUN_ESTUDIANTE, ID_CLUB) VALUES ({numrun}, {club['id']});\n")

        # 5. Relación Estudiante <-> Proyecto
        f.write("\n-- 5. Poblado de la tabla de relación ESTUDIANTE_PROYECTO\n")
        for numrun in estudiantes_generados:
            # Cada estudiante participará en entre 1 y 3 proyectos
            num_proyectos = random.randint(1, 3)
            proyectos_asignados = random.sample(proyectos_generados, k=num_proyectos)
            for proyecto in proyectos_asignados:
                f.write(f"INSERT INTO ESTUDIANTE_PROYECTO (NUMRUN_ESTUDIANTE, ID_PROYECTO) VALUES ({numrun}, {proyecto['id']});\n")

        # --- CIERRE DE LA TRANSACCIÓN ---
        f.write("\n-- Confirmar todos los cambios en la base de datos\n")
        f.write("COMMIT;\n")
        
        print("Archivo 'poblar_club_estudiantes_oracle.sql' generado exitosamente.")

# --- Punto de entrada para ejecutar el script ---
if __name__ == "__main__":
    generar_sql_oracle()