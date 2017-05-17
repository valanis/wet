# wet

## Requisitos
- Tener instalado `Python 2.7` y `pip`.
- Tener una instancia de MySQL levantada, y las librerias cliente instaladas.

### Instalación de Entorno Virtual
En la carpeta raiz del proyecto ejecutar:
- `pip install virtualenv`
- `virtualenv wet-venv`

Activar el entorno virtual para instalar las dependencias y correr la aplicación:
- `source wet-venv/bin/activate`

Cuando se desee desactivar el entorno virutal ejecutar `deactivate`.

### Instalación de dependencias
Ejecutar `pip install -r requirements.txt` con el entorno virtual activado.

## Correr la aplicación
- Copiar el archivo de ejemplo de configuración ubicado en `src/mysql/config.sample.py` a `src/mysql/config.py` y completar con los datos del entorno.
- Ejecutar `python main.py` (TODO completar los parametros de ejecucion cuando este listo)
