# Redis-server Troubleshooting

I have login to the server, I have checked the netork status and redis status, I am getting error responce.

At the time I can able to up the redis with /etc/init.d/redis-server start, But if I check service redis-server status getting error responce.

# So I have take a backup of /etc/init.d/redish-server file to /opt/backup/

#then take the backup of /etc/systemd/system/redis-server.service

#then downoaded new redis-server init.d file and new systemd file for /etc/systemd/system/redis-server.service and /etc/init.d/redish-server.

#then Manually run /etc/init.d/redis-server start.

#while checking the nework status, redis is running, and i killed the all proceess "killall -9 redis-server" of redis-server, then excute the service redis-server start,

Service get started and running successfully

