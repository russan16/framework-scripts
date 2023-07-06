#!/bin/bash
clear
echo "
 █████  ██████   ██████  ███    ██ ██ ███████ 
██   ██ ██   ██ ██    ██ ████   ██ ██ ██      
███████ ██   ██ ██    ██ ██ ██  ██ ██ ███████ 
██   ██ ██   ██ ██    ██ ██  ██ ██ ██      ██ 
██   ██ ██████   ██████  ██   ████ ██ ███████ 
                                              
                                              
"
echo "Criador de projeto AdonisJS (API Only)"
echo "Powered by AdonisJS CLI"
read -p "Nome do projeto: " projectName
clear
echo "Criando '$projectName', aguarde!"
cd ..
adonis new $projectName --api-only
read -p "Projeto $projectName criado. [Enter] para fechar"
