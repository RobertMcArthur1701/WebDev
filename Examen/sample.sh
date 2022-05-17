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
    read currentOption

    case $currentOption in
    1)  ls -l
        ;;
    2)  echo "Quin fitxer o directori cerques? "
        read findName
        find -name *$findName*
        ;;
    3)  echo "Quin nom vols posar-li al fitxer? "
        read fileName
        vim $fileName
        ;;
    4)  echo "De quin fitxer vols comptar les paraules "
        read readFile
        wordCount=`wc -w $readFile`
        lineCount=`wc -l $readFile`
        echo "Aquest fitxer conte $wordCount paraules i $lineCount linees. "
        ;;





    9)  echo 'Sortint...'
        ;;
    esac
    read -p "Pitjar el boto intro per continuar..." sigan
done