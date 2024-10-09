#  ArgoCD - Desafío 14

## Español

**Fecha:** 08-Octubre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 14 - Bootcamp DevOps

### Pre-Requisito
1. minikube
2. kubectl

### Instalacion de ArgoCD
1. Creamos un Namespace dentro de Minikube para el despliegue de recursos de ArgoCD
    `kubectl create namespace argocd`
2. Desplegamos los recursos de Argocd
    `kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`
3. Exponemos el servicio ArgoCD server para acceder al Dashboard
    `kubectl port-forward svc/argocd-server -n argocd 8080:443`
    ![ArgoCD Expuesto](./ScreenCapture/1.%20ArgoCD%20Expuesto.png)
4. Obtenemos la contraseña del usuario admin (Este comando se corre desde una consola bash)
    `kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 --decode` 
5. Nos logueamos con la contraña brindada para el usuario admin

### Configuracion de repositorio Github
1. Vamos a Applications y seleccionamos el simbolo de + para crear una nueva
    1. ![ArgoCD Github Repo COnfig](./ScreenCapture/2.%20ArgoCD%20Github%20Repo%20COnfig.png)
    2. ![ArgoCD Github Repo COnfig](./ScreenCapture/3.%20ArgoCD%20Github%20Repo%20COnfig.png)
    3. Cambiamos el valor de mongoDbUri

### Ejecucion
1. ArgoCD con el Deploy de la App en base al Helm Chart del Desafio 12
    ![ArgoCD Running App](./ScreenCapture/4.%20App%20Running.png)
2. App Corriendo
    ![App Corriendo](./ScreenCapture/5.App%20Corriendo.png)
