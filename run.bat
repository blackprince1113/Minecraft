@echo off
title Minecraft Server
echo java -Xms3000M -Xmx6000M -XX:+UseG1GC -jar paper-1.20.2-299.jar nogui
java -jar paper-1.20.2-299.jar nogui
echo pause