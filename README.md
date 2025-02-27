```markdown
# Auditoría de Redes con Nmap y Funciones Personalizadas

Este repositorio contiene scripts y funciones personalizadas para realizar auditorías de seguridad en redes utilizando `Nmap`. Los scripts están diseñados para facilitar la enumeración de puertos, detectar sistemas operativos, y evadir detección en entornos con firewall.

## Contenido del Repositorio
- **Funciones Personalizadas**: Funciones para crear directorios organizados, extraer puertos abiertos de un archivo y más.
- **Comandos de Nmap**: Configuraciones avanzadas de escaneo para realizar auditorías detalladas.
- **Técnicas de Evasión de Firewall**: Métodos para eludir firewalls y sistemas IDS/IPS durante el escaneo.
- **Scripts para Automatización**: Secuencias de comandos para automatizar el proceso de escaneo y análisis de puertos.

## Instalación

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu_usuario/nombre_del_repositorio.git
   ```

2. Navega al directorio del proyecto:
   ```bash
   cd nombre_del_repositorio
   ```

3. Asegúrate de tener `nmap` y `xclip` instalados. Si no los tienes, puedes instalarlos con:
   ```bash
   sudo apt install nmap xclip
   ```

4. Agrega las funciones personalizadas a tu archivo `.zshrc` o `.bashrc` para que estén disponibles en la terminal.

## Uso

### Función para crear directorios:
```bash
mkt
```
Este comando crea tres directorios: `nmap`, `content`, y `exploits` para organizar los archivos durante la auditoría.

### Función para extraer puertos abiertos de un archivo `allPorts.txt`:
```bash
extractPorts allPorts.txt
```
Este script extrae los puertos abiertos y la dirección IP de un archivo de salida de Nmap y copia los puertos al portapapeles (si tienes `xclip` instalado).

### Comandos de Nmap:

- **Escaneo de puertos abiertos**:
  ```bash
  nmap --open <IP>
  ```

- **Escaneo exhaustivo de puertos**:
  ```bash
  nmap -p- <IP>
  ```

- **Evasión de firewall (usando fragmentación)**:
  ```bash
  nmap -f <IP>
  ```

## Contribuciones

Si deseas contribuir, por favor abre un *pull request* con tus cambios. Asegúrate de que tus cambios estén bien documentados y no rompan la funcionalidad existente.

## Licencia

Este proyecto está bajo la licencia [MIT](LICENSE).
```

### Explicación de cada sección:
1. **Título**: Una descripción clara y breve de qué trata el repositorio.
2. **Descripción del Proyecto**: Explica el propósito del proyecto y lo que contiene.
3. **Instalación**: Instrucciones detalladas para que otros usuarios puedan instalar y ejecutar el proyecto.
4. **Uso**: Muestra cómo utilizar las funciones y los comandos que has preparado.
5. **Contribuciones**: Explica cómo otros pueden contribuir al proyecto, si es abierto para modificaciones.
6. **Licencia**: Incluye información sobre la licencia que estás utilizando para el código. (Usualmente MIT para proyectos abiertos).

Este formato es flexible, puedes agregar o quitar secciones según sea necesario.
