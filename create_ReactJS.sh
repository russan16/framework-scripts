#!/bin/bash

clear
echo "
██████  ███████  █████   ██████ ████████ 
██   ██ ██      ██   ██ ██         ██    
██████  █████   ███████ ██         ██    
██   ██ ██      ██   ██ ██         ██    
██   ██ ███████ ██   ██  ██████    ██    
                                         
                                         
"
echo "Criador de projetos React com CRA (via NPX)"
read -p "Nome do projeto: " PROJECTNAME
clear
cd ..
echo "Escolha um template para o projeto '$PROJECTNAME'"
PS3="Opção: "
options=("Padrão", "Padrão com Typescript", "PWA sem Typescript", "PWA com Typescript")

select opt in "${options[@]}"
do
  case "$REPLY" in
  1)
  clear
  echo "Padrão escolhido"
  echo "Iniciando..."
  npx create-react-app $PROJECTNAME
  break
  ;;
  2)
  clear
  echo "Padrão com Typescript escolhido"
  echo "Iniciando..."
  npx create-react-app $PROJECTNAME --template typescript
  break
  ;;
  3)
  clear
  echo "PWA sem Typescript escolhido"
  echo "Iniciando..."
  npx create-react-app $PROJECTNAME --template cra-template-pwa
  break
  ;;
  4)
  clear
  echo "PWA com Typescript escolhido"
  echo "Iniciando..."
  npx create-react-app $PROJECTNAME --template cra-template-pwa-typescript
  break
  ;;
  *)
  echo "$REPLY opção inválida";;
  esac
done

echo "Projeto $PROJECTNAME criado com sucesso. PATH: $PWD"
read -p "Pressione [Enter] para fechar"
