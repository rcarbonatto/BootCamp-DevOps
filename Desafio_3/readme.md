# AWS - Desafío 3

## Español

¡Hola! En este Desafio crearemos un bucket  S3 y un rol de IAM para permitir la escritura en el mismo.
**Fecha:** 11-Septiembre-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 3 - Bootcamp DevOps

*Se recomienda no usar el usuario Root, sino otro usuario como administrador*

### Configuracion desde AWS CloudShell
1. Ingresamos al portal de administracion de AWS, abrimos a la consola desde la parte superior derecha
2. Creamos el bucket en S3. podemos usar el siguiente comando`aws s3 mb s3://nombre_unico_del_bucket` (https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/mb.html)
3. Creamos el usuario s3-support
    `aws iam create-user --user-name s3-support`
4. Creamos las credenciales programaticas para el usuario. AccessKey y SecretKey seran mostradas en pantalla. Guardar en un lugar seguro para futuro uso
    `aws iam create-access-key --user-name s3-support`
5. Creamos el Rol (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html) 
    *1.* Creamos el Rol y asignamos una trust policy 
        `aws iam create-role --role-name Desafio3_Rol --assume-role-policy-document file://Trust_Policy_For_Role.json` (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html)
    *2.* Creamos la politica para acceso de Escritura al Bucket
     https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_examples_s3_rw-bucket-console.html
    Desde la terminal subimos el archivo json y luego corremos el siguiente comando: `aws iam create-policy --policy-name` *Nombre_De_La_politica* `--policy-document file://`Nombre_Del_Archivo (https://docs.aws.amazon.com/cli/latest/reference/iam/create-policy.html) 
    *3.* Subimos y Asignamos la politica de Permisos de Escritura al Bucket
        `aws iam attach-role-policy --role-name Desafio3_Rol --policy-arn arn:aws:iam::********:policy/RW_Access_S3.json`
6. Conectamos el CLI con el usuario S3-support
    `aws configure` y ponemos las keys generadas antes
7. Asumimos el Rol (https://repost.aws/es/knowledge-center/iam-assume-role-cli)
    aws sts assume-role --role-arn "arn:aws:iam::**********:role/Desafio3_Rol" --role-session-name AWSCLI-Session
8. Seteamos las variables de entorno
    `export AWS_ACCESS_KEY_ID=`
    `export AWS_SECRET_ACCESS_KEY=`
    `export AWS_SESSION_TOKEN=`
9. Verificamos la identidad:
    `aws sts get-caller-identity`
10. Copiamos el archivo
    `aws s3 cp archivoparasubir.txt s3://qweoufbcvxzmpqw`
 

