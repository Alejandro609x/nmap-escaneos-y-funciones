#Crear directorios
function mkt (){
    mkdir {nmap,content,exploits}
}

#Extraer el contenido de allPort
function extractPorts(){
    # Extraer puertos abiertos
    ports="$(cat "$1" | grep -oP '\d{1,5}/open' | awk -F'/' '{print $1}' | xargs | tr ' ' ', ')"

    # Extraer la dirección IP
    ip_address="$(cat "$1" | grep -oP '^Host: .* \(\)' | head -n 1 | awk '{print $2}')"

    # Guardar la información en un archivo temporal
    echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
    echo -e "\t[*] IP Address: $ip_address" >> extractPorts.tmp
    echo -e "\t[*] Open ports: $ports\n" >> extractPorts.tmp

    # Copiar los puertos al portapapeles si xclip está instalado
    if command -v xclip &> /dev/null; then
        echo -n "$ports" | xclip -sel clip
        echo -e "[*] Ports copied to clipboard\n" >> extractPorts.tmp
    else
        echo -e "[!] xclip not found, ports not copied to clipboard\n" >> extractPorts.tmp
    fi

    # Mostrar el contenido y eliminar el archivo temporal
    cat extractPorts.tmp
    rm extractPorts.tmp
}

