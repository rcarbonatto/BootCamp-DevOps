#  Docker & Github Action- Desafío 9

## Español

**Fecha:** 01-Octubre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 9 - Bootcamp DevOps

### Pre-Requisitos
1. Docker hub Account
2. Github Action

### Crear Repositorio en Docker Hub y Subir imagen
1. Nos logueamos en la pagina de Docker Hub - Repositorios - Create Repository
2. En mi caso el nombre es: desafio9_educacionit bajo mi namespace rcarbonatto
3. Creamos el archivo Dockerfile, al tener que correr una aplicacion node.js buscamos el repositorio node dentro de DockerHub y lo agregamos
4.  Configuracion de Dockerfile para este proyecto: [Dockerfile](./Dockerfile)
5. Realizamos el Build local para ver que funciona:
    1. `docker build -t NombreProyecto:tag (ej: rcarbonatto/desafio9_educacionit:v0.1)` 
    2. `docker run -p 3000:3000 rcarbonatto/desafio9_educacionit:v0.1`
    3. Nos conectamos al localhost:3000 para ver que este levantado.
6. Hacemos el Push a DockerHub: `docker push rcarbonatto/desafio9_educacionit:v0.1`

### Crear Access Token
1. Vamos a la pagina de Docker Hub - arriba a la derecha sobre nuestro nombre - Account Settings
2. Generate New Token - Seleccionamos los permisos requeridos (Read/Write para nuestro caso) - Asignamos un nombre y damos en Crear Token
3. Nos guardamos en un lugar seguro el Token

### Para automatizar este proceso con Github Action usaremos Github Workflow
1. En la raiz de nuestro repositorio creamos la carpeta .github\workflows
2. Dentro de la carpeta debemos crear un archivo .yml [Para este Desafio](../.github\workflows\desafio9_deploy.yml)
3. Vamos a la pagina de Github para crear el secreto que usaremos para autenticarnos a nuestro repositorio privado de Docker
    1. Dentro de Settings - Secrets and Variable

### Ejecucion
1. Para Ejecutar el Action lo hemos seteado para Push. por lo cual debemos realizar algun push dentro de la carpeta Desafio 9


