# AWS C2, VPC y RDS - Desafío 5

## Español

**Fecha:** 17-Septiembre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 5 - Bootcamp DevOps

1. ### Para crear el usuario Ingresamos al IAM*
    **(Al ser un Sandbox no tenemos acceso al IAM, pero los pasos serian los siguientes)*
    1. Vamos a User y seleccionamos New User asignamos un nombre de usuario
    2. Seleccionamos la opcion Attach Policies directly y agregamos AdministratorAccess
    3. Next y Crear Usuario

2. ### Creacion de la VPC
    1. Buscamos VPC e ingresamos. En la parte superior seleccionamos Create VPC
    2. Creamos la VPC siguiente estos parametros: ![Creacion VPC Image](./Captures/Creacion_VPC.png)
    3. Esto Creara la VPC y todos los elementos necesarios como: DNS, Subnet, gateway, route table, etc

3. ### Configurar Security Group
    1. En la barra superior buscamos Security Group y seleccionamos el que diga VPC Feature 
    2. Ingresamos al Default Security Group asociado con el VPC ID que recien creamos
    3. Eliminamos la regla que se encuentra creada (la cual solo permite conexiones dentro del grupo de seguridad) y creamos una nueva con los siguientes datos: ![VPC Inbound Rule](./Captures/VPC%20Inbound%20Rule.png)

4. ### Creamos una Subred Privada
    1. En la creacion seleccionamos una Availability Zone diferente la de la Subnet Publica
    2. Creamos con los siguientes datos: ![Private Subnet](./Captures/3.%20Creation%20Private%20Subnet.png)
    3. Ingresamos a la subnet creada, vamos a Route Table, Edit Route Table association y agregamos la Route table creada con la VPC ![Route Table Subnet Private](./Captures/4.%20Modify%20route%20table%20Private%20Subnet.png)

5. ### Creamos un Grupo de subredes para Base de Datos
    1. En la barra de busqueda e ingresamos RDS - Vamos a SubnetGroup y Create DB Subnet Group
    2. Creamos la DB Subnet group basado en esta imagen: ![DB Subnet Group](./Captures/5.%20DB%20Subnet%20Group.png)

6. ### Creamos la Instancia de Base de Datos
    1. Ingresamos nuevamente a RDS y vamos a DAtabases - Create Database
    2. Creamos la Base de datos con esta informacion: ![Database Cration](./Captures/6.%20Database%20Creation.png). Los campos que no aparecen no deben modificarse. Luego presionamos Create Database
    3.  Mientras se crea la base de datos presionamos en View Credential Detail y copiamos usuario y contraseña en un lugar seguro. Una vez que la base fue creada tambien podemos sacar el Endpoint al cual nos conectaremos
    4. Ademas de esto verificar que el Security group permita el acceso. 

7. ### Conectandonos a la Base de Datos
    1. En el caso que no tenga instalado el modulo de MariaDB en Linux, puede instalarlo con: `sudo apt install mariadb-client-core-10.6` *(Nueva version puede estar disponible)*
    2. Corremos el comando: mariadb -h `endpoint` -u `username` y luego ponemos el password
    3. Prueba de Conexion a la base de Datos: ![Prueba de Conexion](./Captures/7.%20Prueba%20Conexion%20Base%20de%20Datos.png) 


## English

**Date**: September 17, 2024
**Author**: Rodrigo Carbonatto Sarlengo
**Title**: Challenge 5 - DevOps Bootcamp

1. ### Creating the User
    (As this is a Sandbox environment, we do not have access to IAM, but the steps would be as follows)
    1. Go to Users and select New User, then assign a username.
    2. Select the option Attach Policies directly and add AdministratorAccess.
    3. Click Next and Create User.
2. ### Creating the VPC
    1. Search for VPC and enter it. At the top, select Create VPC.
    2. Create the VPC with the following parameters:![Creacion VPC Image](./Captures/Creacion_VPC.png)
    3. This will create the VPC and all necessary elements such as DNS, Subnet, gateway, route table, etc.
3. ### Configuring Security Group
    1. In the top bar, search for Security Groups and select the one labeled VPC Feature.
    2. Enter the Default Security Group associated with the VPC ID we just created.
    3. Delete the existing rule (which only allows connections within the security group) and create a new one with the following details:
4. ### Creating a Private Subnet
    1.  During creation, select an Availability Zone different from the Public Subnet.
    2. Create it with the following details:![Private Subnet](./Captures/3.%20Creation%20Private%20Subnet.png)
    3. Enter the created subnet, go to Route Table, Edit Route Table association, and add the Route Table created with the VPC
5. ### Creating a Subnet Group for the Database
    1. In the search bar, enter RDS - Go to Subnet Group and Create DB Subnet Group.
    2. Create the DB Subnet Group based on this image:![DB Subnet Group](./Captures/5.%20DB%20Subnet%20Group.png)
6. ### Creating the Database Instance
    1. Go back to RDS and navigate to Databases - Create Database.
    2. Create the database with this information: ![Database Cration](./Captures/6.%20Database%20Creation.png). Fields that are not shown should not be modified. Then click Create Database.
    3. While the database is being created, click View Credential Details and copy the username and password to a secure location. Once the database is created, you can also obtain the Endpoint to connect to.
    4. Additionally, ensure that the Security Group allows access.
7. ### Connecting to the Database
    1. If the MariaDB module is not installed on Linux, you can install it with: `sudo apt install mariadb-client-core-10.6` (A newer version might be available)
    2. Run the command: `mariadb -h endpoint -u username` and then enter the password.
    3. Proof  Database Connection:![Prueba de Conexion](./Captures/7.%20Prueba%20Conexion%20Base%20de%20Datos.png) 
