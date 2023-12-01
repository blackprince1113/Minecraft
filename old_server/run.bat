@echo off
java -Xms512M -Xmx1024M -XX:+UseG1GC -jar spigot-1.20.2.jar nogui
echo pause