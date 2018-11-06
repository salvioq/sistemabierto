#! /bin/sh
#Descripcion: recibe dos parametros $1 para lugar y $2 para nombre fichero
#Comprueba con if test -z ... si cada parametro tiene longitud 0
# En caso de que $2 o $1 este vacio se indica el uso correcto
#Si ambos tienen longitud distinta de cero se lanza find
# se redirecciona la salida al fichero temporal /tmp/busqueda
# se redirecciona el error a /dev/null
#Se cuentan las lineas de /tmp/busqueda con wc -l
# y se muestran los resultados
#
echo "Buscar2 utilizando lugar $1 y nombre $2, resto parametros $*";
if [ -z $2 ]; then
	echo "Uso: $0 $1 cadena ";
else 
	if [ -z $1 ]; then
		echo "Uso: $0 ruta cadena ";
	else 
		echo "BUSCANDO en  $1 ficheros con nombre $2 . . .";
		find $1 -name $2 >/tmp/busqueda 2>/dev/null;
		CUANTOS=`cat /tmp/busqueda | wc -l`;
		echo "Se han encontrado $CUANTOS coincidencias de $2";
		if [ $CUANTOS!="0" ]; then 
			cat /tmp/busqueda; 
		fi
	fi
fi