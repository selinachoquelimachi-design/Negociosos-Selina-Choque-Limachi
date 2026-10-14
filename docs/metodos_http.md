Documentación de Métodos HTTP

Objetivo

Realizar pruebas de los métodos HTTP GET, POST, PUT, PATCH y DELETE utilizando la API de prueba JSONPlaceholder. Registrar para cada método su descripción, URL, cuerpo de la petición cuando corresponda, código de estado HTTP y resultado obtenido.

1. Método GET

Descripción: Permite consultar y obtener información de un recurso.

URL:

"https://jsonplaceholder.typicode.com/posts/1"

Cuerpo de la petición: No requiere cuerpo.

Código de estado HTTP: 200 OK.

Resultado: La API devolvió los datos de la publicación solicitada en formato JSON, incluyendo su identificador, título, contenido y usuario.

2. Método POST

Descripción: Permite enviar datos para crear un recurso nuevo.

URL:

"https://jsonplaceholder.typicode.com/posts"

Cuerpo JSON enviado:

{
  "title": "Mi primera prueba",
  "body": "Prueba del método POST",
  "userId": 1
}

Código de estado HTTP: 201 Created, si ese fue el código obtenido en la prueba.

Resultado: La API de prueba devolvió los datos enviados y un identificador para el recurso simulado.

3. Método PUT

Descripción: Permite reemplazar los datos de un recurso mediante una petición de actualización.

URL:

"https://jsonplaceholder.typicode.com/posts/1"

Cuerpo JSON enviado:

{
  "id": 1,
  "title": "Publicación actualizada",
  "body": "Prueba del método PUT",
  "userId": 1
}

Código de estado HTTP: Registrar el código obtenido en la prueba.

Resultado: La API respondió a la petición de actualización simulada y devolvió una representación del recurso actualizado.

4. Método PATCH

Descripción: Permite modificar parcialmente un recurso, enviando solamente los campos que se desean cambiar.

URL:

"https://jsonplaceholder.typicode.com/posts/1"

Cuerpo JSON enviado:

{
  "title": "Título modificado con PATCH"
}

Código de estado HTTP: Registrar el código obtenido en la prueba.

Resultado: La API respondió a la petición de modificación parcial y devolvió una representación del recurso con el título enviado.

5. Método DELETE

Descripción: Permite solicitar la eliminación de un recurso.

URL:

"https://jsonplaceholder.typicode.com/posts/1"

Cuerpo de la petición: No requiere cuerpo.

Código de estado HTTP: Registrar el código obtenido en la prueba.

Resultado: La API respondió a la solicitud de eliminación simulada.

Conclusión

Los métodos HTTP permiten realizar diferentes operaciones sobre los recursos de una API:

- GET: consultar información.
- POST: enviar datos para crear un recurso.
- PUT: reemplazar los datos de un recurso.
- PATCH: modificar parcialmente un recurso.
- DELETE: solicitar la eliminación de un recurso.

Las pruebas se realizaron utilizando JSONPlaceholder, una API de prueba que simula estas operaciones. Los cambios no se guardan permanentemente en el servidor.