# Redis-server Troubleshooting

I have login to the server, I have checked the netork status and redis status, I am getting error responce.

At the time I can able to up the redis with /etc/init.d/redis-server start, But if I check service redis-server status getting error responce.

# So I have take a backup of /etc/init.d/redish-server file to /opt/backup/

#then take the backup of /etc/systemd/system/redis-server.service

#While I am checking a logfile, I could able to see, Log path not have a access to perform log written. 

#then I changed the log path in redis.conf from /var/log/redis-server.log to /var/log/redis/redis-server.log and then changed the ownership for /var/log/redis/ from "root:root" to "redis:redis".

#After that I can able to start redis-server services

Service get started and running successfully


-----------------END-----------------------------
