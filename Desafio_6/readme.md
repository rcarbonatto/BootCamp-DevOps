# Ansible Modularizacion - Desafío 5

## Español

**Fecha:** XXX-Septiembre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 6 - Bootcamp DevOps

### Modularizacion y Configuracion del proyecto ansible
1. Nos traemos el repositorio a modularizar a este proyecto. Dejamos una copia sin modificar en ![ansible_profesor_anterior](./ZZ_ansible_profesor_anterior/) 
2. Usaremos la carpeta includes para la modularizacion
3. Identificamos las partes del archivo y vemos que podemos modularizar organizar el main.yml
4. Configuramos el archivo ![inventory.ini](./ansible_Desafio6/inventory.ini)

### Instalamos ansible y configuramos la key para conexion entre equipos
** Uno de los equipos tendra instalado ansible y ambos equipos tendran instlado Jenkins**
1. Seguimos los pasos para instalar Jenkins en el Controller: https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html
2. Configuramos la key en el nodo
    1. Creamos las llaves en la maquina controller `ssh-keygen`
    2. En el node1 copiamos la clave publica creada en el archivo ~/.ssh/authorized key
    3. Hacemos prueba de conexion: `ssh -i ~/.ssh/id_privada user@hostip` para verificar que no tengamos ningun problemma
    4. Configuramos el archivo ![inventory.ini](./ansible_Desafio6/inventory.ini)
3. Configuramos la key en el controller siguiendo los pasos del 1 al 3 del punto anterior

### Jenkins
1. Agregamos el repositorio como una nueva tarea a Jenkins ![Como Crear el Repo? Mira este Readme ](../Desafio_1/readme.md)
2. Contruimos la tarea en Jenkins


### Pruebas funcionamiento
