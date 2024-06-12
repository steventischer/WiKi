# Uunattended-upgrades


### Install
```bash
apt-get install unattended-upgrades apt-listchanges -y
```

### Config

```bash
sed -i 's/Unattended-Upgrade::Mail "";/Unattended-Upgrade::Mail "dest-email@foo.bar";/' /etc/apt/apt.conf.d/50unattended-upgrades
sed -i 's|//Unattended-Upgrade::MailReport "on-change";|Unattended-Upgrade::MailReport "on-change";|' /etc/apt/apt.conf.d/50unattended-upgrades
dpkg-reconfigure -plow unattended-upgrades
```

## Config SSMTP

### Install
```bash
apt-get install unattended-upgrades apt-listchanges -y
```

### Config
```bash
> /etc/ssmtp/ssmtp.conf
echo 'root:helpdesk-test@schauinsland-reisen.de:smtp.office365.com:587' >> /etc/ssmtp/revaliases
```

## Get next run
```bash
systemctl --all list-timers apt-daily{,-upgrade}.timer
```
