#! /bin/sh
#Descripcion: recibe un parametro $1
# comprueba con if -z si tiene longitud 0
# en cuyo caso se indica el uso correcto
# si tiene longitud distinta de cero se lanza find
# con redireccion al fichero temporal /tmp/busqueda
# se cuentan las lineas con wc -l
# y se muestran los resultados
#
echo Buscar2 utilizando $*
if [ -z $1 ]; then
	echo "Uso: $0 cadena ";
else 
	echo BUSCANDO $1;
	find / -name $1 >/tmp/busqueda 2>/dev/null;
	CUANTOS=`cat /tmp/busqueda | wc -l`;
	echo "Se han encontrado $CUANTOS coincidencias";
	if [ $CUANTOS!="0" ]; then 
		cat /tmp/busqueda; 
	fi
fi
