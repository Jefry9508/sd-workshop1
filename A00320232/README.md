# Taller 1

**Nombre:** Jefry Cardona
**Código:** A00320232

# Pasos

1. Creación de la maquina virtual.
  - Se le asigna un nombre a la máquina virtual.
  - Se selecciona el sistema operativo y su version o distribución.
  - Se asigna el tamaño de memoria.
  - Se elige el tipo de archivo del disco virtual,en este caso VDI (Virtual Disk Image).
  - Se elige tipo de almacenamiento dinámico y se configura el tamaño del mismo.
  
2. Configuración de la máquina virtual.
  - Se escoge la imagen ISO del sistema operativo.
  - Se actualiza el boot del sistema operativo dandole como segunda opcion el inicio por medio del disco virtual.
  - Se configura un adaptador de red con nat y el otro como puente.
  - Se inicia el servicio virtualizado.
  
3. Comandos.
  - Se activa la interfaz de red por medio de ifup enp0s8
  - Instalación de apache por medio de yum install httpd
  - Se habilita el puerto 80 por medio de firewall-cmd --zone=public --add-port=80/tcp --permanent
  - Reiniciamos el firewall con firewall-cmd --reload
  - Se guarda un archivo html en el directorio /var/www/html
  - Se inicia apache y el servicio con systemctl start httpd
  - Se habilita el servicio cada vez que se inicie la maquina con systemctl enable httpd
  - Se comprueba que funciona desde un navegador web.
