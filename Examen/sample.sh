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
        echo "Aquest fitxer conte ${wordCount//$readFile}paraules i ${lineCount//$readFile}linees. "
        ;;
    5)  echo "A quin fitxer voleu alterar els permisos? "
        read fileChange
        
        echo "Voleu [d]onar o [l]levar permisos? "
        read permType
        
        if [[ $permType=="d" ]]
        then
            echo "Voleu canviar els permisos de [l]ectura o [e]scritura? "
            read whatPerm
            if [[ $whatPerm=="l" ]]
            then
                echo "Voleu canviar-los al [p]ropietari, [g]rup o [a]ltres? "
                read whoPerm
                if [[ $whoPerm=="p" ]]
                then
                    sudo chmod u+r "$fileChange"
                elif [[ $whoPerm=="g" ]]
                then
                    sudo chmod g+r "$fileChange"
                elif [[ $whoPerm=="a" ]]
                then
                    sudo chmod o+r "$fileChange"
                else
                    echo "Argument invalid proporcionat. "
                fi
            elif [[ "$whatPerm"=="e" ]]
            then
                echo "Voleu canviar-los al [p]ropietari, [g]rup o [a]ltres? "
                read whoPerm
                if [[ "$whoPerm"=="p" ]]
                then
                    sudo chmod u+w "$fileChange"
                elif [[ "$whoPerm"=="g" ]]
                then
                    sudo chmod g+w "$fileChange"
                elif [[ "$whoPerm"=="a" ]]
                then
                    sudo chmod o+w "$fileChange"
                else
                    echo "Argument invalid proporcionat. "
                fi
            else
                echo "Argument invalid proporcionat. "
            fi
        elif [[ "$permType"=="l" ]]
        then
            echo "Voleu canviar els permisos de [l]ectura o [e]scritura? "
            read whatPerm
            if [[ "$whatPerm"=="l" ]]
            then
                echo "Voleu canviar-los al [p]ropietari, [g]rup o [a]ltres? "
                read whoPerm
                if [[ "$whoPerm"=="p" ]]
                then
                    sudo chmod u-r "$fileChange"
                elif [[ "$whoPerm"=="g" ]]
                then
                    sudo chmod g-r "$fileChange"
                elif [[ "$whoPerm"=="a" ]]
                then
                    sudo chmod o-r "$fileChange"
                else
                    echo "Argument invalid proporcionat. "
                fi
            elif [[ "$whatPerm"=="e" ]]
            then
                echo "Voleu canviar-los al [p]ropietari, [g]rup o [a]ltres? "
                read whoPerm
                if [[ "$whoPerm"=="p" ]]
                then
                    sudo chmod u-w "$fileChange"
                elif [[ "$whoPerm"=="g" ]]
                then
                    sudo chmod g-w "$fileChange"
                elif [[ "$whoPerm"=="a" ]]
                then
                    sudo chmod o-w "$fileChange"
                else
                    echo "Argument invalid proporcionat. "
                fi
            else
                echo "Argument invalid proporcionat. "
            fi
        else
            echo "Argument invalid proporcionat. "
        fi
        ;;

    9)  echo 'Sortint...'
        ;;
    esac
    read -p "Pitjar el boto intro per continuar..." sigan
done