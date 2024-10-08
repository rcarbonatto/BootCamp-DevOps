#  Helm Chart - Desafío 12

## Español

**Fecha:** 08-Octubre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 12 - Bootcamp DevOps

### Pre-Requisito
1. Archivos del Desafio 11
2. minikube
3. kubectl
4. helm chart

### Creando chart directory para Helm
1. En el directorio donde necesitamos el template, corremos el siguiente comando `helm create mychart`
2. Esto nos creara una seria de archivos y carpetas las cuales deberemos adaptar a nuestro proyecto. 
    1. values.yml contiene todas las variables que usaremos para los templates
    2. En la carpeta Template podremmos encontrar los yaml para el Deployment y para los servicios. 
3. Una vez tenemos todos los archivos configurados, dentro de la carpeta de chart corremos el siguiente comando: `helm install NombreDelRelease ./ubicacion_del_chart`

### Ejecucion
1. Vista desde minikube dashboard ![Workload](./ScreenCapture/1.%20Dashboard_workload.png)
2. Log del pod de la aplicacion ![Log App](./ScreenCapture/2.%20Log%20App.png)



 