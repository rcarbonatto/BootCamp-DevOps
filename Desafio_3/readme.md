# AWS - Desafío 3

## Español

**Fecha:** XX-Octubre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 3 - Bootcamp DevOps

### Creamos el usuario y grupos en IAM
1. Vamos al IAM dentro de la consola de AWS
    1. Usuarios - Crear Usuario - Completamos los datos que nos solicita
2. Dentro del IAM ahora vamos aa Grupos
    1. Crear nuevo Grupo - asignamos un nombre - y los siguientes permisos:
        - AmazonEC2FullAccess 
        - AmazonS3FullAccess 
        - AmazonEBSCSIDriverPolicy
        - ROSAAmazonEBSCSIDriverOperatorPolicy
    2. Agregamos las Tags necesarias

### Instancia EC2
1. En la barra de busqueda escribimos EC2 y seleccionamos Lanzar nueva Instancia
2. Para este caso elejimos instancia: t2.micro , le ponemos un nombre , elejimos la imagen
3. Creamos el Key Par para poder conectarnos de cualquier equipo dentro de la misma region
4. En parametros de Red hacemos la siguiente configuracion: 
    1. Permitir SSH desde cualquier lugar
    2. Permitir Trafico HTTPS
    3. Permitir Trafico HTTP
5. Dentro de Detalles avanzados creamos el siguiente script para instalar Apache2
    ![Script Apache 2](./ScreenCapture/1.%20Script%20Apache%202.png)
6. En la seccion Instancias verificar que este corriendo

### Conexion SSH
1. Copiamos el KeyPair en nuestra VM
2. Cambiamos permisos chmod 400 
3. Corremos `ssh -i KeyPair.pem usuario_ssh@Dns_Publico` para conectarnos
4. Nos mostrara la terminal de la maquina a la cual nos conectamos
5. Verificar apache con `sudo systemctl status apapche2`
    1. Tambien podemos verificarlo copiando la direccion IP Publica en un navegador

### Bucket S3
1. Vamos a S3 y creamos un Bucket
2. Asignamos Nombre, y dejamos los servicios por defecto
3. Ingresamos al Bucket creado y subimos un archivo
4. Creamos la politica en el Bucket para poder ingresar desde internet
    ![Politica Bucket](./ScreenCapture/2.%20Politica%20Bucket.png)
5. Desde el Dashboard del S3 obtenemos la URL y verificamos que podamos ingresar desde un navegador

### Elastic Block Storage (EBS)
1. Dentro de servicio EC2, vamos al apartado de EBS y damos click en Crear Volumenes
2. Le asignamos un tamaño, seleccionamos la ZOna de disponibilidad, ciframos y lo creamos
3. En el panel principal, seleccionamos el volumen recien creado, vamos a acciones y Asociar Volumen
4. Seteamos las opciones y lo asociamos
5. Dentro de la instancia la cual lo asociamos hacemos `lsblk` para listar los volumenes disponibles
6. Formateamos el volumen: `sudo mkfs -t ext4 volumen_a_formatear`
7. Creamos el directorio /desafios y agregamo el volumen al archivo FSTAB `nano /etc/fstab`
8. Montamos el Disco `sudo mount -a`
9. Verificamos que le volumen este montado `lsblk -f`






