#!/usr/bin env bash
######################################################
#Codado por jonathan Baskov(jord@rootExploit)
#reatualizado em dia 26/11/2019
#Blog: https://mindsetsecurity.wordpress.com
#Salve: LILITH.NET,Sr Storm, LIRA, Kripton e geral ae
######################################################
echo "
##     ## #### ######## ##      ## ########     ###     ######   ######  
##     ##  ##  ##       ##  ##  ## ##     ##   ## ##   ##    ## ##    ## 
##     ##  ##  ##       ##  ##  ## ##     ##  ##   ##  ##       ##       
##     ##  ##  ######   ##  ##  ## ########  ##     ##  ######   ######  
 ##   ##   ##  ##       ##  ##  ## ##        #########       ##       ## 
  ## ##    ##  ##       ##  ##  ## ##        ##     ## ##    ## ##    ## 
   ###    #### ########  ###  ###  ##        ##     ##  ######   ######  
"
echo "--# coded by jord@RootExploit #--"
sleep 1
if [ $(id -u) -eq 1000 ]; then
	echo "Execute como ROOT!."
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

cat  /etc/NetworkManager/system-connections/$arquives | grep 'psk='
sleep 3 
echo "obrigado por usar meu script, acesse https://mindsetsecurity.wordpress.com/"
