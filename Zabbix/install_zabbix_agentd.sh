echo "###############################"
echo ""
echo "This script will install(copy only) zabbix agent start/stop daemon to : /etc/init/zabbix.conf"
echo "Use command \"start zabbix\" or \"stop zabbix\""

echo ""
echo "Installing"
cp /volume1/Zabbix/zabbix.conf /etc/init/zabbix.conf
echo "Installed"

echo ""
echo "Starting Zabbix Agent Daemon Service"
/sbin/start zabbix
echo "Zabbix Agent Daemon Service started"
echo ""
echo "Finished"
exit
