#!/bin/bash

time_response=$(curl -o /dev/null -L -qs -w "%{time_total}" http://192.168.100.136:3000)
time_required=3.5
echo $time_required
echo $time_response

if awk 'BEGIN{exit ARGV[1]>ARGV[2]}' "$time_response" "$time_required"
then
     echo "el tiempo de respuesta es menor que el solicitado"
else
     echo "el tiempo de respuesta es mayor que el solicitado"
     echo "conectando a servidor de forma remota..."
     sleep 2
     echo "bajando ultima actualizacion del proyecto..."
     sshpass -p '1234567' ssh -o StrictHostKeyChecking=no server1@192.168.100.136 'cd lab1/Availability;git pull;pm2 restart server.js'
fi





