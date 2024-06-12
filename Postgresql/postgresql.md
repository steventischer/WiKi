# Allgemein

### Login

```bash
sudo -u postgres psql
```

### User erstellen

```sql
create USER USER_NAME WITH encrypted password 'PWD';
```

### User Passwort ändern

```sql
ALTER USER USER_NAME WITH PASSWORD 'NEW_PWD';
```

### User Admin Rechte

```sql
ALTER USER USER_NAME WITH SUPERUSER;
```

### Datenbank Export/Import

```bash
pg_dump -U USER_NAME DB_NAME > dbexport.pgsql
psql -U USER_NAME DB_NAME < dbexport.pgsql
```

### Full Access Database for User

```sql
GRANT ALL PRIVILEGES ON DATABASE DB_NAME TO USER_NAME;
```
# Server

### Listen IP

```bash
/etc/postgresql/15/main/postgresql.conf -> listen_addresses = '*'
```

### Zugriff erlauben

```bash
/etc/postgresql/15/main/pg_hba.conf -> host    all             all             0.0.0.0/0 oder x.x.x.x/32       md5
```

# Shortcuts


```bash
\l -> List Databases
\q  -> Quit
```