@echo off
title Minecraft Server
java -Xms2000M -Xmx4000M -jar paper-1.20.2-299.jar nogui
echo java -Xms2000M -Xmx4000M -XX:+UseG1GC -jar paper-1.20.2-299.jar nogui
echo java -jar paper-1.20.2-299.jar nogui
echo pause