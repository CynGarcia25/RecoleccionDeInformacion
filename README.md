#**Proyecto para el grupo de estudio del ISPC**

##Pasos para clonar el repositorio de GitHub

1. En la página principal del archivo, ir a la pestaña <Code>, verificar que estén en la rama main, buscar el botón Code y desplegar. Se abre una ventanita con tres opciones: HTTPS, SSH y GitHubCLI. Posicionarse en HTTPS Y copiar la dirección del repositorio (Ej: https://github.com/CynGarcia25/RecoleccionDeInformacion.git), que luego se usará seguido del comando git clone.

- git clone https://github.com/CynGarcia25/RecoleccionDeInformacion.git

2. Para crear una rama: 
- git branch, seguido del nombre de la rama que quiero crear. (Usaremos nuestro nombre y apellido o un alias que nos identifique.)
Ejemplo: git branch minombre

3. Para moverme entre ramas:

- git checkout nombre_de_la_rama

4. Para subir los cambios locales al repositorio remoto (GitHub):
- git status ( compruebo los cambios, aparecen en rojo )
- git add . ( subo todos los cambios a la staging area) ó
- git add nombre del archivo ( subo solo el o los archivos que elijo )
- git status ( es opcional, pero recomendable volver a corroborar, aparecen los cambios en la staging area en verde)
- git commit -m "mensaje informativo"
- git push ( si ya he subido algo antes )
- git push --set-upstream origin nombre_de_la_rama ( si es la primera vez que lo hago )

5. Merge en GitHub de mi rama con main ..... ( continuar )