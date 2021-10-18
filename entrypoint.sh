for config_file in $(ls /etc/nginx/sites-available | grep -v default);
do
    ln -s /etc/nginx/sites-available/$config_file /etc/nginx/sites-enabled;
done
nginx -g "daemon off;";