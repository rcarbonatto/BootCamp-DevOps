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
3. Creamos la politica para acceso de Escritura al Bucket
    *1.* Creamos el json para la politica (Se puede obtener desde el portal AWS, en la creacion de politicas)
    *2.* Desde la terminal subimos el archivo json y luego corremos el siguiente comando: `aws iam create-policy --policy-name` *Nombre_De_La_politica* `--policy-document file://`Nombre_Del_Archivo (https://docs.aws.amazon.com/cli/latest/reference/iam/create-policy.html)
4. Creamos el Rol
    *1.* Creamos el Json para el Rol
    *2.* Subimos el archivo y corremos el siguiente comando: `aws iam create-role --role-name` *Nombre_del_Rol* `--assume-role-policy-document file://`*Nombre_Del_Json_subido* (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user.html)
5. Asignamos la politica al rol con el comando:
     `aws iam attach-role-policy --policy-arn arn:aws:iam::`*id_del_AWS*`:policy/`*Nombre_De_La_Politica*` --role-name `*Nombre_del_Rol*
6. Creamos el usuario s3-support
    `aws iam create-user --user-name s3-support`
7. Creamos las credenciales programaticas para el usuario. AccessKey y SecretKey seran mostradas en pantalla. Guardar en un lugar seguro para futuro uso
    `aws iam create-access-key --user-name s3-support`
8. Obtener el arn del Role a asumir
    `aws iam list-roles --query "Roles[?RoleName == '`*Nombre_del_Rol*`'].[RoleName, Arn]"`
9. Asumimos el Rol (https://repost.aws/es/knowledge-center/iam-assume-role-cli)

PENDIENTE: Asignar POlitica de uso de sts a S3-support y probar