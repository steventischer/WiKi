wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian12_all.deb
dpkg -i zabbix-release_6.4-1+debian12_all.deb
apt update
apt install zabbix-agent2 zabbix-agent2-plugin-* -y
systemctl restart zabbix-agent2
systemctl enable zabbix-agent2