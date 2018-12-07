Pandora FMS es un software de Monitorización de red centrado en eventos.

La implementación está basada en usar el protocolo SNMP para recolectar la información, para ello es necesario activar el protocolo en los terminales a monitorear ingresando la configuración SNMP en cada formateo del dispositivo para de esa manera tener un monitoreo continuo.

El script se basa en instalar los "daemon" necesario parra obtener el archivo de configuración ya listo desde el repositorio y reemplazarlo en la ubicación deseada.

NOTA: En algunas distribuciones puede existir problema con SElinux. En cuyo caso se debe añadir excepción o deshabilitarlo.
