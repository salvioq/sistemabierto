#! /bin/sh
#Descripcion: pide por teclado el nombre del fichero a buscar
# se lanza find en todo el filesystem /
# con redireccion al fichero temporal /tmp/busqueda
# se cuentan las lineas con wc -l
# y se muestran los resultados
#
echo "Indica el nombre del fichero";
echo BUSCANDO $CADENA 
find / -name $CADENA >/tmp/busqueda 2>/dev/null
echo BUSQUEDA FINALIZADA
wc -l /tmp/busqueda
cat /tmp/busqueda