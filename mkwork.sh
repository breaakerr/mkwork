mkwork () {
        if [ $# -eq 0 ]
        then
                echo "Uso: mkwork <nombre_carpeta>"
                return 1
        fi
        folder_name="$1" 
        mkdir -p "$folder_name"
        echo "Carpeta creada con éxito: $folder_name"
        subfolders=("Nmap scan" "Exploits/Contenidos" "Descargas") 
        for subfolder in "${subfolders[@]}"
        do
                mkdir -p "$folder_name/$subfolder"
                echo "Carpeta creada con éxito: $folder_name/$subfolder"
        done
}
         