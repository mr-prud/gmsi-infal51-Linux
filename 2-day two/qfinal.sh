#!/bin/bash


if [ $# -ne 2 ]; then
echo "Usage: $0 <temperature> <C|F>"
exit
fi

temperature=$1
lettre=$2


if [ ${lettre} = 'C' ]
then
    niveau_haut=25
    niveau_bas=10
elif [ ${lettre} = 'F' ]
    then
        niveau_haut=78
        niveau_bas=50
    else
        echo "Il manque l unitee, merci de specifier C  ou F"
        echo "Usage: $0 <temperature> <C|F>"
        exit 1
fi

if [[ ${temperature} -ge ${niveau_haut} ]];then
    echo "il fait chaud"
    elif [[ ${temperature} -le ${niveau_bas} ]];then
        echo "il fait froid"
    else
        echo "il fait normal"
fi
