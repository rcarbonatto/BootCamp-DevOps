# AWS - Desafío 3

## Español

¡Hola! En este Desafio crearemos un bucket  S3 y un rol de IAM para permitir la escritura en el mismo.
**Fecha:** 14-Septiembre-2024  
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
    1. Creamos el Rol y asignamos una trust policy 
        `aws iam create-role --role-name Desafio3_Rol --assume-role-policy-document file://Trust_Policy_For_Role.json` (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html)
    2. Creamos la politica para acceso de Escritura al Bucket
     https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_examples_s3_rw-bucket-console.html
    Desde la terminal subimos el archivo json y luego corremos el siguiente comando: `aws iam create-policy --policy-name` *Nombre_De_La_politica* `--policy-document file://`Nombre_Del_Archivo (https://docs.aws.amazon.com/cli/latest/reference/iam/create-policy.html) 
    3. Subimos y Asignamos la politica de Permisos de Escritura al Bucket
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
 



# AWS - Challenge 3
## English
Hello! In this Challenge, we will create an S3 bucket and an IAM role to allow writing to it.
**Date**: September 14, 2024
**Author**: Rodrigo Carbonatto Sarlengo
**Title**: Challenge 3 - DevOps Bootcamp

*It is recommended not to use the Root user, but another user as an administrator*

### Configuration from AWS CloudShell
1. Log in to the AWS management portal, open the console from the top right.
2. Create the bucket in S3. You can use the following command `aws s3 mb s3://unique_bucket_name` (https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/mb.html)   
3. Create the user s3-support 
   `aws iam create-user --user-name s3-support`
4. Create programmatic credentials for the user. AccessKey and SecretKey will be displayed on the screen. Save in a secure place for future use 
   `aws iam create-access-key --user-name s3-support`
5. Create the Role (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html) 
   1. Create the Role and assign a trust policy 
   `aws iam create-role --role-name Desafio3_Rol --assume-role-policy-document file://Trust_Policy_For_Role.json` (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html) 
   2. Create the policy for Write access to the Bucket https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_examples_s3_rw-bucket-console.html 
   From the terminal, upload the json file and then run the following command: aws` iam create-policy --policy-name Policy_Name --policy-document file://File_Name` (https://docs.aws.amazon.com/cli/latest/reference/iam/create-policy.html  
   3. Upload and Assign the Write Permissions Policy to the Bucket 
   `aws iam attach-role-policy --role-name Desafio3_Rol --policy-arn arn:aws:iam::********:policy/RW_Access_S3.json`   
6. Connect the CLI with the S3-support user 
    `aws configure` and enter the keys generated before
7. Assume the Role (https://repost.aws/es/knowledge-center/iam-assume-role-cli) 
     `aws sts assume-role --role-arn "arn:aws:aws:iam::**********:role/Desafio3_Rol" --role-session-name AWSCLI-Session`
8. Set the environment variables 
     `export AWS_ACCESS_KEY_ID=` 
     `export AWS_SECRET_ACCESS_KEY=` 
     `export AWS_SESSION_TOKEN=`
9. Verify the identity: 
     `aws sts get-caller-identity`
10. Copy the file 
     `aws s3 cp archivoparasubir.txt s3://qweoufbcvxzmpqw`