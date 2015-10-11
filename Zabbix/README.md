#Zabbix Agent Daemon for Synology DiskStation DS415+

## Simple bash script for making Zabbix Agent available on DS415+
This script helps you to run Zabbix Agent and monitor your DiskStation easy with Zabbix Server
Zabbix Agent is running as service in a background

## Prerequisites :
* Root access : "ssh root@yourdiskstation.com" (root password is the same as your admin password)
* Zabbix Folder created in volume1 on DiskStation : "mkdir /volume1/Zabbix" (or other path, but don't forget to change path in associated config files and installation script)

## Install instructions :
* Copy files and folders from this folder to "/volume1/Zabbix/" on DiskStation
* Run "install_zabbix_agentd.sh" (/volume1/Zabbix/install_zabbix_agentd.sh)
* Or simple copy files to DiskStation init folder : "cp /volume1/Zabbix/zabbix.conf /etc/init/zabbix.conf"
* Check if /etc/init/zabbix.conf is executable file/script adni if no run "chmod +x /etc/init/zabbix.conf"
* Edit your Zabbix Agent config file that fits your needs eg. Zabbix Server IP address : "vi /volume1/Zabbix/conf/zabbix_agentd.conf"

Start Zabbix Agent service on Disk station with simple command : "start zabbix"
If you need to stop zabbix Agent Daemon on DiskStation use "stop zabbix"

That's all. If you want reboot DiskStation and Zabbix Agent will be loaded after DS boot.
Of course ! Add zabbix host to Zabbix server and apply "Template OS Linux" template or any other you use.