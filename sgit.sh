#!/bin/bash
echo $(clear);echo Comenzamos
echo Las opciones son:
echo 1.- configurar usuario y contraseña git
echo 2.- iniciar con la configuracion del proyecto y subirlo
echo 3.- solo subir archivos
echo 4.- eliminar archivo de systema y de git
echo 5.- eliminar archivo solo de git, esto mantiene el archivo en el sistema
echo 6.- para más información envia correo a
echo             alfonso.mendez999@gmail.com

read -p 'Introduce la opcion ' opc


case $opc in 
   1)
     read -p 'ingresa tu email: ' email
     read -p 'ingresa tu nombre de usuario: ' usuario
     git config --global user.email "'$email'"
     echo git config --global user.email "'$email'"
     git config --global user.name "'$usuario'"
     echo se ejecuto  git config --global user.name "'$usuario'"
   ;;
   2)
	 git init
     echo se ejecuto git init
	 touch README.md
     nano README.md
	 git add README.md
     git add .
     echo se ejecuto git add README.md
	 read -p 'Introduce un comentario para git: ' g
	 git commit -m "'$g'"
     echo se ejecuto git commit -m "'$g'"
     echo iniciamos con la parte de remote origin
     echo "esta es dada cuando crear un nueno proyecto"
     echo "https://github.com/usuario/proyecto.git"
     echo "esta parte se localiza en"
     echo "...or push an exiting repository from the command line"
     read -p 'ingresa la url del repositorio' r
     git remote add origin $r
     git push -u origin master
    ;;
    3)
	 git add .
     read -p 'Introduce un comentario para git: ' g
	 git commit -m "'$g'"
	 git push -u origin master
     echo accion completada
    ;;
    4)
	 read -p 'nombre del archivo a borrar' archivo
	 git rm $archivo
     echo accion completada
    ;;
esac
