
# Java

## Spring

Spring es un framework, un marco de trabajo para el desarrollo de aplicaciones y páginas web principalmente en Java, aunque también tiene soporte para Groovy y Kotlin de manera alternativa.

## Spring Boot

Spring Boot es una herramienta de Spring framework que simplifica el desarrollo eliminando gran parte de la configuracion manual necesaria en proyectos tradicionales

Con Spring Boot, podés concentrarte en escribir código de calidad en lugar de configurar tuy entorno de desarrollo.

Ventajas

Capacidad de autoconfiguración, que reduce lanecesidad de configuración manual.

Empaquetado independiente, que facilita la implementacion de aplicaciones.

Integración con otras tecnologías de Spring, como Spring Data y Spring Security.

Protocolo HTTP (Hyppertext Transfer Protocol)

Un protocolo es un conjunto de reglas que se debe seguir para poder obtener o lograr un dertermi,ado resultado o acceder a un determinado recurso o servicio.
HTTP permite que las solicitudes y respuestas entre clientes y servidores tengan un determinado formato a seguir y respetar para que puedan comunicarse sin inconvenientes.

Estructura de una Request

Metodo (Get, Post, Put, Delete)
URL
Header (JSON, XML)
Body (Campo opcional pero necesario para para objetos).

Estructura de una Response

Header (JSON, XML)
Body (Campo opcional pero necesario para para objetos).
Status code: Codigo particular con información de la solicitud
  Rango 100: Solicitud siendo procesada.
  Rango 200: Solicitud procesada exitosamente.
  Rango 300: Se va a producir una redificicón.
  Rango 400: Se produjeron errores.
  Rango 500: Manifiesta errores causados por el servidor.

Arquitectura REST ( Transferencia de estado representacional)

Es una arquitectura de software que define o establece un conjunto de estandares, propiedades y buenas practicas que se pueden implementar sobre HTTP. Su principal funcion es la de permitir que un desarrollo web pueda operar con otros mediante sus estandares a través de internet o de una red.

Librerias

Son un conjunto de bloques de código especificadas en forma de funcionalidades que se utilizan para resolver problemas o necesidades especificas que se pueden presentar en diferentes tipos de proyectos durante el desarrollo de software.

## Numero Aleatorio

En Java, puedes generar un número aleatorio utilizando la clase **`java.util.Random`** o utilizando el método **`Math.random()`**. Aquí te muestro cómo hacerlo con ambos métodos:

1. Utilizando la clase **`java.util.Random`**:

```java

import java.util.Random;

Random random = new Random();
int numeroAleatorio = random.nextInt(); // Genera un número entero aleatorio

```

Puedes especificar el rango de números generados utilizando **`nextInt(int bound)`**, donde **`bound`** es el límite superior (exclusivo) del rango de números aleatorios que deseas generar. Por ejemplo:

```java

int numeroAleatorio = random.nextInt(100); // Genera un número entero aleatorio entre 0 y 99

```

1. Utilizando el método **`Math.random()`**:

```java

double numeroAleatorio = Math.random(); // Genera un número decimal aleatorio entre 0.0 y 1.0

```

Si deseas un número entero aleatorio, puedes combinar **`Math.random()`** con un casting a **`int`** y manipulación adecuada del rango, por ejemplo:

```java

int numeroAleatorio = (int) (Math.random() * 100); // Genera un número entero aleatorio entre 0 y 99

```

Recuerda que en ambos casos necesitarás importar las clases necesarias (**`java.util.Random`** para el primer método).

# Streams

Son una nueva forma de trabajar con colecciones de datos de forma más concisa y eficiente.

Permiten realizar operaciones sobre colecciones de datos de manera funcional y declarativa.

Se pueden encadenar múltiples operaciones para transformar, filtrar o agrupar datos.

## Ejemplo

List<String> palabras = Arrays.asList("java", "es", "genial");

// Operaciones con Streams
palabras.stream()
.map(String::toUpperCase)
.filter(s -> s.startsWith("J"))
.forEach(System.out::println); // Imprime "JAVA"

## Explicación

Se llama al método **`map()`** en el stream. El método **`map()`** toma una función como argumento y aplica esa función a cada elemento del stream. En este caso, se utiliza una referencia de método **`String::toUpperCase`** que convierte cada cadena en mayúsculas. Notemos que toUpperCase es un metodo de la clase String.

Se llama al método **`filter()`** en el stream. El método **`filter()`** toma un predicado como argumento y filtra los elementos del stream según ese predicado. En este caso, el predicado es **`s -> s.startsWith("J")`**, que devuelve **`true`** si la cadena comienza con "J".

Se llama al método **`forEach()`** en el stream. El método **`forEach()`** toma un consumidor como argumento y aplica ese consumidor a cada elemento del stream. En este caso, se utiliza una referencia de método **`System.out::println`** que imprime cada elemento en la consola.