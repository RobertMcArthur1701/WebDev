currentOption=0

until `test $currentOption = 9`; do
    clear
    echo "1- Llistar el contingut del directori actual"
    echo "2- Cercar fitxers o directoris amb el nom indicat"
    echo "3- Crear o editar un fitxer"
    echo "4- Comptar les paraules d'un fitxer"
    echo "5- Protegir un fitxer"
    echo ""
    echo "9- Finalitzar, sortir d'aquest menu"
done