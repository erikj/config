# config for MongoDB on OSX

Inspired by [MongoDB Startup Item for Mac OS X Snow Leopard](http://hunterford.me/mongodb-startup-item/)

### Files

- `/etc/mongodb.conf`
- `/Library/LaunchDaemons/org.mongo.mongod.plist` 

### Start up:

    $ launchctl load -w /Library/LaunchDaemons/org.mongo.mongod.plist

### Shutdown:

    $ launchctl unload -w /Library/LaunchDaemons/org.mongo.mongod.plist