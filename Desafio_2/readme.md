# Jenkins | Ngrock - Desafío 2

## Español

¡Hola! Bienvenido a mi segundo Pipeline Declarativo de Jenkins, aqui con un webhook en un repositorio de GitHub estamore realizando el build y test de una aplicacion nodejs brindado cada vez que tenemos un push o PR
**Fecha:** 10-Septiembre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 2 - Bootcamp DevOps

*Se asume que ya tienes corriendo una instancia con Jenkins en Linux.*


### Traer el proyecto de Nodejs al repositorio de Github
1. Realizamos fork del repositorio
2. En mi caso decidi romper todo vinculo y agregar el repositorio como carpeta a mi proyecto.
    i. git rm --cached <nombre_de_la_carpeta_del_submódulo>
    ii. Elimminamos cualquier archivo .git o .gitmodules
    iii. Subimos el repositorio a GitHub

### Instalacion y Configuracion de ngrock
1. Dentro de [ngrock](https://ngrok.com/) seguimos los pasos para la instalacion en nuestra VM
2. Configuramos el Token en el equipo
3. Exponemos la VM con ngrock. 
    i. Comando: ngrok http http://localhost:8080

### Configurar Webhook en Github
1. Ingresamos al repositorio - settings - Webhooks 
2. Configuramos la direccion que nos aparece en forwarding hasta el .app y agregando `/github-webhook/` para este proyecto
3. Content Type: Application/x-www-form-urlencoded y SSL Verification: Enable SSL verification
4. Bajo que Eventos deben disparar el Webhook seleccionamos Pushes y Pull Request
5. Marcamos el Active y Gurdamos

### Configurar Jenkins y nodejs
*Se asume que el Token y Repositorio ya estan agregados a Jenkins. Si desea revisar los pasos puede ir a: `Desafio1_Jenkins\readme.md`*
*Es necesario tildar la opcion: `GitHub hook trigger for GITScm polling`*
1. Vamos a Administrar Jenkins - Plugins - Available Plugins
2. Buscamos nodejs e instalamos
3. Dentro de Administrar Jenkins vamos a Tools
4. Vamos hasta la parte `instalaciones de NodeJS`
5. Configuramos un Nombre y la version de NodeJS y salvamos
    i. Esta version de NodeJS debe ser la misma que en el Jenkinsfile en tools (`nodejs nodejs22.8.0`)

### Correr el Trabajo
Este trabajo correra cuando se realice algun cambio en el repositorio que fue configurado. 



# Jenkins | Ngrok - Challenge 2

## English

Hello! Welcome to my second Declarative Jenkins Pipeline. Here, with a GitHub repository webhook, we are performing the build and test of a Node.js application each time we have a push or PR.
**Date:** September 10, 2024  
**Author:** Rodrigo Carbonatto Sarlengo  
**Title:** Challenge 2 - DevOps Bootcamp

It is assumed that you already have a Jenkins instance running on Linux.

### Bring the Node.js Project to the GitHub Repository
1. Fork the repository.
2. In my case, I decided to break all links and add the repository as a folder to my project.
    i. `git rm --cached <submodule_folder_name>`
    ii. Remove any `.git` or `.gitmodules` files.
    iii. Push the repository to GitHub.

### Install and Configure Ngrok
1. Follow the steps on [Ngrok](https://ngrok.com/) to install it on your VM.
2. Configure the Token on the machine.
3. Expose the VM with Ngrok.
    i. Command: `ngrok http http://localhost:8080`

### Configure Webhook on GitHub
1. Go to the repository - Settings - Webhooks.
2. Configure the address that appears in forwarding up to `.app`.
3. Content Type: `application/x-www-form-urlencoded` and SSL Verification: `Enable SSL verification`.
4. Under "Which events would you like to trigger this webhook?" select `Pushes` and `Pull Requests`.
5. Check `Active` and Save.

### Configure Jenkins and Node.js
*It is assumed that the Token and Repository are already added to Jenkins. If you wish to review the steps, you can go to: `Desafio1_Jenkins\readme.md`*  
*It is necessary to check the option: `GitHub hook trigger for GITScm polling`*  
1. Go to Manage Jenkins - Plugins - Available Plugins.
2. Search for Node.js and install it.
3. Within Manage Jenkins, go to Tools.
4. Navigate to `NodeJS installations`.
5. Configure a Name and the Node.js version and save.
    i. This Node.js version should match the one in the Jenkinsfile under tools (`nodejs nodejs22.8.0`).

### Run the Job
This job will run when a change is made in the configured repository.
