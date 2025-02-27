
# Auditoría de Redes con Nmap y Funciones Personalizadas

Este repositorio contiene scripts y funciones personalizadas para realizar auditorías de seguridad en redes utilizando **Nmap**. Los scripts están diseñados para facilitar la enumeración de puertos, la detección de sistemas operativos y la evasión de detección en entornos con firewall.

## Contenido

- **Funciones personalizadas**: Organiza tu trabajo y extrae puertos abiertos de manera eficiente.
- **Comandos de Nmap**: Escaneos avanzados y evasión de firewalls.
- **Automatización**: Scripts que agilizan el proceso de escaneo y análisis.

## Instalación

### Clonar el repositorio

```bash
git clone https://github.com/Alejandro609x/nmap-escaneos-y-funciones.git
```

### Navegar al directorio

```bash
cd nombre_del_repositorio
```

### Instalar dependencias

Asegúrate de tener **Nmap** y **xclip** instalados en tu sistema.

```bash
sudo apt install nmap xclip
```

### Agregar funciones personalizadas a tu archivo `.zshrc`

Edita tu archivo de configuración de **Zsh** (o **Bash**) y agrega las funciones personalizadas:

```bash
nano ~/.zshrc
```

Copia y pega las funciones del archivo `functions.zsh` o directamente desde este repositorio.

### Recargar el archivo de configuración

```bash
source ~/.zshrc
```

## Uso

### Crear directorios organizados

Para crear los directorios `nmap`, `content` y `exploits`, ejecuta:

```bash
mkt
```

### Extraer puertos abiertos de un archivo `allPorts.txt`

Si tienes un archivo `allPorts.txt` con información de puertos abiertos, utiliza la siguiente función para extraer la IP y los puertos:

```bash
extractPorts allPorts.txt
```

Este comando también copiará los puertos al portapapeles (si tienes **xclip** instalado).

### Comandos de Nmap

#### Escaneo de todos los puertos

```bash
nmap -p- <IP>
```

#### Escaneo de un rango específico de puertos

```bash
nmap -p<puerto_inicio>-<puerto_final> <IP>
```

#### Escaneo de puertos abiertos

```bash
nmap --open <IP>
```

#### Escaneo SYN (sigiloso)

```bash
nmap -sS <IP>
```

#### Escaneo con scripts básicos de Nmap

```bash
nmap -p22 -sC <IP>
```

#### Escaneo con evasión de firewall (fragmentación)

```bash
nmap -f <IP>
```

#### Escaneo con evasión utilizando decoys

```bash
nmap -D RND:10 <IP>
```

#### Escaneo de versión y servicios

```bash
nmap -sV <IP>
```

#### Escaneo de host sin resolución DNS

```bash
nmap -n <IP>
```

#### Escaneo agresivo

```bash
nmap -A <IP>
```

## Técnicas de Evasión de Firewall

Nmap permite realizar escaneos sigilosos y evadir la detección de firewalls. Aquí algunas técnicas adicionales:

- **Modificar el tamaño de los paquetes**:

```bash
nmap --mtu 1280 <IP>
```

- **Cambiar el puerto de origen**:

```bash
nmap --source-port 53 <IP>
```

- **Reducir la tasa de paquetes**:

```bash
nmap --min-rate 500 <IP>
```

### Explicación de las secciones:

1. **Instalación**: Detalles claros de cómo clonar el repositorio, instalar dependencias necesarias y configurar el archivo `.zshrc`.
2. **Uso**: Comandos útiles con explicaciones breves para que el usuario sepa qué hace cada uno. Los ejemplos de Nmap y las funciones personalizadas están documentados con un enfoque práctico.
3. **Técnicas de evasión de firewall**: Se explica cómo usar Nmap para evitar ser detectado por firewalls con ejemplos prácticos.
4. **Contribuciones y Licencia**: Fomentando que los usuarios contribuyan al proyecto y proporcionando información sobre la licencia.
