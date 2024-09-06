Readme se encuentra en español e ingles.
Español

Hola! Bienvenido a mi primer Pipelina Declarativo de Jenkins el cual crea un usuario en un sistema operativo Linux Distro: Ubuntu 22.04
Fecha 20-Marzo-2024
Autor: Rodrigo Carbonatto Sarlengo
Titulo: Desafio  1 - Bootcamp DevOps

Se da por entendido que ya tiene corriendo una instancia con Jenkins corriendo en Linux.  

En caso que no haya configurado su Token de acceso a GitHub en Jenkins:
#-------------En Github-------------------
1- En tu cuenta de  GitHub, debes ir a la parte superior derecha donde se encuentra tu foto, haz click y ve a Settings
2- Sobre la barra izquierda, ve a la ultima opcion <>Developer Settings y haz click
3- Selecciona Fine-grained Tokens
4- Presiona en Generate New Token
5- Completa la informacion requerida
    a. Token Name: Un nombre descriptivo de este token
    b. Selecciona cuando deseas que expire
    c. Coloca una descripcion
    d. Debajo de Repository Access selecciona All repositories
6- Debajo de Permissions seleccionamos los siguientes
    a. Administration Read and Write
    b. Contents: Read and Write 
    c. Metadata: Read-Only
7- Presionamos en Generar Token y guardamos el token en un lugar seguro
#-------------En Jenkins-------------------
1- Ingresamos a Jenkins desde el navegador colocando  la IP  asignada y el puerto
2- Vamos a: Panel de Control - Administrar Jenkins - Credentials - System - Global Credential(unrestricted) - Add Credentials
3- Para la nueva Credencial completamos lo siguiente: 
    a. Kind: Username and Password
    b. Scope: Global
    c. Username: Colocamos el username de GitHub
    d. Password: Pegamos el Token generado en GitHub
    e. ID: Colocamos un nombre descriptivo
    f. Description: Colocamos una descripcion para este token

#-------------Agregar el Repositorio a Jenkins-------------------
1- Ingresamos a Jenkins desde el navegador colocando  la IP ignada y el puerto
2- Sobre el  perfil izquierdo seleccionamos Nueva Tarea
3- Colocamos un nombre descriptivo, seleccionamos la  opcion de Pipeline y presionamos OK en la parte inferior
4- Nos Despazamos hasta la opcion de Pipeline,
    a. En Definition seleccionamos Pipeline Script  from SCM
    b. en SCM seleccionamos GIT
    c. En Repository URL colocamos la direccion .git (HTTPS) del repositorio
    d. En Credentials seleccionamos la credencial recien creada
    e. en Branch Specifier (blank for 'any') cambiamos master por main
    f. en Script Path ponemos: ./Desafio1_Jenkins/JenkinsFile
5- Presionamos Guardar

#-------------Correr el Pipeline-------------------
1- Desde la Pantalla principal seleccionamos el trabajo creado
2- Clickeamos en Construir Ahora
3- Esperamos que termine de correr, y refrescamos la  pagina
4- El boton Consutruir Ahora debe haber cambiado a Construir con Parametros, hacemos click
5-  Completamos los Campos: 
    a. Primer Campo (FullName): Completamos con Nombre y Apellido del nuevo usuario
    b. En el segundo Campo (NombreUsuario): Completamos con el Login (Udentificador Unico, puede ser nombre y apellido sin espacios)
    c. Tercer Campo (Departamento): Seleccionamos el Departamento desde la lista. 
6- Una vez completados los 3 campos presionamos Ejecucion
7- Esto nos redirijira a una pagina donde veras que debajo de Creando el Usuario aparece un cuadro verde, en el  primer cuadro hacemos click y presionamos sobre Logs
8- De aqui podemos copiar todos los datos del usuario creado junto con la password temporal creada.




English (Translation made with Google Translate)

Hello! Welcome to my first Jenkins Declarative Pipeline which creates a user on a Linux Distro operating system: Ubuntu 22.04
Date March 20, 2024
Author: Rodrigo Carbonatto Sarlengo
Title: Challenge 1 - DevOps Bootcamp

It is assumed that you already have an instance running with Jenkins running on Linux.

In case you have not configured your GitHub Access Token in Jenkins:
#-------------On Github-------------------
1- In your GitHub account, you must go to the top right where your photo is located, click and go to Settings
2- On the left bar, go to the last option <>Developer Settings and click
3- Select Fine-grained Tokens
4- Click on Generate New Token
5- Complete the required information
     to. Token Name: A descriptive name for this token
     b. Select when you want it to expire
     c. Put a description
     d. Under Repository Access select All repositories
6- Under Permissions we select the following
     to. Administration Read and Write
     b. Contents: Read and Write
     c. Metadata: Read-Only
7- Click on Generate Token and save the token in a safe place
#-------------In Jenkins------------------
1- We enter Jenkins from the browser by entering the assigned IP and port
2- Let's go to: Control Panel - Manage Jenkins - Credentials - System - Global Credential(unrestricted) - Add Credentials
3- For the new Credential we complete the following:
     to. Kind: Username and Password
     b. Scope: Global
     c. Username: We enter the GitHub username
     d. Password: We paste the Token generated in GitHub
     and. ID: We put a descriptive name
     F. Description: We put a description for this token

#-------------Add the Repository to Jenkins----------------------------------
1- We enter Jenkins from the browser by entering the assigned IP and port
2- On the left profile we select New Task
3- We enter a descriptive name, select the Pipeline option and press OK at the bottom
4- We scroll to the Pipeline option,
     to. In Definition we select Pipeline Script from SCM
     b. in SCM we select GIT
     c. In Repository URL we place the .git address (HTTPS) of the repository
     d. In Credentials we select the newly created credential
     and. in Branch Specifier (blank for 'any') we change master to main
     F. in Script Path we put: ./Desafio1_Jenkins/JenkinsFile
5- We press Save

#-------------Run the Pipeline----------------------------------
1- From the Main Screen we select the created job
2- Click on Build Now
3- We wait for it to finish running, and refresh the page
4- The Build Now button should have changed to Build with Parameters, we click
5- We complete the Fields:
     to. First Field (FullName): We complete with First and Last Name of the new user
     b. In the second Field (UserName): We complete with the Login (Unique Identifier, it can be first and last name without spaces)
     c. Third Field (Department): We select the Department from the list.
6- Once the 3 fields are completed, press Execution
7- This will redirect us to a page where you will see that under Creating the User a green box appears, in the first box we click and press on Logs
8- From here we can copy all the data of the created user along with the temporary password created.

