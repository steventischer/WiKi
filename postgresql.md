## Algemein

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