#!/usr/bin env bash
#Codado por Jord@rootExploit And LILITH AND STORM
#Script para visualizar as senhas salvas em seu sistema
#tenha o figlet instalado na sua maquina (sudo apt install figlet)
figlet "ViewPass"
echo "--# coded by jord@RootExploit #--"
sleep 1
if test `whoami` != root
then
echo ATENÇÃO
echo Você precisa ser ROOT para executar este programa.
exit 1
fi
echo 
echo "esses são os arquivos de senhas salvas que temos em seu dir"
echo "-----------------------------#"
echo 
ls /etc/NetworkManager/system-connections
echo
echo "-----------------------------#" 
read -p "qual deseja abrir? " arquives
echo
#echo "senha :"
cat  /etc/NetworkManager/system-connections/$arquives | grep 'psk='
