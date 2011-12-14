# nginx on OSX config

## config

followed instructions @ http://wiki.summercode.com/running_homebrewed_nginx_with_sudo_on_mac_os_x

to load nginx on port 80 via root and not sudo, stage files in these locations:

- /Library/LaunchDaemons/org.nginx.plist
- /opt/local/nginx/sbin/nginx.sh
- /opt/local/nginx/conf/nginx.conf

## invocation

### start

    launchctl load -w /Library/LaunchDaemons/org.nginx.plist

### stop

    launchctl unload -w /Library/LaunchDaemons/org.nginx.plist
