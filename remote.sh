#!/bin/bash

#sudo apt-get install sshpass
#https://www.franciscougalde.com/2018/03/11/sshpass-conectate-via-ssh-a-tu-servidor-con-una-sola-linea-de-comando/
#https://www.it-swarm.dev/es/bash/como-ssh-desde-dentro-de-un-script-bash/968581533/
echo "conectando a servidor de forma remota..."
sleep 2
echo "bajando ultima actualizacion del proyecto..."
sshpass -p '1234567' ssh -o StrictHostKeyChecking=no server1@192.168.100.136 'cd lab1/Availability;git pull;pm2 restart server.js'





