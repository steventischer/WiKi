## Allgemein

###

Login

```bash
sudo -u postgres psql
```

User erstellen

```bash
create USER USER_NAME WITH encrypted password 'PWD';
```

User Admin Rechte

```bash
ALTER USER USER_NAME WITH SUPERUSER;
```

Datenbank Export/Import

```bash
pg_dump -U USER_NAME DB_NAME > dbexport.pgsql
psql -U USER_NAME DB_NAME < dbexport.pgsql

```

## Server

###

Listen IP

```
/etc/postgresql/15/main/postgresql.conf -> listen_addresses = '*'
```

Zugriff erlauben

```
/etc/postgresql/15/main/pg_hba.conf -> host    all             all             0.0.0.0/0 oder x.x.x.x/32       md5
```