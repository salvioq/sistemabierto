#!/bin/sh
# pedir una contraseña
clear;
export COMPARA="mi secreto";
echo -en "Introduce la contraseña: \t";
read CONTRA;

if  [ $CONTRA = $COMPARA ] ; then  
    echo Puedes pasar; 
else 
    echo No puedes pasar;
	exit 1;
	logout;
fi;
echo -e $COMPARA $CONTRA;
echo Enhorabuena $LOGNAME;
exit 0;