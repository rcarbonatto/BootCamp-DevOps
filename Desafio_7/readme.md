# Jenkins Multibranch - Desafío 7

## Español
**Fecha:** 09-Octubre-2024 
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 7 - Bootcamp DevOps

### Requisitos
1. VM con Jenkins Instalado
2. VM Configurada como Agente Jenkins y Ansible instalado
3. 3 Host (uno por cada branch)
4. ssh Key configuradas para: 
    1. Servidor Jenkins permita conexion con Agente y Asnible
    2. Agente Jenkins con los 3 hosts de las branchs

### Jenkins
1. Creamos la nueva tarea Multibranck Pipeline
2. Configuramos el repositorio de Github
3. Configuramos el nodo con el Agente Jenkins

### 
1. Configuramos nuestro archivo Jenkinsfile para que corra depende el branch
2. Run in Dev: ![Dev](./Screen_Capture/1.%20Dev.png)
3. Run in main: ![main](./Screen_Capture/2.%20main.png)
4. Run in Staging: ![staging](./Screen_Capture/3.%20staging.png)
5. Jenkins Runs: ![Jenkins](./Screen_Capture/4.%20Jenkins%20Runs.png)