server {
    listen 80;
    listen [::]:80;

    server_name example.com;

    location / {
        proxy_pass http://192.168.1.102:9000;
        proxy_set_header Host example.com;
    }
}