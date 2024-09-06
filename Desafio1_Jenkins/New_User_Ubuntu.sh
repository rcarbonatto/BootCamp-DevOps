#!/bin/bash

# Ensure the script is run with sudo privileges
# Asegúrate de que el script se ejecute con privilegios de sudo
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   echo "Este script debe ejecutarse como root" 1>&2
   exit 1
fi

# Global variables
# Variables globales
username=$1
fullname=$2
department=$3

# Generate a random password excluding the '/' character
# Generar una contraseña aleatoria excluyendo el carácter '/'
password=$(openssl rand -base64 14 | tr -d '/')

# Function to check if the user exists and append a number if it does
# Función para verificar si el usuario existe y añadir un número si es así
check_user() {
    local user_check=$username
    local count=0
    while id -u "$user_check" >/dev/null 2>&1; do
        ((count++))
        user_check="${username}${count}"
    done
    echo "$user_check"
}

# Main script
# Script principal
# Check if the user already exists and find a unique username
# Verificar si el usuario ya existe y encontrar un nombre de usuario único
new_username=$(check_user)

# Create the user with the unique username and set the password
# Crear el usuario con el nombre de usuario único y establecer la contraseña
adduser --disabled-password --force-badname --gecos "$fullname,,,$department" "$new_username"
echo "$new_username:$password" | chpasswd

# Force password change on first login and set password to expire
# Forzar el cambio de contraseña en el primer inicio de sesión y establecer que la contraseña expire
chage -d 0 "$new_username"

# Output the details
# Mostrar los detalles
echo "----DATOS DEL USUARIO----"
echo "Username: $new_username"
echo "Department: $department"
echo "Password: $password"
echo "Full Name: $fullname"
