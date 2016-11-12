# jpm

Gestor de proyectos basado en Ruby, YAML y Git.

`jpm` se encuentra bajo desarrollo en fase ALPHA. Se ha testeado solamente en GNU/Linux.

### ¿Que significa jpm?

`jpm` es el acrónimo de **J**PM **P**owerful **M**anager, "JPM Gestor Poderoso".

### ¿Por qué jpm?

El proyecto original era un gestor de paquetes, el cual de desvió un poco de su propósito para convertirse en una
interfaz CLI de Git, basada en Ruby y YAML, que te permita tener tu propio listado de repositorios y gestionarlos 
rápidamente.

El nombre "JPM", viene de Juanjo's Package Manager.

### Comandos disponibles

* **get** `paquete`: Descarga el repositorio del paquete indicado, si este se encuentra en el fichero `sources.yml`.
* **list**: Lista todos los paquetes disponibles.

#### Planeo implementar

* **update** `paquete`: Actualiza el repositorio local del paquete indicado.
* **help**: Muestra el menú de ayuda.

