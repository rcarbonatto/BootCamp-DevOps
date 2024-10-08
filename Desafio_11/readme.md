#  Docker Compose- Desafío 11

## Español

**Fecha:** X-Octubre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 11 - Bootcamp DevOps

### Pre-Requisito
1. Archivos del Desafio 10
2. minikube
3. kubectl

### Creando los archivos de manifiesto
1. Dentro del proyecto creamos la carpeta kubernetes para alojar los archivos
2. Corremos el siguiente comando `kompose convert -f ..\docker-compose.yaml` (kompose convert -f ubicacion del archivo compose)

### Ajustando los archivos de manifiesto
1. Necesitamos cambiar ubicacion donde encontrara la imagen de la APP
    1. Hacemos el Build y pusheamos la imagen a un repositorio de docker
    2. cambiamos la ruta en el archivo app-deployment.yaml de Kubernetes
*Tener en cuenta que la imagen de nuestra app esta publica en Dockerhub*

### Minukube 
1. Creamos un nuevo namespace 
    1. `kubectl create namespace nombre_del_namespace`
2. Seteamos el namespace como default
    2. `kubectl config set-context --current --namespace=nombre_del_namespace`

### Ejecucion
1. Nos posicionamos en la carpeta kubernetes dentro de nuestro proyecto
2. Ejecutamos `kubectl apply -f . `
3. Ejecutamos `kubectl dashboard` para poder ver el estado
4. ![App running](./ScreenCapture/1.%20kubectl%20get%20all%20.png)
5. ![Connection App to Db](./ScreenCapture/2.%20Connection%20App%20to%20Database.png)




