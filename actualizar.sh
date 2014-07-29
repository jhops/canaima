#! /bin/bash
fecha=$(date +"%m-%d-%Y-%T")

#copiando contenido de la carpeta control

echo "copiando carpeta Control" 
cp -R /home/usuario/control/ /var/www/respaldo/respaldo$fecha


#parando  y levantando servicios
echo "parando el servicio apache" 
/etc/init.d/apache2 stop

echo "Inicializando servicio de apache" 
/etc/init.d/apache2  start

#intslando  entorno de desarrollo geany
echo "instalando paquete  IDE de desarrollo geany"
aptitude install geany
#fin del script
