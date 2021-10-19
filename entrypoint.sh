for config_file in $(ls /etc/nginx/sites-available | grep -v default);
do
	if [ ! -f /etc/nginx/sites-enabled/$config_file ]; then
		ln -s /etc/nginx/sites-available/$config_file /etc/nginx/sites-enabled/$config_file;
	fi
done
nginx -g "daemon off;";