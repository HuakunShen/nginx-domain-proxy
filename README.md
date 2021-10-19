# Nginx Domain Proxy

## Launch Proxy

```bash
docker-compose up -d
```

## Get Certbot SSL Certificate

```bash
certbot --nginx -d example.com      # get certificate for nginx server
certbot renew --dry-run             # see if renew will work
certbox renew                       # renew certificate
```

Add a cron job to auto renew certificate

```bash
0 0 1 * * certbot renew
```
