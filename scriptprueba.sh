#!/bin/bash
echo 'Bienvenido'
echo 'Introduce el nombre del usuario que deseas agregar:'
read var1
echo 'Los grupos disponibles para agregar a los usuarios son: Alumnos, Profesores, Administrativos, Rector\nIntroduce  el nombre del grupo para este usuario'
read var2 
if [ -d /home/$var2];
then 
sudo useradd $var1 -d /home/$var2/$var1 -m -g $var2
sudo chmod -R 744 /home/$var2/$var1
else
sudo groupadd $var2
sudo mkdir  /home/$var2
sudo useradd $var1 -d /home/$var2/$var1 -m -g $var2
sudo chmod -R 744 /home/$var2/$var1
fi
echo 'Ahora introduce una contraseña para el usuario: '$var1
sudo passwd $var1
