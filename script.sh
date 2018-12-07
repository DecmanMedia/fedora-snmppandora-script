#Se descarga el archivo que contiene la configuracion a usar
wget https://github.com/DecmanMedia/fedora-snmppandora-scrip/blob/master/snmpd.conf
#Se instala los snmp daemon
yum install net-snmp net-snmp-utils -y
#Se reemplaza el archivo de confiracion con el antes descargado
cp snmpd.conf /etc/snmp/snmpd.configuración

#En caso de tener problemas con SElinux se debe vovler a reconfigurar los "label"
restorecon -R -v /etc/snmp/

#Se arranca snmp daemon y configura para iniciar con el sistema
systemctl start snmpd
systemctl enable snmpd

#Se añade excepcion al firewall
#Nota: la "zone" puede cambiar.
#Se puede ver las zonas activas con:
#firewall-cmd --get-active-zone
#Se puede ver la zona utilizada con:
#firewall-cmd --get-default-zone
firewall-cmd --zone=FedoraWorkstation --add-service snmp --permanent
firewall-cmd --reload


#Listo :)
