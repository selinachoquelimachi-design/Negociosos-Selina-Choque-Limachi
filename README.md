# Negociosos-Selina-Choque-Limachi
practica de web III
Proyecto de Desarrollo Web
nombre:Selina Choque Limachi
c.i:9212109
paralelo:B

1. Descripción general

Este proyecto tiene como objetivo practicar los conceptos fundamentales del desarrollo web y el control de versiones mediante Git y GitHub.

Durante su desarrollo se trabajó con una base de datos, los métodos HTTP y una aplicación web que consume una API pública para obtener información de Pokémon.

Además, se utilizaron ramas para organizar el trabajo, commits para registrar los cambios y Pull Requests para revisar e integrar las funcionalidades en la rama principal.

2. Objetivos del proyecto

- Practicar el uso de Git y GitHub.
- Comprender la importancia de trabajar con ramas.
- Registrar los avances mediante commits descriptivos.
- Aprender a integrar cambios mediante Pull Requests y Merge.
- Crear una página web utilizando HTML, CSS y JavaScript.
- Consultar una API pública mediante solicitudes HTTP.
- Validar los datos ingresados y gestionar los errores.

3. Tecnologías y herramientas utilizadas

HTML

Se utiliza para construir la estructura de la página web, incluyendo el campo donde se escribe el nombre del Pokémon, el botón de búsqueda y las áreas donde se muestran los resultados y los mensajes.

CSS

Se utiliza para mejorar la presentación visual de la aplicación, organizar los elementos y agregar estilos a los campos, botones y resultados.

JavaScript

Se utiliza para programar el funcionamiento del buscador, procesar el nombre ingresado, realizar solicitudes a la API, mostrar los datos recibidos y controlar los errores.

Git

Se utiliza para registrar los cambios del proyecto, crear ramas, realizar commits y combinar las modificaciones.

GitHub

Se utiliza para almacenar el repositorio remoto, publicar las ramas y revisar e integrar los cambios mediante Pull Requests.

PokeAPI

Es la API pública utilizada para obtener información de los Pokémon.

Dirección de la API: https://pokeapi.co/api/v2/pokemon/

4. Base de datos

En esta parte del proyecto se trabajó con la creación de tablas, la inserción de datos y la práctica de consultas SQL.

El objetivo fue practicar operaciones básicas para organizar y consultar información almacenada en una base de datos.

5. Métodos HTTP

Se documentaron los principales métodos HTTP utilizados en la comunicación entre clientes y servidores.

- GET: permite solicitar información.
- POST: permite enviar información para crear un recurso.
- PUT: permite reemplazar un recurso existente.
- PATCH: permite modificar parcialmente un recurso.
- DELETE: permite solicitar la eliminación de un recurso.

Estos métodos permiten comprender cómo se realizan las operaciones entre una aplicación y un servidor.

6. Aplicación web de búsqueda de Pokémon

Se desarrolló una aplicación web que permite buscar un Pokémon por su nombre y consultar la información proporcionada por PokeAPI.

6.1. Estructura de la aplicación

La aplicación se organiza principalmente en dos archivos:

- "frontend/index.html": contiene la estructura de la página, el campo de búsqueda, el botón y las áreas destinadas a los resultados.
- "frontend/app.js": contiene la lógica que permite buscar los Pokémon, procesar la respuesta de la API y mostrar la información.

Los estilos CSS se encuentran incorporados en el archivo HTML.

6.2. Funcionamiento del buscador

1. El usuario escribe el nombre de un Pokémon.
2. La aplicación obtiene el texto ingresado y elimina los espacios sobrantes.
3. Se comprueba que el campo no esté vacío.
4. Se valida que el nombre contenga únicamente letras y guiones, según la regla implementada.
5. Se muestra un mensaje de carga mientras se realiza la consulta.
6. JavaScript envía una solicitud a PokeAPI utilizando "fetch" y "async/await".
7. Se comprueba si la respuesta HTTP fue correcta.
8. Si la consulta tiene éxito, se procesa la respuesta JSON.
9. Se muestran el nombre, la imagen, los tipos, el peso y la altura del Pokémon.
10. Si ocurre un error, se muestra un mensaje para informar al usuario.

6.3. Información mostrada

La aplicación presenta los siguientes datos:

- Nombre del Pokémon.
- Imagen del Pokémon.
- Tipos a los que pertenece.
- Peso expresado en kilogramos.
- Altura expresada en metros.

El peso y la altura se convierten a unidades más fáciles de interpretar a partir de los valores proporcionados por la API.

6.4. Manejo de errores

Se implementaron controles para evitar que la aplicación falle cuando el usuario introduce datos no permitidos o cuando la API no devuelve una respuesta satisfactoria.

La aplicación contempla:

- Campo de búsqueda vacío.
- Nombre con números o símbolos no permitidos.
- Pokémon inexistente.
- Errores de respuesta HTTP.
- Problemas de conexión u otros errores durante la consulta.

Cuando ocurre un error, se muestra un mensaje informativo al usuario.

7. Evidencias de funcionamiento

7.1. Búsqueda exitosa

Esta captura muestra el resultado de una búsqueda correcta. Se puede observar la información del Pokémon recuperada desde PokeAPI.

"Búsqueda exitosa" (docs/pokemon-encontrado.png)

7.2. Búsqueda con error

Esta captura muestra el comportamiento de la aplicación cuando se busca un Pokémon inexistente y se presenta el mensaje de error correspondiente.

"Búsqueda con error" (docs/pokemon-no-encontrado.png)

8. Organización del proyecto

Los archivos principales se organizan de la siguiente manera:

negocio-Selina-Choque-Limachi/
├── frontend/
│   ├── index.html
│   └── app.js
├── docs/
│   ├── pokemon-encontrado.png
│   └── pokemon-no-encontrado.png
├── README.md
└── .gitignore

Esta estructura identifica los archivos de la aplicación web, las capturas utilizadas como evidencia y la documentación general del proyecto. También pueden existir otros archivos y carpetas relacionados con las actividades de base de datos y métodos HTTP.

9. Control de versiones con Git y GitHub

Para organizar el desarrollo se utilizaron ramas con nombres descriptivos siguiendo el formato "feature/numero-descripcion".

Los cambios se registraron mediante commits con mensajes que indican el tipo de modificación realizada.

El procedimiento de trabajo consistió en:

1. Cambiar a la rama principal "main".
2. Actualizar la rama principal con los cambios disponibles en GitHub.
3. Crear una rama para trabajar en una funcionalidad.
4. Modificar los archivos correspondientes.
5. Revisar el estado de los cambios con "git status".
6. Preparar los archivos con "git add".
7. Registrar los cambios con "git commit".
8. Publicar la rama con "git push".
9. Crear un Pull Request para revisar los cambios.
10. Revisar los archivos modificados antes de combinar la rama mediante Merge.

Este procedimiento permite mantener un historial de trabajo y evitar realizar directamente las modificaciones de las funcionalidades en "main".

10. Conclusión

El proyecto permitió practicar el desarrollo de una aplicación web y el consumo de una API pública, además de reforzar el uso de Git y GitHub.

Se trabajó con la estructura HTML, los estilos CSS, la programación con JavaScript, las solicitudes HTTP y la gestión de errores.

También se practicó la organización del trabajo mediante ramas, commits, Pull Requests y Merge, herramientas que permiten mantener un desarrollo más ordenado y controlado.
Práctica de conflictos

Mensaje de la rama B: el proyecto utiliza GitHub para compartir los cambios.