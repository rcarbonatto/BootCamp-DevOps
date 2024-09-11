# Jenkins Declarative Pipeline - Desafío 1

## Español

¡Hola! Bienvenido a mi primer Pipeline Declarativo de Jenkins, el cual crea un usuario en un sistema operativo Linux Distro: Ubuntu 22.04  
**Fecha:** 20-Marzo-2024  
**Autor:** Rodrigo Carbonatto Sarlengo  
**Título:** Desafío 1 - Bootcamp DevOps

*Se asume que hay una instancia con Jenkins en Linux corriendo.*

### Configuración del Token de Acceso a GitHub en Jenkins

#### En GitHub

1. En tu cuenta de GitHub, ve a la parte superior derecha donde se encuentra tu foto, haz clic y ve a **Settings**.
2. En la barra izquierda, ve a la última opción **Developer Settings** y haz clic.
3. Selecciona **Fine-grained Tokens**.
4. Presiona en **Generate New Token**.
5. Completa la información requerida:
   - **Token Name:** Un nombre descriptivo para este token.
   - **Select expiration:** Selecciona cuando deseas que expire.
   - **Description:** Coloca una descripción.
   - **Repository Access:** Selecciona **All repositories**.
6. Bajo **Permissions** selecciona lo siguiente:
   - **Administration:** Read and Write.
   - **Contents:** Read and Write.
   - **Metadata:** Read-Only.
7. Presiona en **Generate Token** y guarda el token en un lugar seguro.

#### En Jenkins

1. Ingresa a Jenkins desde el navegador colocando la IP asignada y el puerto.
2. Ve a: **Panel de Control** - **Administrar Jenkins** - **Credentials** - **System** - **Global Credential (unrestricted)** - **Add Credentials**.
3. Para la nueva credencial completa lo siguiente:
   - **Kind:** Username and Password.
   - **Scope:** Global.
   - **Username:** Coloca el username de GitHub.
   - **Password:** Pega el token generado en GitHub.
   - **ID:** Coloca un nombre descriptivo.
   - **Description:** Coloca una descripción para este token.

### Agregar el Repositorio a Jenkins

1. Ingresa a Jenkins desde el navegador colocando la IP asignada y el puerto.
2. En el perfil izquierdo selecciona **Nueva Tarea**.
3. Coloca un nombre descriptivo, selecciona la opción **Pipeline** y presiona **OK** en la parte inferior.
4. Desplázate hasta la opción **Pipeline**:
   - **Definition:** Selecciona **Pipeline Script from SCM**.
   - **SCM:** Selecciona **GIT**.
   - **Repository URL:** Coloca la dirección `.git` (HTTPS) del repositorio.
   - **Credentials:** Selecciona la credencial recién creada.
   - **Branch Specifier (blank for 'any'):** Cambia `master` por `main`.
   - **Script Path:** Pon `./Desafio1_Jenkins/JenkinsFile`.
5. Presiona **Guardar**.

### Correr el Pipeline

1. Desde la pantalla principal selecciona el trabajo creado.
2. Haz clic en **Construir Ahora**.
3. Espera a que termine de correr y refresca la página.
4. El botón **Construir Ahora** debe haber cambiado a **Construir con Parámetros**, haz clic en él.
5. Completa los campos:
   - `FullName`: Completa con Nombre y Apellido del nuevo usuario.
   - `NombreUsuario`: Completa con el Login (Identificador Único, puede ser nombre y apellido sin espacios).
   - `Departamento`: Selecciona el Departamento desde la lista.
6. Una vez completados los 3 campos presiona **Ejecución**.
7. Esto te redirigirá a una página donde verás que debajo de **Creando el Usuario** aparece un cuadro verde. En el primer cuadro haz clic y presiona sobre **Logs**.
8. Desde aquí puedes copiar todos los datos del usuario creado junto con la contraseña temporal.

## English

Hello! Welcome to my first Jenkins Declarative Pipeline, which creates a user on a Linux Distro operating system: Ubuntu 22.04  
**Date:** March 20, 2024  
**Author:** Rodrigo Carbonatto Sarlengo  
**Title:** Challenge 1 - DevOps Bootcamp

It is assumed that you already have an instance of Jenkins running on Linux.

### Configuring GitHub Access Token in Jenkins

#### On GitHub

1. In your GitHub account, go to the top right where your photo is located, click and go to **Settings**.
2. On the left bar, go to the last option **Developer Settings** and click.
3. Select **Fine-grained Tokens**.
4. Click on **Generate New Token**.
5. Complete the required information:
   - **Token Name:** A descriptive name for this token.
   - **Select expiration:** Select when you want it to expire.
   - **Description:** Provide a description.
   - **Repository Access:** Select **All repositories**.
6. Under **Permissions** select the following:
   - **Administration:** Read and Write.
   - **Contents:** Read and Write.
   - **Metadata:** Read-Only.
7. Click on **Generate Token** and save the token in a safe place.

#### In Jenkins

1. Enter Jenkins from the browser by entering the assigned IP and port.
2. Go to: **Control Panel** - **Manage Jenkins** - **Credentials** - **System** - **Global Credential (unrestricted)** - **Add Credentials**.
3. For the new credential complete the following:
   - **Kind:** Username and Password.
   - **Scope:** Global.
   - **Username:** Enter the GitHub username.
   - **Password:** Paste the token generated in GitHub.
   - **ID:** Enter a descriptive name.
   - **Description:** Provide a description for this token.

### Adding the Repository to Jenkins

1. Enter Jenkins from the browser by entering the assigned IP and port.
2. On the left profile select **New Item**.
3. Enter a descriptive name, select the **Pipeline** option, and click **OK** at the bottom.
4. Scroll to the **Pipeline** section:
   - **Definition:** Select **Pipeline Script from SCM**.
   - **SCM:** Select **GIT**.
   - **Repository URL:** Enter the `.git` (HTTPS) address of the repository.
   - **Credentials:** Select the newly created credential.
   - **Branch Specifier (blank for 'any'):** Change `master` to `main`.
   - **Script Path:** Enter `./Desafio1_Jenkins/JenkinsFile`.
5. Click **Save**.

### Running the Pipeline

1. From the main screen select the created job.
2. Click on **Build Now**.
3. Wait for it to finish running and refresh the page.
4. The **Build Now** button should have changed to **Build with Parameters**, click it.
5. Complete the fields:
   - **First Field (FullName):** Enter the First and Last Name of the new user.
   - **Second Field (UserName):** Enter the Login (Unique Identifier, can be first and last name without spaces).
   - **Third Field (Department):** Select the Department from the list.
6. Once all 3 fields are completed, press **Build**.
7. This will redirect you to a page where you will see a green box under **Creating the User**. Click on the first box and press **Logs**.
8. From here you can copy all the data of the created user along with the temporary password.
