# Allgemein

### List all records
```bash
sudo -u pdns pdnsutil list-zone net.internal.
```

### New Zone

```bash
sudo -u pdns pdnsutil create-zone foo.bar ns1.foo.bar
```
### New A Record
```bash
sudo -u pdns pdnsutil add-record foo.bar. subdomain A IP
```
### New CNAME Recrod
```bash
sudo -u pdns pdnsutil add-record foo.bar. new_subdomain CNAME to_subdomain
```

