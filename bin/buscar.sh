eval CADENA=`cat cadena`
echo BUSCANDO $CADENA 
find / -name $CADENA >/tmp/busqueda 2>/dev/null
echo BUSQUEDA FINALIZADA
wc -l /tmp/busqueda
cat /tmp/busqueda
