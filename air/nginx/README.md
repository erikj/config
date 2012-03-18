### nginx on OSX config

followed instructions @ http://wiki.summercode.com/running_homebrewed_nginx_with_sudo_on_mac_os_x

to load nginx on port 80 via root and not sudo, stage files in these locations:

 * /Library/LaunchDaemons/org.nginx.plist
 * /usr/local/sbin/nginx.sh
 * /usr/local/nginx/conf/nginx.conf
