menu_arch()
{
clear
echo "╓──────────────────────────────────────────╖"
echo "║            🗂️ MENÚ DE FICHEROS          ║"
echo "╠─────────────────────────────────────────╣"
echo "║		1. 📄 Crear archivo (Nano)          ║"
echo "║  	2. 🔍 Mostrar contenido             ║"
echo "║  	3. 📁 Crear archivo vacío           ║"
echo "║  	4. 🗑️ Eliminar archivo              ║"
echo "║  	5. ↩️ Volver                        ║"
echo "║  	6. ❌ Salir                         ║"
echo "╙──────────────────────────────────────────╜"
echo ""
read -p "Seleccione una opcion " opcion
case $opcion in 
1)
clear
read -p "¿Como quiere llamar al archivo? " arch
	nano $arch
	echo "El archivo s ha creado correctamente "
	sleep 2
	clear
menu_arch;;
2)
clear
ls
read -p "Seleccione un archivo para visualizar " arch
	cat $arch
	read -p "Pulse cuando desee continuar " key
clear
menu_arch;;
3)
clear 
read -p "Introduzca un nombre para el fichero " arch
	touch $arch 
	echo "El fichero se creo correctamente"
	sleep 2
clear 
menu_arch;;
4)
clear
ls
read -p "Seleccione un archivo para borrar " arch
read -p "¿Seguro que desea eliminarlo S/N?" res
	for res in [ s S si SI ] 
 	do rm $arch
	echo "El fichero se elimino correctamente"
	sleep 2
	menu_arch
	done
clar
menu_arch;;
5)menup;;
*)echo "Opcion incorrecta seleccione una opcion valida"
sleep 2
clear
menu_arch;;
esac
}

menu_car()
{
clear
echo "╓──────────────────────────────────────────╖"
echo "║ 	   	   📂 MENÚ DE CARPETAS          ║"
echo "╠──────────────────────────────────────────╣"
echo "║  	1. Crear carpetas                    ║"
echo "║  	2. Copiar carpetas                   ║"
echo "║  	3. Eliminar carpetas                 ║"
echo "║  	4. Mostrar carpetas                  ║"
echo "║  	5. Volver                            ║"
echo "║  	6. Salir                             ║"
echo "╙──────────────────────────────────────────╜"
echo ""
read -p "Seleccione una opcion " opcion
case $opcion in
1) 
read -p "Introduzca un nombre para la carpeta " car
        mkdir $car
        echo "La carpeta se creo correctamente "
        sleep 2
        clear
menu_car;;
2)
clear
        ls
        read -p "Seleccione una carpeta para copiar " car
        sleep 1
        read -p "seleccione Una ruta donde copiar el archivo " ruta
	cp -R $car $ruta
	echo "La carpeta se ha copiado correctamente "
	read -p "pulse para continuar" key
clear 
menu_car;;
3)
read -p "Seleccione una carpeta para borrar " car 
read -p "¿Seguro que desea eliminarla S/N?" res
        for res in [ s S si SI ]
        do rm -r $car
	echo "La carpeta se elimino correctamente"
	sleep 2
        menu_car
        done
clear
menu_car;;
4)ls
read -p "Pulse para continuar " holaaaa
menu_car;;
5)menup;;
*)echo "La opccion ono es valida seleccione otra opcion"
menu_car;;
6)exit;;
esac
}



menup()
{
clear
echo "╔══════════════════════════════════════╗"
echo "║          🖥️ MENÚ DE LINUX           ║"
echo "╠══════════════════════════════════════╣"
echo "║  	1. Menú de archivos              ║"
echo "║  	2. Menú de carpetas              ║"
echo "║  	3. Mostrar calendario            ║"
echo "║  	4. Manual de un comando          ║"
echo "║  	5. Limpiar pantalla              ║"
echo "║  	6. Salir                         ║"
echo "╚══════════════════════════════════════╝"
echo ""
read -p "Seleccione una opcion " opcion
case $opcion in 
1)menu_arch;;
2)menu_car;;
3)cal
	read -p "Pulse para continuar " key
	menup;;
4)
read -p "Seleccione un comando " com
	man $com
	
	clear
menup;;
5)clear 
sleep 2
menup;;
6)exit;;
*)echo "Opcion no valida seleccione otra opcion"
menup;;
esac
}
menup
