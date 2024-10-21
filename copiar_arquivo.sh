#!/bin/bash
# Inicializa o SSH
/usr/sbin/sshd

echo "[!] Aguardando.."
sleep 10 # espera a inicialização do contêiner fedora
echo "[!] Iniciando transferência de arquivo"
sshpass -p 'fedora123' scp -o StrictHostKeyChecking=no -P 22 arquivo.txt root@fedora_ssh_container:/
echo "[!] Copiado arquivo.txt"
tail -f /dev/null
