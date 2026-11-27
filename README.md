# README

This README would normally document whatever steps are necessary to get the
application up and running.

# API REST - Tareas

# 1. Descripción del proyecto:

Este proyecto consiste en el desarrollo de una API REST utilizando Ruby on Rails, que permite ver tareas mediante operaciones HTTP.

La API permite crear, consultar, actualizar y eliminar tareas.

Cada tarea contiene los siguientes campos:

titulo: Nombre o título de la tarea.
descripcion: Descripción de la tarea.
estado: Estado actual de la tarea.
prioridad: Nivel de prioridad.
fecha_limite: Fecha límite para completar la tarea.

# 2. Tecnologías utilizadas:

1. Ruby 4.0.9
2. Ruby on Rails 8.1.4.1
3. MySQL / MariaDB
4. Postman
5. Git y GitHub


# 3. Instalación del proyecto:

Ingresar a la carpeta del proyecto:

```bash
cd myAPI
```

Instalar las dependencias:

```bash
bundle install
```
# 4. Configuración de la base de datos:

Configurar los datos de conexión a MySQL en el archivo:  config/database.yml

Crear la base de datos:

```bash
rails db:create
```

Ejecutar las migraciones:

```bash
rails db:migrate
```

# 5. Ejecución del proyecto

Iniciar el servidor de desarrollo:

```bash
rails server
```

La API estará disponible en:  http://localhost:3000


## 6. Endpoints de la API

La API utiliza las siguientes rutas:

Método HTTP |      Endpoint       |  Descripción 

 GET        |  /api/v1/tareas     | Obtener todas las tareas 
 GET        |  /api/v1/tareas/:id | Obtener una tarea específica 
 POST       |  /api/v1/tareas     | Crear una tarea 
 PUT        |  /api/v1/tareas/:id | Actualizar una tarea 
 DELETE     |  /api/v1/tareas/:id | Eliminar una tarea 
 GET        |  /api/v1/tareas?estado=pendiente | Filtrar tareas por estado 

La dirección base es:    http://localhost:3000


# 7. Validaciones:
Los siguientes campos son obligatorios:

- titulo
- descripcion
- estado
- prioridad
- fecha_limite

# Estados permitidos:

- pendiente
- en_progreso
- completada

# Prioridades permitidas:

- baja
- media
- alta

# 8. Códigos de respuesta HTTP:

La API utiliza códigos de estado HTTP para indicar el resultado de cada operación:

 Código | Significado 

 200    | Solicitud realizada correctamente 
 201    | Recurso creado correctamente 
 404    | Recurso no encontrado 
 500    | Error del servidor

# 9. Pruebas con Postman

Las operaciones de la API pueden probarse utilizando Postman.

Para las solicitudes que envían información en formato JSON se deben configurar los siguientes encabezados:

```text
Content-Type: application/json
Accept: application/json
```

La colección de Postman contiene las solicitudes necesarias para comprobar las operaciones CRUD de la API.

