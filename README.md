# Apuntes personales de programación

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

# Lambda

# Angular

## Requisitos

1. Node.js, npm, Visual Studio Code, Angular CLI, Git

## Comandos

npm install @angular/cli    —> instala CLI en la pc

ng new my-app   —> crea aplicacion angular en el directorio actual “my-app” es el nombre que le ponemos a la app

ng serve —open —>  abrir el navegador con esta aplicacion en ejecucion

ng server —o    —> idem arriba

## Estructura y flujo

App Angular ( Main )

Definicion del modulo principal a cargar

Modulo Raiz (AppModule)

Definición del componente a principal a cargar

Componente principal (AppComponent)

Contiene un decorador, es codigo javascript que permite añadir anotaciones, metadatos y especifican el comportamiento que va a tener la clase a la que acompañan

## Componentes

### Estructura

### Decorador

- Selector
    
    

- Template

- Style (CSS)
    
    

### Clase

- Propiedades
- Constructor
- Metodos
- Standalone

> a partir de Angular 17 hay que declarar Standalone:true dentro de cada componente
> 

Un componente de puede insertar dentro de una estructura HTML.

Un componente puede tener mas componentes creados dentro del mismo.

Index.html tiene el archivo app-root —> hace referencia al componente

### Creacion de componentes

### Manual

Creamos cada archivo manualmente

### Ejemplo para componente empleados

Creamos carpeta “empleados”

Dentro de la carpeta creamos los archivos

- empleados.component.css
- empleados.component.html
- empleados.component.ts

```tsx
import { Component } from "@angular/core";

@Component({
    selector:"app-empleados",
    standalone: true,
    templateUrl: "./empleados.component.html",
    styleUrls: ['./empleados.component.css']

    
})
export class EmpleadosComponent{

}
```

Una vez creado nuestro componente lo importamos en module.ts pero si es angular +17 tenemos que importarlo en el componente principal, app.component.ts

Quedaria asi;

```
import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet } from '@angular/router';
import { EmpleadosComponent} from './empleados/empleados.component'

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, RouterOutlet, EmpleadosComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'miPrimeraApp';
}

```

### Automática (C.L.I)

asd

## SPA (Single Page Application)

La applicacion se carga nuevamente pero por parte ( componentes ) no hace falta cargar toda la pagina —> AJAX

## Detalles de codigo

{{variable}}  de esta forma podemos acceder al valor de una variable de js creada en el componente desde un html. Ejemplo: <span> Saludo: {{variableSaludo}}</span>

## Extensiones recomendadas

- Angular Files y Angular Language Service
    
    

# HTML

## Detalles

- En head van los meta datos.
- En body va todo el contenido visual de la pagina.
- CSS se usa para darle estilo.
- Javascript se usa para darle interaccion.
- Con la combinacion de teclas ALT + SHIFT + F  se identa el fragmento de codigo que seleccionamos.
- Con la combinacion de teclas ALT + SHIFT + ABAJO  se hace una copia de la linea actual hacia una mas abajo.
- Con la combinacion de teclas ALT + SHIFT + CLICK  se puede seleccionar  varios fragmentos de codigo para modificar al mismo tiempo.
- Con la tecla ALT se puede hacer seleccion multiple para escribir un mismo texto en varios lugares.
- Con la combinacion `Control` + `}` podemos comentar el fragmento del codigo.
- Al escribir `html`, podemos tener una estructura basica de html sin necesidad de escribir todo.

![Untitled](Apuntes%20personales%20de%20programacio%CC%81n%2034801733d96a4e289f62f94f3ab9be44/Untitled.png)

## Estructura basica de un HTML

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Define el conjunto de caracteres para la página -->
    <meta charset="UTF-8">
    
    <!-- Ayuda a controlar la forma en que la página es mostrada en dispositivos móviles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Título del documento, visible en la pestaña del navegador -->
    <title>Hola Mundo</title>
    
    <!-- Descripción de la página, importante para SEO -->
    <meta name="description" content="Esta es una página de ejemplo para aprender la estructura básica de HTML con metadatos.">
    
    <!-- Palabras clave de la pagina -->
    <meta name="keywords" content="tutorial desarrollo web, pagina">
    
    <!-- A los 5 segundos la pagina se refresca, posterior sigue la instruccion de redirigir a otra pagina  -->
    <meta http-equiv="refresh" content="5; http://www.instagram.com">
    
    
    <!-- Favicon, el pequeño icono en la pestaña del navegador -->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    
    <!-- Enlace a una hoja de estilos externa (Opcional) -->
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <h1>Hola mundo</h1>
    <p>Esta es mi primera página con estructura HTML correcta y completa.</p>
    
     <!-- El js siempre se pone al final del body -->
    <script src="index.js"></script>
</body>
</html>

```

## Texto de maquetado Lorem

Podemos agregar texto para ver como quedaria la web con esa cantidad de caracteres, para ello escribimos en donde iria el texto la palabra “Lorem” seguido de la cantiad de caracteres que necesitamos.

`<p> lorem64 </p>`

## Texto

Etiqueta para parrafos `<p>` 

Se usa para crear parrafos de texto
<p> Este texto a continuación es negrita: <b> NEGRITA </b>  </p>
<p> Este texto a continuación es negrita y con palabra con fondo a color remarcado: <b style="background-color: aqua;> NEGRITA </b>  </p>

Etiqueta para linea horizontal `<hr>`

La etiqueta **`<hr>`** en HTML se utiliza para insertar una línea horizontal en una página, sirviendo como un divisor visual que indica un cambio de tema o una pausa en el contenido. Esta etiqueta ayuda a organizar y estructurar visualmente el texto en secciones distintas, mejorando la legibilidad del documento.

Etiqueta para salto de linea  `<br>`

La etiqueta **`<br>`** en HTML se utiliza para insertar un salto de línea en el texto, sin comenzar un nuevo párrafo. Es una etiqueta de auto-cierre, lo que significa que no necesita una etiqueta de cierre y se escribe simplemente como **`<br>`** o **`<br/>`**.

El uso principal de **`<br>`** es forzar un salto de línea en lugares específicos del texto, ayudando a controlar la disposición del texto dentro de un elemento, como un párrafo o un encabezado, sin alterar la estructura de los bloques de contenido que lo rodean.

Etiqueta para mostrar texto tal cual codigo `<pre>`

La etiqueta **`<pre>`** en HTML se utiliza para mostrar texto preformateado. Los textos dentro de una etiqueta **`<pre>`** se presentan exactamente como se escriben en el código fuente HTML, respetando los espacios en blanco y los saltos de línea. Esto es útil para mostrar código fuente, poesía, ASCII art o cualquier otro contenido donde la disposición del texto sea crucial.

```html
<body>
    <pre>
A la luz de la luna,
   tejía la araña,
      su red era una,
         fina telaraña.

Bajo la luz tenue,
   aguardaba paciente,
      su cena de la noche,
         un festín opulente.
    </pre>
</body>
```

Etiqueta para citas de autor `<blockquote>`

Se utiliza para representar una cita extendida o un bloque de texto citado de otra fuente. El uso de **`<blockquote>`** no solo tiene implicaciones visuales (como el posible sangrado del texto en la página), sino también semánticas, ya que ayuda a definir el contenido como una cita que proviene de otra parte, diferenciándolo del texto principal.

```html
<body>
    <p>Aquí está un ejemplo de cómo alguien podría usar una cita en un blog:</p>
    <blockquote cite="https://ejemplofuente.com">
        <p>"La lectura es a la mente lo que el ejercicio al cuerpo."</p>
    </blockquote>
    <p>Este es un ejemplo de uso del blockquote para incluir una cita relevante.</p>
</body>

```

Etiqueta para citas de autor dentro del texto <q>

La etiqueta **`<q>`** en HTML se utiliza para indicar citas cortas que se encuentran dentro de un texto. A diferencia de **`<blockquote>`**, que se usa para citas largas o bloques de texto y se suele presentar visualmente con un sangrado, **`<q>`** se utiliza para inserciones más breves y generalmente los navegadores lo rodean automáticamente con comillas.

```html
<body>
    <p>Aquí está un ejemplo de cómo alguien podría usar una cita corta en un blog:</p>
    <p>Como dijo alguien una vez, <q>La lectura es a la mente lo que el ejercicio al cuerpo.</q></p>
    <p>Este es un ejemplo de uso de la etiqueta <q> para incluir una cita relevante dentro de un párrafo.</p>
</body>
```

Etiqueta para super indice `<sup>`

Es comúnmente utilizado para notaciones matemáticas como exponentes, referencias a notas al pie o en química para indicar el estado de oxidación.

```html
<body>
		<h1> TEOREMA DE PITAGORAS </h1>
		<hr>
    <p>hipotenusa<sup>2</sup>= cateto opuesto <sup>2</sup> + cateto adyacente <sup>2</sup></p>
</body>
```

Etiqueta para SubIndice `<sub>`

Texto en subíndice aparece en una posición más baja que la línea base del texto y es generalmente más pequeño que el texto normal. Esta etiqueta es comúnmente utilizada en contextos científicos y matemáticos para notaciones como fórmulas químicas, expresiones matemáticas o referencias.

```html
<body>
    <p>La fórmula química del agua es H<sub>2</sub>O.</p>
    <p>El dióxido de carbono se formula como CO<sub>2</sub>.</p>
    <p>La base logarítmica natural se denota como log<sub>e</sub> o ln.</p>
</body>
```

Etiqueta para Leyenda `<acronym>`

Se utiliza para poner una leyenda descriptiva sobre una palabra del texto.

```html
<h1> ¿Qué significa OMS? </h1>
<hr>
<p> Colocá el mouse encima de esta palabra para saberlo: <acrpmy, title="Organización mundial de la salud">OMS</acronym> </p>
```

Etiqueta para Hipervinculos `<a>`

Es fundamental para la creación de hipervínculos, que permiten la navegación desde un lugar a otro dentro del mismo documento, a otro documento, o a una dirección URL completamente diferente. Esta etiqueta es esencial para la interconexión de contenido en la web, permitiendo a los usuarios acceder a una amplia variedad de recursos fácilmente.

**href**: Especifica la URL de la página a la que el enlace lleva. Puede ser una ruta absoluta o relativa.

**target**: Define cómo abrir el enlace. Por ejemplo, **`_blank`** para abrir el enlace en una nueva ventana o pestaña.

**rel**: Describe la relación entre la página actual y el enlace. Ejemplos comunes incluyen **`nofollow`**, **`noopener`**, o **`noreferrer`

title**: Proporciona información adicional sobre el enlace, generalmente mostrada como una "tooltip" cuando el usuario pasa el cursor sobre el enlace.

```html
<body>
    <p>Visita <a href="https://www.wikipedia.org" target="_blank" title="Abrir Wikipedia en una nueva pestaña">Wikipedia</a> para más información.</p>
    <p>Puedes aprender más sobre HTML en <a href="#htmlSection" title="Ir a la sección sobre HTML">esta sección</a>.</p>
</body>
```

Etiqueta para marcar importancia `<strong>`

**`<strong>`**: Esta etiqueta se utiliza para indicar que el texto dentro de ella tiene una importancia fuerte. A nivel visual, los navegadores suelen representar el texto dentro de un **`<strong>`** en negrita. La idea de esta etiqueta no es solo cambiar la apariencia del texto, sino también indicar a los lectores y a las tecnologías asistivas que este texto es de gran relevancia. Por ejemplo, puede ser utilizado para destacar una parte crítica de una advertencia o información clave en un contexto.

```html
<p>Es <strong>crucial</strong> seguir las instrucciones para evitar errores.</p>

```

Etiqueta para marcar enfasis `<em>`

**`<em>`**: La etiqueta **`<em>`** se usa para dar énfasis a un texto, lo que podría alterar el significado de la oración si se omite o no se considera. A nivel visual, el texto dentro de un **`<em>`** generalmente se muestra en cursiva. Esta etiqueta es útil para destacar términos o frases que tienen una importancia relativa dentro de una oración o párrafo.

```html
<p>No olvides traer tu <em>pasaporte</em> cuando vengas a la oficina.</p>
```

## Encabezados

El uso de los encabezados **`<h1>`** hasta **`<h6>`** en HTML sirve para organizar y estructurar el contenido textual de una página web de manera jerárquica y lógica, lo que ayuda tanto a los usuarios como a los motores de búsqueda a entender la organización del contenido. Cada uno de estos encabezados tiene un peso y una importancia que decrecen a medida que aumenta el número:

```html
<h1>Encabezado principal: Últimas Tendencias en Tecnología</h1>
<h2>Encabezado: Realidad Aumentada</h2>
<h3>Encabezado: Aplicaciones de la Realidad Aumentada</h3>
<h4>Encabezado: Industria de los Videojuegos</h4>
<h5>Encabezado: Ejemplos de Juegos con RA</h5>
<h6>Encabezado: Análisis de Juego Específico con RA</h6>
```

## Multimedia

Etiqueta para Imagenes `<img>`

La etiqueta **`<img>`** en HTML se utiliza para incrustar imágenes en un documento HTML. Es fundamental para añadir contenido visual a las páginas web, lo que puede mejorar la experiencia del usuario, proporcionar contexto visual y apoyar el contenido textual.

**Atributos principales:

src** (source): Especifica la URL de la imagen que se va a incrustar. Puede ser una ruta a un archivo local o una dirección URL a un archivo en línea.

**alt** (alternative text): Proporciona un texto alternativo para la imagen si por alguna razón esta no puede ser mostrada. Este texto también es importante para la accesibilidad web, permitiendo a los lectores de pantalla leer una descripción de la imagen para las personas con discapacidad visual.

**width** y **height**: Estos atributos definen el ancho y el alto de la imagen en píxeles. Aunque son opcionales, especificarlos puede ayudar a mejorar el diseño de la página cargada, evitando cambios bruscos mientras se cargan las imágenes.

**title**: Ofrece información adicional sobre la imagen cuando el usuario pasa el cursor sobre ella (a menudo mostrada como una "tooltip").

También podemos usar  la etiqueta <img> junto a la etiqueta <href> para que al momento se hacerle click a alguna imagen se nos rediriga hacia alguna pagina.

Por lo general tenemos una carpeta llamada “Assets\img” para guardar las imagenes.

```html
<body>
    <h1>¡Bienvenido a mi sitio web!</h1>
    <img src="logo.png" alt="Logotipo de Mi Sitio" width="200" height="100" title="Logotipo">
    <p>Gracias por visitar nuestra página. Aquí encontrarás información útil y relevante.</p>
</body>
```

Etiqueta para audio <audio>

La etiqueta **`<audio>`** en HTML se utiliza para incrustar contenido de audio en documentos web. Es una parte integral de HTML5 y permite a los desarrolladores web incluir audio de manera nativa sin la necesidad de plugins externos. Esta etiqueta simplifica la incorporación de archivos de audio en las páginas web y mejora la accesibilidad y la interacción del usuario.

**Atributos principales:

src**: Define la URL del archivo de audio a reproducir. Este puede ser un enlace directo a un archivo de audio.

**controls**: Si se incluye, muestra los controles del reproductor (como play, pause, y control de volumen).

**autoplay**: Hace que el audio comience a reproducirse automáticamente cuando se carga la página. Cabe destacar que muchos navegadores modernos restringen la reproducción automática para mejorar la experiencia del usuario.

**loop**: Hace que el audio se repita continuamente.
**muted**: Silencia el audio. Esto puede ser útil en combinación con **`autoplay`**.

**preload**: Este atributo especifica si y cómo el navegador debería cargar el archivo de audio al cargar la página. Los valores posibles son: **`none`**, **`metadata`** (carga solo los metadatos del audio), y **`auto`** (pre-carga el audio completo).

```html
<body>
    <h1>Audio de Ejemplo</h1>
    <audio controls>
        <source src="audio.mp3" type="audio/mpeg">
        <source src="audio.ogg" type="audio/ogg">
        Tu navegador no soporta el elemento <code>audio</code>.
    </audio>
    <p>Disfruta de nuestra selección de audio.</p>
</body>
```

Etiqueta para video `<video>`

La etiqueta **`<video>`** en HTML se utiliza para incrustar contenido de video en documentos HTML. Es parte de HTML5 y ofrece una manera de incluir videos directamente en las páginas web sin necesidad de plugins adicionales como Flash, que eran comunes en el pasado. La etiqueta **`<video>`** simplifica la incorporación de contenido multimedia y mejora la accesibilidad y la interacción del usuario.

**Atributos principales:

src**: Define la URL del archivo de video a reproducir. Puede ser un enlace directo a un archivo de video o a múltiples fuentes usando etiquetas **`<source>`**.

**controls**: Cuando está presente, muestra los controles del reproductor (play, pause, volumen, etc.).

**autoplay**: Hace que el video se reproduzca automáticamente al cargar la página. Nota: muchas navegaciones modernas restringen la reproducción automática con sonido para mejorar la experiencia del usuario.

**loop**: Repite el video automáticamente cuando termina.

**muted**: Silencia el video. Esto a menudo se utiliza en combinación con **`autoplay`**.

**preload**: Controla cómo se debe cargar el video cuando la página se carga. Los valores pueden ser **`none`**, **`metadata`** (solo carga los metadatos), o **`auto`** (pre-carga el video completo).

**width** y **height**: Establecen el tamaño del video mostrado en la página.

**poster**: Proporciona una imagen que se mostrará antes de que el video se reproduzca.

```html
<body>
    <h1>Video de Demostración</h1>
    <video src="demo.mp4" controls width="640" height="480" poster="poster.jpg">
        <source src="demo.webm" type="video/webm">
        <source src="demo.ogv" type="video/ogg">
        Tu navegador no soporta el elemento <code>video</code>.
    </video>
    <p>Este es un video de demostración en nuestra página.</p>
</body>
```

## Listas

En HTML, las etiquetas de listas se utilizan para organizar datos en formato de lista, lo que facilita la legibilidad y estructura del contenido en las páginas web. Hay varios tipos de listas en HTML, y cada una se usa para diferentes propósitos:

**1. `<ul>` - Lista No Ordenada:

Descripción:** Utilizada para listas cuyos elementos no requieren un orden específico.

Ejemplo:

`<ul>
  <li>Manzana</li>
  <li>Plátano</li>
  <li>Naranja</li>
</ul>`

**2. `<ol>` - Lista Ordenada:

Descripción:** Utilizada para listas cuyos elementos necesitan ser presentados en un orden secuencial.

**Atributos principales:

`type`**: Establece el tipo de numeración (por ejemplo, números, letras).

**`start`**: Define el número inicial de la lista.

**`reversed`**: Indica que la lista debe mostrarse en orden inverso.

Ejemplo:

`<ol start="3" type="A">
  <li>Primer paso</li>
  <li>Segundo paso</li>
  <li>Tercer paso</li>
</ol>`

**3. `<dl>` - Lista de Definición:

Descripción:** Utilizada para contener listas de términos y sus correspondientes definiciones.

**Ejemplo:**
``

****`<dl>
  <dt>Café</dt>
  <dd>Bebida hecha de granos de café molidos.</dd>
  <dt>Té</dt>
  <dd>Bebida hecha infundiendo hojas de té en agua caliente.</dd>
</dl>`

**4. `<menu>` - Lista de Menú:

Descripción:** Utilizada para listas de comandos o opciones, similar en uso a **`<ul>`** pero destinada para herramientas y menús de usuario.

**Ejemplo:** (Principalmente utilizado en aplicaciones web para crear menús interactivos)

`<menu type="toolbar">
  <li><button>Inicio</button></li>
  <li><button>Acerca de</button></li>
  <li><button>Contacto</button></li>
</menu>`

Podemos meter una lista dentro de otra lista sin problemas sin importar el tipo de cada una.

## Tablas

Las tablas en HTML se utilizan para organizar y presentar datos en forma de grillas, facilitando la comprensión y la visualización de la información. Para crear tablas en HTML, se emplean varias etiquetas específicas que permiten definir la estructura y el contenido de la tabla.

La estructuración adecuada de una tabla HTML no solo mejora la legibilidad del contenido, sino que también facilita la accesibilidad para los usuarios que dependen de tecnologías de asistencia, como los lectores de pantalla.

**1. `<table>`

Descripción:** Define una tabla. Es el contenedor para todos los demás elementos relacionados con la tabla.

**Ejemplo:**

`<table>
  <!-- Contenido de la tabla aquí -->
</table>`

**2. `<tr>` Fila de tab

``Descripción:** Define una fila en la tabla.

**Ejemplo:**

`<tr>
  <!-- Celdas de la fila aquí -->
</tr>`

**3. `<th>` Titulo de columna o Fila

Descripción:** Define una celda de encabezado en la tabla, generalmente utilizada para los títulos de las columnas o filas.

**Atributos principales:

`scope`**: Puede ser **`col`** para columnas o **`row`** para filas, indicando el alcance del encabezado.

**Ejemplo:**

`<th scope="col">Nombre</th>`

**4. `<td>` Celda

``Descripción:** Define una celda estándar dentro de la tabla que contiene datos.

**Ejemplo:**

`<td>John Doe</td>`

**5. `<caption>`

Descripción:** Proporciona un título o una explicación para la tabla, que generalmente se muestra en la parte superior de la tabla.

**Ejemplo:**

`<caption>Tabla de Usuarios</caption>`

**6. `<thead>`

Descripción:** Define un grupo de filas que describen la cabecera de la tabla.

**Ejemplo:**

`<thead>
  <tr>
    <th>Nombre</th>
    <th>Edad</th>
  </tr>
</thead>`

**7. `<tbody>`

Descripción:** Define el cuerpo principal de la tabla, que contiene la mayoría de los datos.

**Ejemplo:**

`<tbody>
  <tr>
    <td>John Doe</td>
    <td>30</td>
  </tr>
</tbody>`

**8. `<tfoot>`

Descripción:** Define un grupo de filas que describen el pie de la tabla, utilizado comúnmente para sumatorias o conclusiones de los datos presentados.

**Ejemplo:**

`<tfoot>
  <tr>
    <td>Total</td>
    <td>100</td>
  </tr>
</tfoot>`

### Ejemplo completo:

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tabla de Aficionados al Anime</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        caption {
            font-size: 1.5em;
            margin: 10px;
        }
    </style>
</head>
<body>
    <table>
        <caption>Aficionados al Anime</caption>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Anime Favorito</th>
                <th>Cantidad de Animes Visto</th>
                <th>Personaje Favorito</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Mario</td>
                <td>One Piece</td>
                <td>150</td>
                <td>Luffy</td>
            </tr>
            <tr>
                <td>Laura</td>
                <td>Attack on Titan</td>
                <td>75</td>
                <td>Mikasa</td>
            </tr>
            <tr>
                <td>Carlos</td>
                <td>Naruto</td>
                <td>220</td>
                <td>Naruto Uzumaki</td>
            </tr>
            <tr>
                <td>Sofía</td>
                <td>My Hero Academia</td>
                <td>60</td>
                <td>Deku</td>
            </tr>
        </tbody>
    </table>
</body>
</html>

```

**Detalles del ejemplo:

`<table>`**: Es el contenedor principal de la tabla.

**`<caption>`**: Proporciona un título para la tabla, "Aficionados al Anime".

**`<thead>`**: Define la cabecera de la tabla con los títulos de las columnas: Nombre, Anime Favorito, Cantidad de Animes Visto, y Personaje Favorito.

**`<tbody>`**: Contiene las filas de datos con información sobre diferentes personas y sus preferencias de anime.

**Estilos CSS**: Se utilizan para dar estilo a la tabla, incluyendo colores, bordes y alineación.

## Agrupadores

### Contenedor `<div>`

La etiqueta **`<div>`** en HTML es uno de los elementos más fundamentales y versátiles para el diseño web. Se usa para definir una división o una sección en un documento HTML. 
**Descripción

Elemento de bloque**: **`<div>`** es un elemento de bloque por defecto, lo que significa que ocupa todo el ancho disponible si no se establecen restricciones de estilo, y siempre comienza en una nueva línea.

**Contenedor genérico**: No tiene un significado semántico específico. Es útil para agrupar bloques de contenido con el propósito de aplicar estilos CSS o realizar manipulaciones específicas con JavaScript.

**Atributos principales

class**: Permite asignar una o varias clases al elemento, lo que facilita la aplicación de estilos y la selección con JavaScript.

**id**: Proporciona un identificador único al elemento, útil para estilos específicos y manipulaciones en el DOM.

**style**: Permite aplicar estilos CSS directamente en el elemento, aunque se recomienda usar hojas de estilo para mantener el código más limpio y manejable.

**data-**: Permite incorporar datos personalizados que no interfieren con otros atributos globales del HTML, accesibles vía JavaScript.

**Uso común

Organización del layout**: **`<div>`** es ampliamente utilizado para crear layouts en la página, funcionando como contenedores para otros elementos.

**Aplicación de estilos**: Al ser un contenedor genérico, se utiliza para agrupar elementos para los cuales se quieren aplicar estilos comunes. Por ejemplo, se puede usar un **`<div>`** para crear una tarjeta de usuario, con una imagen, nombre, y descripción, todos estilizados de manera coherente.

**Interacción con JavaScript**: Los **`<div>`** son frecuentemente usados como objetivos para manipulaciones del DOM con JavaScript, como mostrar/ocultar secciones de contenido, actualizar información dinámicamente, etc.

```html
<div id="contenedor-principal" class="clase1 clase2">
  <div class="encabezado">Encabezado</div>
  <div class="contenido">Contenido principal</div>
  <div class="pie">Pie de página</div>
</div>

```

Este ejemplo muestra cómo se pueden anidar **`<div>`** para estructurar diferentes partes de un segmento de la página, aplicando clases que pueden definir el layout y el estilo visual a través de CSS

**Consideraciones**

Aunque **`<div>`** es muy útil debido a su versatilidad, es importante considerar la semántica del contenido. HTML5 introdujo varios elementos de sección como **`<article>`**, **`<section>`**, **`<nav>`**, **`<header>`**, **`<footer>`**, etc., que proporcionan un mayor significado semántico y pueden mejorar la accesibilidad y la estructura del contenido web. Se recomienda usar estos elementos cuando sea apropiado en lugar de **`<div>`**, reservando **`<div>`** para cuando no haya otro elemento más semántico que se ajuste a la necesidad.

La unica diferencia entre un div y un span es que div es un agrupador en bloque y span es un agrupador en linea.

### Etiqueta `<span>`

La etiqueta **`<span>`** en HTML es un elemento en línea muy utilizado para marcar una parte del texto o un grupo de elementos en línea dentro de un documento. Al igual que **`<div>`**, **`<span>`** es un contenedor genérico que no tiene un significado semántico específico.

**Descripción

Elemento en línea**: A diferencia de **`<div>`**, **`<span>`** es un elemento en línea por defecto. Esto significa que no provoca un salto de línea y ocupa solo el espacio necesario para su contenido.

**Contenedor genérico**: Sirve para aplicar estilo o realizar una manipulación específica con JavaScript a una parte del contenido sin afectar el flujo del documento.

**Atributos principales

class**: Permite asignar una o varias clases al elemento, lo que facilita la aplicación de estilos y la selección con JavaScript.

**id**: Ofrece un identificador único al elemento, útil para estilos específicos y manipulaciones en el DOM.

**style**: Permite aplicar estilos CSS directamente en el elemento. Como con **`<div>`**, usar hojas de estilo externas es más recomendable para mantener el código organizado.

**data-**: Al igual que con otros elementos HTML, **`<span>`** puede tener atributos de datos personalizados que no interfieren con la funcionalidad del HTML estándar, accesibles a través de JavaScript.

**Uso común

Aplicación de estilos a fragmentos de texto**: **`<span>`** es ideal para cambiar la apariencia de una porción de texto dentro de un párrafo u otro elemento, sin cambiar el significado del texto circundante. Por ejemplo, se puede cambiar el color, el tamaño de la fuente, o añadir efectos visuales a palabras o frases específicas.

**Manipulación de contenido**: Es común utilizar **`<span>`** para envolver palabras o frases a las que se les aplicarán eventos o efectos con JavaScript.

```html
<p>Este es un ejemplo de <span class="destacado">texto destacado</span> dentro de un párrafo.</p>
```

En este ejemplo, la clase **`destacado`** podría estar definida en una hoja de estilo CSS para cambiar el color, la fuente o añadir otros estilos visuales que ayuden a resaltar el texto dentro del **`<span>`**.

**Consideraciones**

Es importante no abusar de la etiqueta **`<span>`**. Aunque es tentador usarlo para micro-ajustes de estilo, su uso excesivo puede llevar a un HTML desordenado y más difícil de mantener. Idealmente, deberías usar **`<span>`** cuando realmente necesites controlar o destacar partes específicas del contenido sin introducir cambios semánticos en el documento.

En resumen, **`<span>`** es una herramienta flexible para el control de estilo y comportamiento de segmentos de texto o contenido en línea, siendo indispensable en muchos proyectos de desarrollo web.

## Inscrustación de webs, IFrame

La etiqueta **`<iframe>`** en HTML se utiliza para incrustar otra página HTML dentro de una página actual. Es una herramienta poderosa para incorporar documentos externos como formularios, vídeos o mapas interactivos, directamente en el contenido de un sitio web.

### **Descripción**

**Ventana incrustada**: Un **`<iframe>`** actúa como una ventana dentro de la página que muestra otro documento HTML. Este documento puede ser de la misma web o de un dominio externo, dependiendo de las políticas de seguridad (CORS) del servidor externo.

**Independiente**: El documento dentro de un **`<iframe>`** es completamente independiente del documento principal. Esto significa que tiene su propio DOM y su propio contexto de JavaScript.

### **Atributos principales**

- **src**: URL del documento que se va a incrustar dentro del **`<iframe>`**. Es el atributo más importante.

**width** y **height**: Establecen el ancho y la altura del **`<iframe>`**. Pueden ser valores en píxeles o en porcentajes.

**name**: Nombre del **`<iframe>`**, utilizado principalmente para la referencia en formularios o como destino de un hipervínculo.

**sandbox**: Proporciona restricciones adicionales al contenido dentro del **`<iframe>`**. Puede ser usado para aumentar la seguridad, limitando lo que puede hacer el documento incrustado.

**allowfullscreen**: Un booleano que si se establece permite que el contenido incrustado se muestre en pantalla completa.

**srcdoc**: Permite especificar el contenido HTML directamente dentro del atributo, en lugar de cargarlo desde una URL.

### **Uso común**

- **Incrustar videos**: Como los vídeos de YouTube o Vimeo, usando un **`<iframe>`** para colocarlos directamente en el contenido de una página.

**Incrustar mapas**: Como Google Maps, permitiendo a los usuarios interactuar con el mapa sin salir de la página.

**Formularios de terceros**: Por ejemplo, formularios de suscripción, encuestas o herramientas interactivas proporcionadas por servicios externos.

```html
<iframe src="https://www.example.com" width="300" height="200">
  <p>Tu navegador no soporta iframes.</p>
</iframe>

```

En este ejemplo, se incrusta el contenido de "[https://www.example.com](https://www.example.com/)" en un **`<iframe>`**. Si el navegador del usuario no soporta **`<iframe>`**, se mostrará el texto dentro del elemento, que en este caso es un mensaje indicativo.

### **Consideraciones de seguridad**

El uso de **`<iframe>`** puede conllevar riesgos de seguridad, como ataques de clickjacking, donde un usuario puede ser engañado para hacer clic en algo diferente de lo que percibe. El atributo **`sandbox`** puede ser utilizado para restringir las capacidades del contenido incrustado, mitigando algunos de estos riesgos.

En resumen, **`<iframe>`** es una herramienta útil y potente para la integración de contenido, pero debe ser utilizada con precaución, especialmente cuando se incrusta contenido de fuentes no confiables.

## Formularios

### General

La etiqueta **`<form>`** en HTML se utiliza para crear un formulario en una página web. Es esencial para recopilar datos de los usuarios, como información de contacto, preferencias, o datos de inicio de sesión. Los formularios son uno de los principales métodos de interacción entre los usuarios y el servidor web.

### **Descripción**

- **Recopilación de datos**: Los formularios permiten a los usuarios introducir datos que luego pueden ser enviados a un servidor para su procesamiento.
- **Interactividad**: Incrementan la interactividad de un sitio web al permitir la entrada de usuario, que puede afectar el contenido o comportamiento del sitio.

### **Atributos principales**

- **action**: La URL a la que se enviarán los datos del formulario cuando se realice el envío. Define el destino del formulario.
- **method**: El método HTTP para enviar el formulario. Los valores comunes son "GET" (datos enviados en la URL) y "POST" (datos enviados en el cuerpo de la solicitud).
- **enctype**: Especifica cómo deben codificarse los datos del formulario al enviarlos. Importante cuando el formulario incluye elementos de tipo **`file`**.
- **autocomplete**: Permite a los navegadores guardar y autocompletar el valor del formulario basado en valores anteriores ingresados por el usuario.
- **novalidate**: Este atributo booleano indica que el formulario no debe ser validado cuando se envía.

### **Elementos de formularios comunes**

- **`<input>`**: Crea campos para entrada de texto, checkbox, radio buttons, etc.
- **`<textarea>`**: Proporciona un área de texto de varias líneas.
- **`<button>`** y **`<input type="submit">`**: Botones para enviar el formulario.
- **`<select>`** y **`<option>`**: Menús desplegables.
- **`<label>`**: Proporciona etiquetas para los elementos del formulario, mejora la accesibilidad.
- **`<fieldset>`** y **`<legend>`**: Agrupa elementos relacionados dentro del formulario y define un título para el grupo.

### **Atributos comunes de `<input>`**

- **placeholder**: Proporciona un texto breve que describe el valor esperado de un campo de entrada. Este texto se muestra en el campo hasta que el usuario comienza a escribir en él.
- **name**: El nombre del elemento de entrada, importante para identificar los datos en los datos del formulario enviado.
- **value**: El valor predeterminado del elemento de entrada.
- **required**: Un atributo booleano que indica si el campo es obligatorio para enviar el formulario.
- **pattern**: Define una expresión regular contra la cual el valor del campo de entrada será validado.
- **type**: Define el tipo de control de entrada que se crea. Algunos ejemplos incluyen:
    - **`text`**: Para entrada de texto genérico.
    - **`password`**: Para campos de contraseña que ocultan el texto ingresado.
    - **`email`**: Para direcciones de correo electrónico, con validación básica.
    - **`checkbox`**: Para casillas que se pueden marcar y desmarcar.
    - **`radio`**: Para botones de opción que permiten seleccionar una sola opción entre un conjunto.
    - **`file`**: Para permitir al usuario seleccionar un archivo.
    - **`submit`**: Para enviar el formulario.
    - **`reset`**: Para restablecer los valores del formulario a su estado inicial.
    - **`button`**: Para un botón que no tiene comportamiento predeterminado de envío o restablecimiento.
    - **`number`**: Especifica que el campo debe contener un valor numérico. Esto permite que los navegadores modernos proporcionen controles de entrada específicos para números, como pequeños botones para incrementar o disminuir el valor, y validación para asegurarse de que sólo se introduzcan números.
    
    ### **Ejemplo básico**
    
    ```html
    <form action="/submit-data" method="post">
      <label for="name">Nombre:</label>
      <input type="text" id="name" name="user_name">
      <label for="email">Email:</label>
      <input type="email" id="email" name="user_email">
      <button type="submit">Enviar</button>
    </form>
    
    ```
    
    En este ejemplo, se crea un formulario que incluye campos para que el usuario introduzca su nombre y dirección de correo electrónico. El formulario se enviará usando el método POST a la URL "/submit-data".
    
    ### **Uso avanzado**
    
    Los formularios pueden ser mejorados con JavaScript para realizar validaciones en el cliente antes de enviar los datos, mejorar la experiencia del usuario (por ejemplo, autocompletado de formularios), y manejar la respuesta del servidor sin necesidad de recargar la página (usando AJAX).
    
    ### **Consideraciones de seguridad**
    
    Al manejar formularios, es crucial implementar validaciones tanto en el cliente como en el servidor para protegerse contra inyecciones maliciosas y asegurar que los datos sean procesados adecuadamente. También es importante gestionar correctamente los datos sensibles, como las contraseñas, para evitar exposiciones y vulnerabilidades.
    
    En resumen, la etiqueta **`<form>`** es fundamental para interactuar con los usuarios y recopilar datos en aplicaciones web.
    

### `Area de texto para el usuario <TextArea>`

 Esta etiqueta se utiliza para permitir a los usuarios ingresar texto en múltiples líneas, a diferencia de **`<input type="text">`**, que está diseñado para texto de una sola línea. **`<textarea>`** es particularmente útil para campos de formulario donde se espera que los usuarios proporcionen una cantidad significativa de texto, como comentarios, descripciones, o cualquier otra información que requiera más espacio.

### **Ejemplo de uso de `<textarea>`:**

```html
htmlCopy code
<form action="/submit-opinion" method="post">
  <label for="userOpinion">Tu opinión:</label>
  <textarea id="userOpinion" name="opinion" rows="4" cols="50" placeholder="Escribe tu opinión aquí..."></textarea>

  <button type="submit">Enviar</button>
</form>

```

### **Atributos comunes de `<textarea>`:**

- **`id`**: Un identificador único utilizado para asociar el **`<textarea>`** con un **`<label>`** mediante el atributo **`for`**.
- **`name`**: El nombre del campo que se utiliza para enviar datos en un formulario.
- **`rows`** y **`cols`**: Estos atributos definen el tamaño del **`<textarea>`** en términos de filas y columnas, respectivamente.
- **`placeholder`**: Proporciona un texto de guía o indicación dentro del área de texto, el cual desaparece cuando el usuario comienza a escribir.
- **`maxlength`**: Limita el número máximo de caracteres que el usuario puede ingresar.
- **`required`**: Un atributo booleano que indica si el campo es obligatorio para enviar el formulario.

El uso de **`<textarea>`** es esencial en formularios donde se necesita más flexibilidad para la entrada de texto y se requiere que los usuarios proporcionen información más detallada o extensa.

### Despegables`<Select>`

La etiqueta **`<select>`** en HTML se utiliza para crear un menú desplegable que permite a los usuarios elegir una o más opciones de una lista. Es muy común en formularios donde necesitas ofrecer al usuario una lista de opciones predefinidas.

### **Estructura básica de `<select>`:**

```html

<label for="choice">Elige una opción:</label>
<select id="choice" name="choice">
  <option value="option1">Opción 1</option>
  <option value="option2">Opción 2</option>
  <option value="option3">Opción 3</option>
</select>

```

### **Atributos comunes de `<select>`:**

- **`id`**: Identificador único que se puede utilizar para asociar el **`<select>`** con un **`<label>`** mediante el atributo **`for`**.
- **`name`**: El nombre del elemento **`<select>`**, que se utiliza para identificar el campo en los datos del formulario enviado.
- **`multiple`**: Permite que se seleccionen múltiples opciones. Los usuarios pueden necesitar usar la tecla Ctrl (Cmd en macOS) para seleccionar más de una opción.
- **`size`**: Especifica cuántas opciones son visibles sin necesidad de desplazarse. Si **`multiple`** está activado, **`size`** puede controlar la altura del elemento **`<select>`** mostrando múltiples opciones al mismo tiempo.
- **`disabled`**: Deshabilita el control de selección, lo que impide que los usuarios interactúen con él.
- **`required`**: Hace que el campo sea obligatorio para enviar el formulario, lo que significa que el usuario debe seleccionar una opción antes de que el formulario pueda ser enviado.

### **Ejemplo de `<select>` con opción múltiple:**

Este ejemplo permite a los usuarios seleccionar varios ítems a la vez:

```html
<label for="colors">Elige tus colores favoritos:</label>
<select id="colors" name="colors" multiple size="4">
  <option value="red">Rojo</option>
  <option value="green">Verde</option>
  <option value="blue">Azul</option>
  <option value="yellow">Amarillo</option>
</select>

```

### **Uso de `<select>`:**

**`<select>`** es muy útil en formularios para encuestas, registros, o cualquier situación donde necesites ofrecer al usuario una lista de opciones limitadas. Además, contribuye a una mejor experiencia de usuario al evitar la entrada de datos incorrectos y facilitar la navegación y selección, especialmente en dispositivos móviles.

### Separar en grupo dento de los selects con `<optgroup>`

Esta etiqueta es útil para categorizar las opciones, haciendo que las listas desplegables sean más organizadas y fáciles de navegar.

### **Ejemplo de uso de `<optgroup>`:**

```html
<label for="car-brand">Elige una marca de coche:</label>
<select id="car-brand" name="carBrand">
  <optgroup label="Europeos">
    <option value="mercedes">Mercedes-Benz</option>
    <option value="bmw">BMW</option>
    <option value="audi">Audi</option>
  </optgroup>
  <optgroup label="Japoneses">
    <option value="toyota">Toyota</option>
    <option value="honda">Honda</option>
    <option value="nissan">Nissan</option>
  </optgroup>
</select>

```

### **Atributos principales de `<optgroup>`:**

- **`label`**: Este atributo es obligatorio y especifica la etiqueta del grupo de opciones. Se utiliza para dar un título al grupo de opciones dentro del menú desplegable.
- **`disabled`**: Este atributo opcional se puede usar para deshabilitar todo el grupo de opciones. Si se establece, todas las opciones dentro del grupo no estarán disponibles para la selección.

### **Uso de `<optgroup>`:**

El uso de **`<optgroup>`** es especialmente útil en situaciones donde las opciones en un **`<select>`** pueden ser claramente divididas en categorías lógicas, mejorando así la experiencia del usuario al permitirle encontrar rápidamente la opción que necesita dentro de grupos claramente definidos. Es común ver **`<optgroup>`** en formularios de registro, encuestas, y en cualquier interfaz donde se requiere seleccionar opciones desde un conjunto de datos extenso y categorizado.

### Conexion con backend `<action>`

El atributo **`action`** es crucial para determinar el comportamiento de un formulario al ser enviado.

### **Descripción del atributo `action` en un `<form>`:**

El atributo **`action`** especifica la URL del servidor (script del lado del servidor) que procesará los datos del formulario cuando este sea enviado. Define hacia dónde se envían los datos del formulario en la red.

### **Ejemplo de uso del atributo `action`:**

```html
<form action="https://example.com/submit-form" method="post">
  <label for="name">Nombre:</label>
  <input type="text" id="name" name="name">
  <button type="submit">Enviar</button>
</form>

```

En este ejemplo, cuando el formulario se envía, los datos del mismo se enviarán al servidor especificado en la URL **`https://example.com/submit-form`**. El método **`post`** indica que los datos deben enviarse como parte del cuerpo de la solicitud, no en la URL.

### **Atributos relacionados:**

- **`method`**: Este atributo define cómo se deben enviar los datos del formulario (por ejemplo, **`GET`** o **`POST`**). **`GET`** añade los datos a la URL en forma de parámetros de consulta, mientras que **`POST`** los envía en el cuerpo de la solicitud, lo cual es más seguro para datos sensibles.
- **`enctype`**: Cuando se utilizan métodos como **`POST`**, este atributo especifica cómo debe codificarse el formulario al enviarlo al servidor. Es útil, por ejemplo, cuando se suben archivos.

El correcto uso del atributo **`action`** es fundamental para asegurar que los datos del formulario lleguen al destino correcto para su procesamiento posterior, jugando un papel clave en la interacción del usuario con aplicaciones web.

### Botones `<button>`

La etiqueta **`<button>`** en HTML se utiliza para crear un botón en una página web. Este botón puede desempeñar diferentes funciones dependiendo de cómo se configure y dónde se coloque. Es uno de los elementos más comunes en formularios web y puede usarse para controlar interacciones más complejas en una interfaz de usuario.

### **Descripción de la etiqueta `<button>`:**

- **Propósito**: Los botones son usados para que el usuario pueda realizar acciones como enviar formularios, controlar medios de comunicación, disparar eventos de JavaScript, y más.
- **Contenido**: A diferencia de otros elementos de entrada, el **`<button>`** puede contener contenido HTML, incluyendo texto o imágenes. Esto permite una gran flexibilidad en su diseño.

### **Atributos principales de `<button>`:**

- **`type`**: Este atributo define el tipo de comportamiento del botón. Los valores posibles son:
    - **`submit`**: El botón envía un formulario a la dirección especificada por el atributo **`action`** del formulario.
    - **`reset`**: El botón reinicia todos los campos del formulario a sus valores por defecto.
    - **`button`**: El botón no tiene comportamiento predeterminado. Se usa cuando se desea que el botón realice una acción definida por JavaScript.
- **`disabled`**: Este atributo booleano puede ser usado para deshabilitar el botón. Un botón deshabilitado no es interactivo y no responde a eventos de usuario.
- **`form`**: Este atributo especifica el formulario al que el botón está asociado, lo cual es útil si el botón no se encuentra dentro del **`<form>`**.

### **Ejemplo de uso de `<button>`:**

```html
<!-- Botón para enviar un formulario -->
<form id="myForm" action="/submit">
  <input type="text" name="username" placeholder="Nombre de usuario">
  <button type="submit">Enviar</button>
</form>

<!-- Botón que ejecuta un script de JavaScript -->
<button type="button" onclick="alert('Hola mundo!')">Haz clic aquí</button>

<!-- Botón para resetear un formulario -->
<button type="reset">Restablecer</button>

```

### **Uso con JavaScript:**

Los botones a menudo se utilizan con JavaScript para manejar eventos, como clics, que ejecutan funciones definidas que modifican el comportamiento de la página o los datos mostrados. La capacidad de contener contenido HTML y la fácil integración con scripts hacen del **`<button>`** un elemento extremadamente versátil en diseño web.

### Input de tipo fecha `type=”date”`

### **Etiqueta `<input type="date">`**

El tipo **`date`** del elemento **`<input>`** permite a los usuarios seleccionar una fecha a partir de un selector de fecha incorporado. Es útil para campos de formulario donde se requiere que los usuarios introduzcan fechas, como cumpleaños, fechas de reserva, o cualquier otro evento que dependa de una fecha específica.

### **Características principales:**

- **Selector de fecha**: Cuando un usuario interactúa con un **`<input type="date">`**, normalmente se muestra un control de calendario desde el cual se puede seleccionar una fecha.
- **Formato de fecha**: La fecha seleccionada se muestra en el campo de entrada en un formato que puede variar según la configuración regional del navegador del usuario, aunque internamente se maneja en formato **`YYYY-MM-DD`**.
- **Compatibilidad**: La mayoría de los navegadores modernos soportan el tipo **`date`**, pero en navegadores que no lo soportan, el input se comportará como un tipo **`text`**, permitiendo al usuario introducir una fecha manualmente.

### **Atributos relevantes:**

- **`min` y `max`**: Establecen la fecha mínima y máxima que los usuarios pueden seleccionar.
- **`value`**: Define la fecha inicialmente establecida en el control.
- **`step`**: Permite definir el intervalo de días que el usuario puede seleccionar entre fechas adyacentes en el selector.

### **Ejemplo de uso de `<input type="date">`:**

```html
<form>
  <label for="start-date">Fecha de inicio:</label>
  <input type="date" id="start-date" name="start-date" value="2024-01-01" min="2023-01-01" max="2025-12-31">
  <button type="submit">Enviar</button>
</form>

```

En este ejemplo, se crea un campo de entrada de tipo **`date`** que permite a los usuarios seleccionar una fecha de inicio. La fecha está restringida entre el 1 de enero de 2023 y el 31 de diciembre de 2025, y la fecha predeterminada establecida es el 1 de enero de 2024.

El uso de **`<input type="date">`** simplifica considerablemente la tarea de recoger fechas en formularios web, asegurando que las fechas sean ingresadas en un formato uniforme y reduciendo la posibilidad de errores de entrada por parte del usuario.

### Input etiqueta `<small>`

La etiqueta **`<small>`** en HTML se utiliza para indicar que el texto encerrado debe ser de menor tamaño en comparación con el texto normal. Se emplea generalmente para texto de menor importancia, notas a pie de página, descargos de responsabilidad, o cualquier contenido que se desee desemphasize visualmente.

### **Descripción de la etiqueta `<small>`:**

- **Propósito**: El propósito principal de la etiqueta **`<small>`** es reducir el tamaño visual del texto para indicar que es menos importante o menos prominente en el contexto general del documento.
- **Estilo por defecto**: Los navegadores suelen renderizar el texto dentro de un **`<small>`** en un tamaño de fuente más pequeño. Sin embargo, este comportamiento puede ser fácilmente alterado con CSS si se desea un control más detallado del estilo.

### **Ejemplo de uso de `<small>`:**

```html
<p>Este es un texto normal y <small>este texto es considerado menos importante</small>.</p>

```

### **Buenas prácticas:**

- **No abusar del uso**: Aunque es útil para ajustar la importancia visual del texto, utilizarlo en exceso puede llevar a una página desorganizada o visualmente cansada. Usarlo con moderación puede ayudar a mantener la jerarquía visual y la legibilidad del contenido.

**Accesibilidad**: Aunque el **`<small>`** cambia el tamaño del texto, asegúrate de que el tamaño no sea tan pequeño que resulte difícil de leer para los usuarios, especialmente aquellos con problemas de visión. Asegurar la accesibilidad del contenido web es crucial.

### **CSS Alternativo:**

Aunque **`<small>`** reduce automáticamente el tamaño del texto, también puedes controlar esto manualmente usando CSS, proporcionando un nivel de control más granular sobre cómo se visualiza el contenido:

```css
cssCopy code
small {
  font-size: 0.8em; /* Ajustar el tamaño relativo al texto circundante */
}

```

Este ejemplo de CSS asegura que el texto dentro de **`<small>`** sea siempre un 80% del tamaño del texto normal, proporcionando consistencia independientemente del contexto en que se utilice.

En resumen, **`<small>`** es útil para el texto que necesita ser visualmente de-emphasized en un documento, pero debe ser utilizado de manera considerada para mantener la accesibilidad y la claridad visual de la página web.

### Etiqueta `<required>`

Este atributo se puede aplicar a varios tipos de elementos de entrada de formulario, como **`<input>`**, **`<select>`**, y **`<textarea>`** para asegurar que el usuario no deje estos campos vacíos antes de enviar el formulario.

### **Descripción del atributo `required`:**

- **Propósito**: El atributo **`required`** se utiliza para indicar que un campo es obligatorio dentro de un formulario, lo que significa que el usuario debe llenar o seleccionar un valor antes de que el formulario pueda ser enviado exitosamente.

**Compatibilidad**: Es soportado por todos los navegadores modernos, incluyendo Chrome, Firefox, Safari, y Edge.

### **Ejemplo de uso de `required`:**

1. **Input Texto Requerido:**

```html
<form>
  <label for="name">Nombre:</label>
  <input type="text" id="name" name="name" required>
  <button type="submit">Enviar</button>
</form>

```

En este ejemplo, el campo de texto para el nombre no puede dejarse vacío gracias al atributo **`required`**.

1. **Seleccionar una opción requerida:**

```html
<form>
  <label for="gender">Género:</label>
  <select id="gender" name="gender" required>
    <option value="">Seleccione una opción</option>
    <option value="female">Femenino</option>
    <option value="male">Masculino</option>
  </select>
  <button type="submit">Enviar</button>
</form>

```

Aquí, el usuario debe seleccionar una opción de género antes de poder enviar el formulario.

1. **Área de texto requerida:**

```html
<form>
  <label for="feedback">Comentarios:</label>
  <textarea id="feedback" name="feedback" required></textarea>
  <button type="submit">Enviar</button>
</form>

```

Este formulario no se enviará a menos que el usuario escriba algo en el área de comentarios.

### **Buenas prácticas:**

- **No sobrecargar con `required`**: Aunque es tentador hacer muchos campos obligatorios, esto puede ser contraproducente, especialmente si se pide demasiada información innecesaria. Usa **`required`** solo en aquellos campos que son realmente esenciales para procesar el formulario.
- **Mensajes de error claros**: Los navegadores modernos mostrarán automáticamente un mensaje de error si el usuario intenta enviar el formulario sin completar los campos requeridos. Asegúrate de que estos mensajes sean claros y útiles, o personalízalos con JavaScript si es necesario para mejorar la experiencia del usuario.

Utilizar el atributo **`required`** asegura que la información esencial no sea omitida por los usuarios, lo que puede ayudar a mejorar la calidad de los datos recibidos a través de formularios web.

## SVG ( Iconos e Imágenes )

SVG es un tipo de imagen que realiza el navegador, de esta forma se lobra que nunca se pixela. Existen paginas que realizan codigo SVG
La etiqueta **`<svg>`** en HTML es utilizada para definir gráficos vectoriales directamente en el código HTML. SVG corresponde a "Scalable Vector Graphics", que significa Gráficos Vectoriales Escalables. Esta técnica es muy útil para dibujar gráficos que pueden ser escalados sin pérdida de calidad, lo que los hace ideales para logotipos, ilustraciones complejas y gráficos interactivos que necesitan mantener su claridad a diferentes tamaños de pantalla.

## Extensiones

Live server —> Permite ver la pagina web en tiempo real de codificación.

## Complementos

## Pagina Miro, sirve para maquetar/bocetar la web

![Untitled](Apuntes%20personales%20de%20programacio%CC%81n%2034801733d96a4e289f62f94f3ab9be44/Untitled%201.png)

## CSS

## Introduccion

CSS, o **Cascading Style Sheets** (Hojas de Estilo en Cascada), es un lenguaje de hojas de estilo utilizado para describir la presentación de un documento escrito en HTML o XML.
CSS describe cómo deben ser renderizados los elementos estructurados en la pantalla, en papel, en el habla, o en otros medios.

El propósito principal de CSS es separar el contenido del diseño de las páginas web, permitiendo una mayor flexibilidad y control en la especificación de características visuales y de diseño. Por ejemplo, puedes controlar el color de texto, la fuente utilizada, el espaciado entre párrafos, cómo se dividen en columnas los elementos, los fondos de páginas, diseños de diferentes dispositivos y tamaños de pantalla, y mucho más.

Idealmente vamos a aplicar <link rel=”stylesheet” href=”style.css”. Pero podemos aplicar estilos en un HTML usando la etiqueta `<style>codigo </style>` ó sino tambien podemos aplicar directamente sobre la linea, ejemplo 

```html
<h1 style="color:red; background-color: aqua;">Hola mundo</h1>
```

## Sintatix basica

### Estructura de una regla CSS

Cada regla CSS consiste en un selector y un bloque de declaración, que contiene una o más declaraciones separadas por punto y coma. Cada declaración incluye una propiedad y un valor, separados por dos puntos:

```html
selector {
    propiedad: valor;
    propiedad2: valor2;
}
```

```html
p {
	color: red;
	font-size: 16px;
}
```

Con `*` podemos seleccionar a TODOS los elementos para cambiarle el estilo en simultaneo, podría usarse para cambiarle la fuente de letra a toda la web.

## Acortar codigo

Podemos abreviar codigo, supongamos que tenemos todas estas caracteristicas para el body:

```css
  body
        {                
            background-image: url(assets/img/fondoKameHouse.png);
            background-color: blue;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
        }      
```

Seria lo mismo que escribir:

```css
		body
		{                
			background: blue url(assets/img/fondoKameHouse.png) fixed center no-repeat;            
	  }        
```

## Selectores

Los selectores en CSS son patrones utilizados para seleccionar los elementos del documento HTML a los que se aplicarán los estilos. Los selectores son una parte fundamental de CSS, ya que permiten a los desarrolladores dirigir estilos específicos a elementos específicos dentro de la estructura de un documento HTML. Aquí te explico los tipos más comunes de selectores en CSS:

**1. Selectores simples

Selector de tipo**: Selecciona todos los elementos de un tipo específico. Por ejemplo, **`p`** selecciona todos los elementos **`<p>`**.

`p {
  color: blue;
}`

También podemos cambiar el estilo de dos tipos de elementos al mismo tiempo, ejemplo:

`h1,h2{
	color: blue;
	color-background: red;
	}`

**Selector de clase**

Selecciona todos los elementos que tienen una clase específica. Se denota con un punto seguido del nombre de la clase. Por ejemplo, **`.menu`** selecciona todos los elementos con la clase **`menu`**. ESTE ES EL SELECTOR MAS IMPORTANTE O MAS USADO.

`.seccion1
        {
            color:green;
            background-color: blue;
        }

        .seccion2
        {
            color:violet;
            background-color: yellow;
        }

<h1 class="seccion1">Titulo principal</h1>
    <h2 class="seccion1">Subtitulo principal</h2>
    <p class="seccion1"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi dolorum, odit recusandae reprehenderit alias, molestiae vero autem ipsum culpa suscipit ab, ipsam et corporis doloribus.</p>

    
    <br>

    <h1 class="seccion2">Otro titulo principal</h1>
    <h2 class="seccion2">Otro titulo principal</h2>
    <p class="seccion2"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi dolorum, odit recusandae reprehenderit alias, molestiae vero autem ipsum culpa suscipit ab, ipsam et corporis doloribus.</p>`

**Selector de ID**: 
Selecciona un elemento basado en su atributo ID. Se denota con un signo de hash seguido del ID. Por ejemplo, **`#header`** selecciona el elemento con el ID **`header`**.

<h1 id=”titulo”>Este es el titulo </h1>

`#titulo {
  color:green;
}`

**Selector universal**: Selecciona todos los elementos en el documento HTML. Se denota con el símbolo *.
****
`* {
  margin: 0;
  padding: 0;
}`

**2. Selectores de atributo**

Seleccionan elementos basados en un atributo o valor de atributo. Por ejemplo, **`[type="text"]`** selecciona todos los elementos con un atributo **`type`** que tiene el valor "text".

`input[type="text"] {
  background-color: #fff;
}`

**3. Selectores de pseudo-clase**

Se utilizan para definir un estado especial de un elemento. Por ejemplo, **`:hover`** aplica un estilo cuando el usuario pasa el ratón sobre el elemento.

`a:hover {
  color: red;
}`

**4. Selectores de pseudo-elemento**

Permiten estilizar ciertas partes de un documento. Por ejemplo, **`::first-line`** selecciona la primera línea de un párrafo.

`p::first-line {
  font-weight: bold;
}`

5**. Selectores combinados

Supongamos que queremos que todos los h1 tengan fondo de color negro y que en particular solo el tercer h1 tenga letras de color rojo, entonces tendriamos que usar selector por elemento y selector por clase al mismo tiempo, ejemplo:**

  `h1{
        background-color: black;
        color: white;
       }
    
       h1.seccion3
       {
        color:red;
       }

    <h1 class="seccion1">Titulo principal</h1>
    <h2 class="seccion1">Subtitulo principal</h2>
    <p class="seccion1"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi dolorum, odit recusandae reprehenderit alias, molestiae vero autem ipsum culpa suscipit ab, ipsam et corporis doloribus.</p>

    
    <br>

    <h1 class="seccion2">Otro titulo principal</h1>
    <h2 class="seccion2">Otro titulo principal</h2>
    <p class="seccion2"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi dolorum, odit recusandae reprehenderit alias, molestiae vero autem ipsum culpa suscipit ab, ipsam et corporis doloribus.</p>

    <br>

    <h1 class="seccion3">Otro titulo principal</h1>
    <h2 class="seccion3">Otro titulo principal</h2>
    <p class="seccion3"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi dolorum, odit recusandae reprehenderit alias, molestiae vero autem ipsum culpa suscipit ab, ipsam et corporis doloribus.</p>`

Tambíen podriamos combinarlo con selector por ID.

Estos selectores combinan múltiples selectores de diferentes maneras para lograr una selección más específica.

**Selector descendente**:

 Selecciona todos los elementos que son descendientes de un elemento específico. Por ejemplo, **`div p`** selecciona todos los **`<p>`** dentro de **`<div>`**.

`div p {
  color: green;
}`

**Selector hijo directo (`>`)**: 

Selecciona todos los elementos que son hijos directos de un elemento específico. Por ejemplo, **`ul > li`** selecciona todos los **`<li>`** que son hijos directos de **`<ul>`**.

`ul > li {
  list-style-type: none;
}`

**Selector adyacente (`+`)**: 

Selecciona el elemento que sigue inmediatamente a otro elemento. Por ejemplo, **`h1 + p`** selecciona el primer **`<p>`** inmediatamente después de cualquier **`<h1>`**.

`h1 + p {
  margin-top: 0;
}`

**Selector de hermanos generales (`~`)**:

 Selecciona todos los elementos que son hermanos de un elemento. Por ejemplo, **`h1 ~ p`** seleccionará todos los **`<p>`** que son hermanos de **`<h1>`**.

`h1 ~ p {
  color: red;
}`

## Colores

## **1. Nombres de colores**

CSS soporta el uso de nombres de colores predefinidos. Hay más de 140 nombres de colores disponibles.

## **2. Valores HEX**

El color también puede ser especificado usando valores hexadecimales, que representan los valores RGB (rojo, verde, azul). Un valor HEX comienza con **`#`** seguido de 6 dígitos (que combinan tres pares de valores hexadecimales, cada par para rojo, verde y azul). También hay versiones cortas de 3 dígitos cuando los pares son iguales.

## **3. Valores RGB y RGBA**

RGB representa un sistema de colores basado en los valores de rojo, verde y azul. RGBA añade un cuarto valor, alfa, que representa la transparencia del color. Por ejemplo:

```css
div {
  background-color: rgb(255, 0, 0); /* Rojo */
  color: rgba(255, 0, 0, 0.5); /* Rojo con 50% de transparencia */
}

```

## **4. Valores HSL y HSLA**

HSL representa el modelo de color en términos de tono (hue), saturación (saturation) y luminosidad (lightness). HSLA añade el alfa para la transparencia. Por ejemplo:

```css
div {
  background-color: hsl(120, 100%, 50%); /* Verde */
  color: hsla(120, 100%, 50%, 0.3); /* Verde con 30% de transparencia */
}

```

- **Hue**: El matiz se mide en grados en el círculo de color, de 0 a 360.
- **Saturation**: La saturación es un porcentaje que representa la intensidad del color.
- **Lightness**: La luminosidad también es un porcentaje; 0% sería negro, 100% sería blanco, y 50% es el color puro.

## **5. Color Keyword `currentColor`**

El keyword **`currentColor`** es especial en CSS y se refiere al valor actual del color del texto del elemento. Puede ser útil para bordes o sombras:

```css
button {
  color: blue;
  border: 1px solid currentColor; /* El borde será azul */
}

```

Estas diferentes maneras de especificar colores te permiten tener un control muy fino sobre los esquemas de color en tus diseños web, facilitando la coherencia visual y la adaptación a diversos requisitos de diseño.

## Background

En CSS, la propiedad **`background`** se utiliza para definir el fondo de un elemento HTML. Esta propiedad es bastante versátil, ya que puede incluir varios valores para configurar el color, la imagen, la posición, y otros aspectos del fondo de un elemento. Aquí te explico cómo puedes utilizar la propiedad **`background`**:

## **1. Background Color**

Se puede especificar un color de fondo utilizando la propiedad **`background-color`**. El color puede ser definido usando nombres de colores, valores HEX, RGB, RGBA, HSL o HSLA.

```css

div {
  background-color: #f8f8f8; /* Gris claro */
}

```

Efecto de fondo

```css
   body{
            background: linear-gradient(90deg, #fff,blue);
        }  
```

Podemos agregar varios colores

```css
body{
            background: linear-gradient(90deg, #fff,red 20%, violet 60%,blue);
        }     
```

## **2. Background Image**

Puedes colocar una imagen como fondo de un elemento con **`background-image`**.

```css
body
        {                
            background-image: url(assets/img/fondoKameHouse.png);
        }        
```

## **3. Background Position**

La propiedad **`background-position`** se utiliza para especificar la posición inicial de una imagen de fondo.

```css
body {
  background-image: url('imagen.jpg');
  background-position: top left; /* Posiciona la imagen en la esquina superior izquierda */
}

```

## **4. Background Size**

**`background-size`** define el tamaño de la imagen de fondo. Puedes establecerlo como **`cover`** para que la imagen cubra completamente el área del fondo, **`contain`** para asegurar que la imagen encaje dentro del área sin cortes, o puedes especificar un tamaño en medidas (px, %, etc.).

```css
div {
  background-image: url('imagen.jpg');
  background-size: cover;
}

```

## **5. Background Repeat**

La propiedad **`background-repeat`** define si una imagen de fondo debe repetirse (tile) o no. Los valores comunes son **`repeat`**, **`repeat-x`**, **`repeat-y`**, y **`no-repeat`**.

```css
div {
  background-image: url('imagen.jpg');
  background-repeat: no-repeat;
}

```

## **6. Background Attachment**

**`background-attachment`** determina si el fondo debe desplazarse con el contenido (**`scroll`**), ser fijo (**`fixed`**), o desplazarse solo dentro del viewport (**`local`**).

```css
cssCopy code
div {
  background-image: url('imagen.jpg');
  background-attachment: fixed;
}

```

## **7. Shorthand Property**

Puedes usar la propiedad abreviada **`background`** para combinar varios de estos valores en una única declaración.

```css
div {
  background: #f8f8f8 url('imagen.jpg') no-repeat fixed top left;
}

```

En esta declaración, hemos establecido un color de fondo, especificado una imagen de fondo, indicado que no se repita, que sea fija y definido su posición inicial.

Utilizar correctamente la propiedad **`background`** te permite crear diseños más atractivos y dinámicos, controlando con precisión cómo se muestran los fondos de los elementos en tus páginas web.

## Bordes

`border-radius`: Sirve para redondear/suavizar las esquinas para que no esté cuadrado.
`border-color` : Cambia el color del borde.
`border-width` : Cambia el ancho del borde.
`border-style` : “style” en este se usa uno de los estilos de abajo.

**`none`**: No muestra ningún borde. Es útil para desactivar bordes que podrían haberse aplicado en otro lugar.
**`solid`**: Un borde sólido y continuo.
**`dotted`**: Un borde compuesto por puntos o círculos.
**`dashed`**: Un borde compuesto por líneas discontinuas o guiones.
**`double`**: Dos líneas sólidas paralelas con un espacio entre ellas.
**`groove`**: Un efecto de grabado que parece tallado en la página.
**`ridge`**: El efecto opuesto a **`groove`**, parece que el borde sobresale de la página.
**`inset`**: Un efecto que da la impresión de que el elemento está incrustado en la página.
**`outset`**: El efecto opuesto a **`inset`**, parece que el elemento se eleva sobre la página.

![Untitled](Apuntes%20personales%20de%20programacio%CC%81n%2034801733d96a4e289f62f94f3ab9be44/Untitled%202.png)

## Unidades de medida

En CSS, las unidades de medida son esenciales para definir el tamaño, el espaciado, las proporciones, y otros aspectos visuales de los elementos en una página web. Existen varios tipos de unidades de medida que puedes utilizar, cada una con sus propios usos y contexto. Aquí te explico las más comunes:

**1. Unidades Absolutas**

Las unidades absolutas son medidas fijas que no cambian según el dispositivo o el tamaño de la ventana del navegador. Son útiles para cuando necesitas dimensiones precisas que no se ajustan en función del entorno.

**`px`** (píxeles): La unidad más común en diseño web. Es ideal para cuando necesitas un control preciso de la medida.
**`cm`** (centímetros), **`mm`** (milímetros), **`in`** (pulgadas), **`pt`** (puntos), **`pc`** (picas): Estas unidades son mejores para imprimir, pero rara vez se utilizan en el diseño web.

**2. Unidades Relativas**

Las unidades relativas son flexibles y se basan en algún otro valor de referencia, como el tamaño del elemento contenedor o el tamaño de fuente predeterminado del navegador.

**`em`**: Relativa al tamaño de la fuente del elemento actual. Por ejemplo, **`2em`** sería dos veces el tamaño de la fuente actual.
**`rem`** (root em): Similar a **`em`**, pero siempre relativa al tamaño de la fuente del elemento raíz (usualmente **`<html>`**).
**`vw`** (viewport width): 1% del ancho de la ventana de visualización.
**`vh`** (viewport height): 1% de la altura de la ventana de visualización.
**`vmin`** y **`vmax`**: Respectivamente, 1% de la dimensión más pequeña o más grande de la ventana de visualización.

**3. Unidades de Porcentaje**

Las unidades de porcentaje (**`%`**) son relativas al tamaño del elemento contenedor. Son extremadamente útiles para diseños responsivos que necesitan adaptarse a diferentes tamaños de pantalla.

El uso de unidades relativas es generalmente preferido para el diseño responsivo, ya que permite que los elementos de la página se ajusten dinámicamente al tamaño del dispositivo y las preferencias del usuario. Las unidades absolutas, en cambio, son más adecuadas para cuando necesitas precisión exacta y consistencia sin importar el dispositivo o las preferencias del usuario.

```css
cssCopy code
.element {
  width: 50%; /* El elemento ocupa el 50% del ancho de su contenedor */
  padding: 2rem; /* El padding es de 2 veces el tamaño de la fuente del elemento raíz */
  margin-bottom: 10vh; /* El margen inferior es el 10% de la altura de la ventana de visualización */
}

```

## Márgenes

En CSS, la propiedad **`margin`** se utiliza para crear espacio alrededor de los elementos, fuera de cualquier borde definido. Controla el espacio exterior de un elemento y puede ayudar a separarlo de otros elementos en la página. La propiedad **`margin`** puede ser especificada para los cuatro lados de un elemento (superior, derecho, inferior, izquierdo) y se puede usar de varias maneras.

**Colapsamiento de Márgenes**

Una característica importante de los márgenes en CSS es que los márgenes verticales (superior e inferior) de dos elementos adyacentes pueden colapsarse en uno solo, tomando el valor más grande de los dos. Esto no sucede con los márgenes horizontales (derecho e izquierdo). El colapsamiento de márgenes solo ocurre bajo ciertas condiciones y solo en márgenes verticales.

En resumen, **`margin`** es una propiedad esencial para controlar el diseño y el espaciamiento en las páginas web, facilitando la creación de diseños más limpios y espaciados de manera adecuada.

**Sintaxis de `margin`

Margin Individual:** Puedes especificar el margen para cada lado del elemento de manera independiente. Estos margenes sirven para separar de los otros elementos, seria el espacio entre medio. Por ejemplo:

`margin-top: 20px;
 margin-right: 10px;
 margin-bottom: 20px;
 margin-left: 10px;`

**Margin Shorthand:** Es una forma más concisa de definir los márgenes para todos los lados a la vez. Dependiendo del número de valores que especifiques, la propiedad se aplica de diferentes maneras:

Un valor: se aplica a todos los lados.

Dos valores: el primer valor se aplica al margen superior e inferior, el segundo al margen derecho e izquierdo.

Tres valores: el primer valor se aplica al margen superior, el segundo a los márgenes derecho e izquierdo, y el tercero al margen inferior.

Cuatro valores: se aplican respectivamente a los márgenes superior, derecho, inferior e izquierdo.

```css
.element {
  margin: 5px; /* Todos los lados */
  margin: 5px 10px; /* Superior e inferior 5px, derecho e izquierdo 10px */
  margin: 5px 10px 15px; /* Superior 5px, derecho e izquierdo 10px, inferior 15px */
  margin: 5px 10px 15px 20px; /* Superior 5px, derecho 10px, inferior 15px, izquierdo 20px */
}

```

## Padding

La propiedad **`padding`** en CSS es utilizada para crear espacio dentro de un elemento, entre el contenido del elemento y su borde definido. El padding aumenta el espacio interior de un elemento, lo cual es útil para mejorar la estética visual de los elementos en la página y hacer que el contenido sea más legible y atractivo visualmente.

**Sintaxis de `padding`**

Al igual que con **`margin`**, el padding puede especificarse de manera individual para cada lado del elemento o utilizando una sintaxis abreviada (shorthand):

**Padding Individual:** Permite especificar el padding para cada lado de manera independiente.

 `padding-top: 20px;
  padding-right: 15px;
  padding-bottom: 10px;
  padding-left: 5px;`

**Padding Shorthand:** Una forma más concisa de definir los paddings para todos los lados a la vez. Al igual que con margin, la cantidad de valores que especifiques afecta a diferentes lados:

Un valor: se aplica a todos los lados.

Dos valores: el primer valor se aplica al padding superior e inferior, el segundo al padding derecho e izquierdo.

Tres valores: el primer valor para el padding superior, el segundo para los paddings derecho e izquierdo, y el tercero para el padding inferior.

Cuatro valores: aplican respectivamente a los paddings superior, derecho, inferior e izquierdo.

```css
.element {
  padding: 10px; /* Todos los lados */
  padding: 5px 10px; /* Superior e inferior 5px, derecho e izquierdo 10px */
  padding: 5px 15px 10px; /* Superior 5px, derecho e izquierdo 15px, inferior 10px */
  padding: 10px 5px 15px 20px; /* Superior 10px, derecho 5px, inferior 15px, izquierdo 20px */
}

```

## Alto y Ancho (Height & width)

En CSS, las propiedades **`height`** y **`width`** se utilizan para controlar el alto y el ancho de los elementos, respectivamente. Estas propiedades son fundamentales para el diseño de la disposición (layout) y el tamaño de los elementos en una página web.
**Width (Ancho)**

La propiedad **`width`** define el ancho de un elemento. Puede ser especificada en varias unidades, como píxeles (**`px`**), porcentajes (**`%`**), unidades relativas (**`em`**, **`rem`**), y muchas otras. El ancho se puede aplicar a elementos de bloque, en línea e incluso elementos en línea modificados para comportarse como bloques (usando **`display: block`** o **`display: inline-block`**).
Ejemplos de **`width`**:

```css
cssCopy code
/* Ancho fijo de 300 píxeles */
.element {
  width: 300px;
}

/* Ancho del 50% del contenedor padre */
.container {
  width: 50%;
}

/* Ancho máximo */
.element {
  max-width: 500px;
}

/* Ancho mínimo */
.element {
  min-width: 200px;
}

```

**Height (Alto)**

La propiedad **`height`** controla la altura de un elemento. Al igual que **`width`**, puede ser especificada usando diferentes unidades. Sin embargo, definir alturas explícitas en elementos puede llevar a problemas de desbordamiento si el contenido excede el espacio disponible, por lo que es común utilizar **`min-height`** o **`max-height`** para mayor flexibilidad.

```css
cssCopy code
/* Altura fija de 200 píxeles */
.element {
  height: 200px;
}

/* Altura del 75% del contenedor padre */
.container {
  height: 75%;
}

/* Altura máxima */
.element {
  max-height: 100vh;  /* 100% del viewport height */
}

/* Altura mínima */
.element {
  min-height: 50px;
}

```

**Consideraciones de Diseño

Contenido Desbordado**: Al especificar **`height`** o **`width`**, es crucial considerar el contenido del elemento. Si un elemento tiene más contenido del que puede contener visualmente, se puede usar **`overflow`** para controlar el comportamiento de desbordamiento (por ejemplo, **`overflow: auto`** para agregar barras de desplazamiento).

**Unidades Relativas y Absolutas**: Mientras que las unidades absolutas (como **`px`**) ofrecen más control y previsibilidad, las unidades relativas (como **`%`**, **`em`**, **`rem`**, **`vw`**, **`vh`**) ofrecen mayor flexibilidad y adaptabilidad en diferentes dispositivos y tamaños de pantalla.

**Box Model**: El modelo de caja de CSS afecta cómo el **`width`** y **`height`** se calculan. Si **`box-sizing`** está establecido en **`border-box`**, el ancho y el alto incluirán el padding y el borde. Si está en **`content-box`** (por defecto), el padding y el borde se añaden al ancho y alto especificados.

Estas propiedades son esenciales para la creación de diseños responsivos y precisos en la web, y su uso correcto es crucial para el éxito de cualquier diseño web.

## Texto

En CSS, trabajar con texto implica manejar diversas propiedades que permiten controlar su apariencia, alineación, espaciado, transformación y más. Aquí te explico algunas de las principales propiedades de CSS relacionadas con la manipulación del texto:

**1. Color**

La propiedad **`color`** se usa para definir el color del texto dentro de un elemento HTML. Se puede especificar con valores hexadecimales, nombres de colores, valores RGB, RGBA, HSL o HSLA.

**2. Font-Family**

La propiedad **`font-family`** se utiliza para especificar la familia tipográfica del texto. Puedes especificar varias fuentes como una "fallback" (reserva) en caso de que el navegador no pueda cargar la primera fuente especificada.

`body {
  font-family: Arial, sans-serif;
}`

**3. Font-Size**
La propiedad **`font-size`** controla el tamaño del texto. Los valores pueden ser absolutos como píxeles (**`px`**) o puntos (**`pt`**), o relativos como em (**`em`**), rem (**`rem`**), porcentajes (**`%`**).

`h1 {
  font-size: 2em; /* 2 veces el tamaño de fuente base */
}`

**4. Font-Weight**

Controla el grosor del texto. Los valores comunes incluyen **`normal`**, **`bold`**, **`bolder`**, **`lighter`**, o los valores numéricos que van de 100 a 900.

`strong {
  font-weight: bold;
}`

**5. Text-Align**

Esta propiedad define cómo se alinea el texto dentro de un elemento. Los valores típicos incluyen **`left`**, **`right`**, **`center`**, y **`justify`**.

`p {
  text-align: center;
}`

**6. Line-Height**

Afecta el espacio entre líneas de texto, mejorando la legibilidad. Puede ser un número sin unidad (factor del tamaño de la fuente), un valor de longitud, o un porcentaje.

`p {
  line-height: 1.5;  /* 150% del tamaño de la fuente */
}`

**7. Text-Decoration

``**Usada principalmente para agregar subrayado, tachado o una línea sobre el texto. Los valores incluyen **`none`**, **`underline`**, **`line-through`**, **`overline`**.

`a {
  text-decoration: none;  /* Remueve el subrayado predeterminado de los enlaces */
}`

**8. Text-Transform**

Transforma el texto a **`uppercase`** (mayúsculas), **`lowercase`** (minúsculas), o **`capitalize`** (capitalización de la primera letra de cada palabra).

`h2 {
  text-transform: uppercase;
}`

**9. Letter-Spacing y Word-Spacing

`letter-spacing`** controla el espacio entre caracteres individuales, y **`word-spacing`** ajusta el espacio entre palabras.

`p {
  letter-spacing: 2px;
  word-spacing: 5px;
}`

**10. Text-Shadow**

Añade sombra al texto. Puede especificar los desplazamientos horizontal y vertical, el desenfoque, y el color de la sombra.

h1 {
  text-shadow: 2px 2px 5px greenyellow;
}

Estas propiedades te permiten tener un control detallado sobre cómo se muestra el texto en tus proyectos web, lo que es crucial para la usabilidad y la estética de tus páginas.

El shorthand de Text Shadow es:

`text-shadow horizontal vertical desenfoque color;`
Esta linea se puede repetir varias veces en la misma linea para generar mas efectos.

11. Text-indent

Añade sangria al texto

`p{
text-indent: 50px;
}`

12. white-space

Hace que el texto se escriba a todo lo ancho sin importar el limite.

`p
{
white-space: nowrap;
}`

## Fuentes

En CSS, las fuentes o tipografías son esenciales para definir la apariencia visual y el estilo del texto en tus páginas web. Aquí te explico cómo trabajar con fuentes en CSS, cubriendo desde la selección de la familia tipográfica hasta la importación de fuentes externas. Se recomienda poner hasta 3 fuentes inclusive para que en caso de que el usuario no tenga dicha fuente en el navegador, se cargue la siguiente.

**1. Font-Family**

La propiedad **`font-family`** se utiliza para especificar la familia tipográfica para el texto de un elemento. Puedes establecer una lista de familias de fuentes, donde si la primera no está disponible, el navegador intentará con la siguiente en la lista.

`p {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}`
En este ejemplo, el navegador intentará mostrar el texto en "Helvetica Neue". Si no puede, probará con Helvetica, luego Arial, y finalmente caerá en cualquier fuente sans-serif disponible.

**2. Font-Style**

La propiedad **`font-style`** se utiliza principalmente para especificar texto en itálica o cursiva.

em {
  font-style: italic;
}

**3. Font-Weight**

Esta propiedad define el grosor de la fuente. Aparte de los valores **`normal`** y **`bold`**, puedes especificar valores numéricos como 100, 200, 300, etc., hasta 900.

strong {
  font-weight: bold;
}
**4. Font-Size**

Controla el tamaño de la fuente. Puedes usar unidades absolutas como puntos (**`pt`**) o píxeles (**`px`**), o unidades relativas como **`em`** o **`rem`**.

h1 {
  font-size: 24px;
}

**5. @font-face**

Para usar fuentes que no están instaladas en el sistema del usuario, puedes incluirlas directamente en tu CSS mediante la regla **`@font-face`**. Esto permite cargar fuentes desde un archivo en tu servidor.

@font-face {
  font-family: 'MyCustomFont';
  src: url('mycustomfont.woff2') format('woff2'),
       url('mycustomfont.woff') format('woff');
}

body {

  font-family: 'MyCustomFont', sans-serif;
}

Este método te permite usar fuentes personalizadas en tu página web, asegurándote de que se vea consistente en diferentes dispositivos y navegadores.

**6. Google Fonts**

Una forma fácil y rápida de incorporar fuentes en tus proyectos es mediante Google Fonts. Puedes seleccionar una fuente de su catálogo y simplemente incluir un enlace en tu documento HTML o importarla en tu archivo CSS.

**HTML:**

htmlCopy code
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">

**CSS:**

cssCopy code
@import url('https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap');

body {
  font-family: 'Roboto', sans-serif;
}

Estas herramientas y técnicas te permiten mejorar significativamente la apariencia de tu sitio web, garantizando una mayor coherencia y control sobre cómo se muestra el texto, lo que mejora la experiencia del usuario y la accesibilidad del sitio.

## Íconos

En el diseño web, los iconos son componentes visuales clave que ayudan a mejorar la usabilidad, la navegación y la estética de un sitio web. Hay varias formas de incorporar iconos en tus proyectos web, cada una con sus propias ventajas y consideraciones. Aquí te explico las principales opciones disponibles:

**1. Imágenes PNG o SVG**

Puedes utilizar iconos como imágenes, en formatos como PNG o SVG. Los iconos SVG son especialmente útiles porque son escalables sin pérdida de calidad, lo que los hace ideales para interfaces responsive y dispositivos de alta resolución.

**Ejemplo de uso de un icono SVG:**

`<img src="icono.svg" alt="Descripción del icono">`

**2. Fuentes de Iconos**

Las fuentes de iconos son una técnica popular que utiliza caracteres de una fuente tipográfica para representar iconos. Algunos ejemplos populares incluyen FontAwesome, Material Icons y Ionicons. Estas fuentes ofrecen una forma fácil de añadir iconos que son consistentemente estilizables y escalables.
**Ejemplo con FontAwesome:**

`<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<i class="fas fa-user"></i>`

**3. Sprites CSS**

Un sprite CSS es una imagen grande que contiene varios iconos más pequeños. En CSS, puedes mostrar solo la parte relevante de la imagen utilizando las propiedades **`background-image`** y **`background-position`**.

**Ejemplo de un sprite CSS:**

`.icons {
  background-image: url('sprite.png');
  background-repeat: no-repeat;
  display: inline-block;
  width: 16px;
  height: 16px;
}`

`.icon-user {
  background-position: -16px 0;
}`

`<span class="icons icon-user"></span>`

**4. SVG con CSS**

Al utilizar SVG directamente en tu HTML, puedes estilizar y manipular los iconos con CSS. Esto incluye cambiar colores, tamaños y otros efectos visuales sin necesidad de múltiples imágenes o fuentes.
**Ejemplo de SVG estilizado con CSS:**

`<svg class="icon" width="100" height="100" viewBox="0 0 24 24">
  <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-14c-3.31 0-6 2.69-6 6s2.69 6 6 6 6-2.69 6-6-2.69-6-6-6zm0 10c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"/>
</svg>`

`.icon path {
  fill: #555; /* Cambia el color del icono */
}`

**5. Iconos de Bibliotecas de Terceros**
Además de FontAwesome y otros similares, hay bibliotecas de JavaScript y CSS como Google Material Icons que te permiten incorporar fácilmente.

Ejemplo:

`<link href="[https://fonts.googleapis.com/icon?family=Material+Icons](https://fonts.googleapis.com/icon?family=Material+Icons)" rel="stylesheet">
<i class="material-icons">face</i>`

**Buenas Prácticas

Accesibilidad:** Siempre proporciona texto alternativo o etiquetas aria para los iconos que cumplen funciones interactivas, especialmente si no tienen texto visible asociado.

**Optimización:** Asegúrate de que los iconos no carguen innecesariamente recursos, especialmente si son de grandes dimensiones o están poco optimizados.

**Consistencia:** Utiliza un estilo consistente de iconos a lo largo de toda la aplicación para mantener una apariencia coherente.

Estas técnicas permiten a los desarrolladores web utilizar iconos de manera eficiente, asegurando que los sitios web sean tanto estéticamente agradables como funcionalmente ricos.

## Listas

Para las listas ordenadas (**`<ol>`**) y no ordenadas (**`<ul>`**), puedes cambiar el estilo de los marcadores usando las propiedades **`list-style-type`**, **`list-style-image`**, y **`list-style-position`**.

Estilo de marcadodores 

list-style-type:

`ul 
{
list-style-type: square;
}

ol 
{
list-style-type: upper-roman;
}`

list-style-image: url(”rutaImagen”)

`ul 
{
list-style-image: url('path_to_image.png');
}`

**`list-style-position`:** Determina si el marcador se coloca dentro o fuera del flujo del contenido del elemento de lista. Los valores pueden ser **`inside`** o **`outside`**.

`ul {
list-style-position: inside;
}`

**Reseteo de estilos**

A menudo es útil restablecer los estilos de lista para empezar con una base limpia, especialmente cuando se busca una personalización completa.

`ul, ol {
list-style: none; /* Elimina los marcadores */
padding-left: 0; /* Elimina el padding por defecto */
margin-left: 0; /* Elimina el margen por defecto */
}`

**Espaciado y alineación**

Modificar el espacio alrededor y dentro de los elementos de lista mejora la legibilidad.

`ul 
{
  padding-left: 20px; /* Ajusta el espacio dentro de la lista */
}

ul li 
{
  margin-bottom: 5px; /* Espacio entre elementos de lista */
}`

Estos estilos te permiten crear listas que se adapten mejor al diseño y la estética general de tu sitio web, mejorando tanto la funcionalidad como la presentación visual.

## Tablas

**1. Bordes de Tabla**
Para definir y personalizar los bordes de una tabla y sus celdas:

`table 
{
  border-collapse: collapse; /* Elimina los espacios entre los bordes de las celdas */
  width: 100%; /* Establece el ancho de la tabla */
}`

`th, td {
  border: 1px solid black; /* Añade un borde a cada celda */
  padding: 8px; /* Espacio entre el contenido de la celda y su borde */
  text-align: left; /* Alinea el texto a la izquierda */
}`

**2. Espaciado y Padding**
Controla el espacio alrededor y dentro de las celdas:

`th, td 
{
  padding: 10px; /* Aumenta el espacio dentro de cada celda */
}`

`table {
  border-spacing: 5px; /* Espacio entre las celdas, solo si border-collapse es 'separate' */
}`

**3. Estilos de Cabecera**
Personaliza los encabezados de la tabla para destacarlos:

`th 
{
  background-color: #f2f2f2; /* Color de fondo para los encabezados */
  font-weight: bold; /* Texto en negrita */
}`

**4. Estilización con Hover**
Añade efectos cuando el usuario pasa el cursor sobre una fila:

`tr:hover 
{
  background-color: #ddd; /* Cambia el color de fondo de la fila al pasar el cursor */
}`

**5. Alineación de Texto**

Ajusta la alineación del texto en las celdas:

`td
 {
  text-align: center; /* Centra el texto */
}`

**6. Diseño Responsivo**

Hacer que las tablas sean responsivas para que se vean bien en dispositivos móviles:

`table
 {
  width: 100%; /* Ocupa el ancho completo del contenedor */
  overflow-x: auto; /* Permite desplazamiento horizontal si la tabla es más ancha que el contenedor */
}`

**7. Estilización Alternativa de Filas**

Mejora la legibilidad alternando los colores de las filas:

`tr:nth-child(even) 
{
  background-color: #f9f9f9; /* Color para las filas pares */
}

tr:nth-child(odd) 
{
  background-color: #fff; /* Color para las filas impares */
}`
Estos ejemplos de CSS te permiten controlar cómo se visualizan las tablas en tu sitio web, haciéndolas más atractivas y funcionales para los usuarios.

## Display & Visibility

Las propiedades **`display`** y **`visibility`** son utilizadas para controlar la visualización y la visibilidad de los elementos en la página web. Aunque a primera vista puedan parecer similares, tienen efectos bastante diferentes en los elementos a los que se aplican.

**Display**
La propiedad **`display`** controla cómo se debe generar un elemento en términos de su comportamiento de bloque o en línea, entre otros. Es una propiedad fundamental para manejar la disposición de la página. Algunos valores comunes incluyen:

**none**: El elemento no se muestra y no ocupa espacio en el documento. Es como si el elemento no existiera.

**block**: El elemento se muestra como un bloque, ocupando toda la anchura disponible y comenzando en una nueva línea.

**inline**: El elemento se muestra en línea con otros elementos, sin comenzar en una nueva línea y solo ocupando el espacio necesario para su contenido.

**inline-block**: Comportamiento híbrido entre **`inline`** y **`block`**. El elemento se ajusta al contenido, pero puedes establecer propiedades como **`width`** y **`height`**.

**flex**: Indica que el elemento es un contenedor flexible. Los elementos hijos se comportan según las reglas del modelo de caja flexible.

**grid**: Indica que el elemento es un contenedor de cuadrícula. Los elementos hijos se posicionan dentro de un sistema de cuadrícula.

Curiosidad:
Si a un `<div>` le ponemos display: inline; es como si fuese un `<span>` y si a un `<span>` le ponemos display: block; es igual a un `<div>`.

**Visibility**

La propiedad **`visibility`** controla si un elemento debe ser visible o no. A diferencia de **`display: none`**, cuando se utiliza **`visibility: hidden`**, el elemento no es visible, pero aún ocupa espacio en el diseño de la página. Algunos valores incluyen:

**visible**: El elemento es visible, que es el valor predeterminado.
**hidden**: El elemento se oculta, pero el espacio que ocuparía sigue visible y afectando el layout.
**collapse**: Usualmente utilizado en tablas. Si se aplica a filas o columnas, estas se "colapsan" y su espacio no es mostrado, similar a **`display: none`**.

**Ejemplos

Uso de `display`:**

`.div1 {
  display: none; /* El div no se muestra ni ocupa espacio */
}

.div2 {
  display: inline-block; /* El div se ajusta al contenido y permite dimensionamiento */
}

.div2 {
  display: inline; /* El div se ajusta al contenido en linea*/
}`

**Uso de `visibility`:**

`.div3 {
  visibility: hidden; /* El div está oculto, pero aún ocupa su espacio original */
}`

**Conclusión**

Usar **`display: none`** es útil para eliminar completamente un elemento del flujo del documento, mientras que **`visibility: hidden`** es mejor cuando quieres ocultar un elemento temporalmente sin alterar el layout de la página. Ambas propiedades son herramientas esenciales para controlar la experiencia del usuario y la interactividad en el diseño web.

## Position

La propiedad CSS **`position`** es esencial para controlar el posicionamiento de los elementos en una página web. Con esta propiedad, puedes determinar cómo un elemento es posicionado en el documento y cómo interactúa con otros elementos. Aquí te explico los valores más importantes para **`position`**:

**Static
Valor por defecto**. Los elementos se posicionan de acuerdo al flujo normal del documento. No puedes usar **`top`**, **`bottom`**, **`left`**, o **`right`** para mover el elemento.

**Relative**
Coloca el elemento en posición relativa respecto a su posición normal en el documento. Aunque el elemento se mueve, el espacio que ocuparía en el flujo normal del documento se mantiene. Puedes usar **`top`**, **`bottom`**, **`left`**, y **`right`** para ajustar su posición.

**Absolute**
Extrae el elemento del flujo normal del documento, y no ocupa espacio; es decir, otros elementos se comportan como si no estuviera ahí. El posicionamiento absoluto lo coloca relativo a su ancestro posicionado más cercano (no estático) o, si no tiene ancestros posicionados, al bloque inicial del documento. Las propiedades **`top`**, **`bottom`**, **`left`**, y **`right`** determinan su posición.

**Fixed**
Similar a **`absolute`**, pero el elemento está posicionado relativo a la ventana del navegador, lo que significa que permanece en el mismo lugar incluso si la página se desplaza. También se extrae del flujo normal del documento.

**Sticky**
Es una mezcla de **`relative`** y **`fixed`**. El elemento se trata como **`relative`** hasta que su bloque de desplazamiento cruce un umbral establecido por **`top`**, **`bottom`**, **`left`**, o **`right`**, momento en el cual se trata como **`fixed`**, manteniéndose en esa posición mientras el bloque de desplazamiento esté dentro del rango.

**Ejemplos
Position static (por defecto):**

`.div1 {
  position: static;
}`

**Position relative:**

`.div2 {
  position: relative;
  top: 10px;  // Mueve el elemento 10px hacia abajo desde su posición normal
  left: 20px; // Mueve el elemento 20px hacia la derecha desde su posición normal
}`

**Position absolute:**

`.div3 {
  position: absolute;
  top: 50px;
  right: 30px;
}`

**Position fixed:**

`.div4 {
  position: fixed;
  bottom: 0;
  left: 0;
}`

**Position sticky:**

`.div5 {
  position: sticky;
  top: 10px; // Se comporta como relative hasta que se desplaza 10px desde la parte superior, luego actúa como fixed.
}`

Cada uno de estos métodos de posicionamiento tiene usos específicos dependiendo de la estructura y el diseño de tu sitio web, lo que te permite crear diseños complejos y responsivos.

Ejemplo de colocar texto en el centro de una imagen dentro de un div.

`.img {
       width: 100%;
       height: auto;
       }
p
 {
   position: absolute; 
   top: 50%;
   width: 100%;
   text-align: center;
   color:white;
   font-size: 500%;
}`

## Z-Index

La propiedad CSS **`z-index`** es utilizada para especificar el orden de apilamiento de los elementos que se superponen. El valor de **`z-index`** sólo afecta a elementos cuyo valor de **`position`** es diferente de **`static`** (por ejemplo, **`position: absolute`**, **`position: relative`**, **`position: fixed`** o **`position: sticky`**). Esta propiedad toma valores enteros (incluyendo números negativos), y los elementos con mayor valor de **`z-index`** se sitúan por encima de los que tienen un valor menor.

**Cómo funciona `z-index`**
Cuando varios elementos se superponen debido a su posicionamiento, el **`z-index`** determina cuál elemento aparece encima del otro. Un elemento con un **`z-index`** más alto siempre aparecerá sobre uno con un **`z-index`** más bajo.
**Ejemplo básico de `z-index`**

`<!DOCTYPE html>
<html lang="es">
<head>
    <style>
        .background {
            position: absolute;
            width: 200px;
            height: 200px;
            background-color: red;
            z-index: 1;
        }
        .foreground {
            position: absolute;
            width: 200px;
            height: 200px;
            left: 100px;
            top: 50px;
            background-color: blue;
            z-index: 2;
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="foreground"></div>
</body>
</html>`

En este ejemplo:
La **`div`** con clase **`background`** tiene un **`z-index`** de 1 y un fondo rojo.
La **`div`** con clase **`foreground`** tiene un **`z-index`** de 2, es azul y está parcialmente superpuesta sobre la roja. Debido a su mayor **`z-index`**, aparece encima de la roja.

**Consideraciones sobre `z-index`
Sin `position`:** Si no se especifica una propiedad **`position`** diferente de **`static`**, **`z-index`** no tiene efecto.

**Valores negativos:** **`z-index`** puede tener valores negativos. Un elemento con **`z-index`** negativo aparecerá detrás de los elementos que no tengan **`z-index`** definido o que tengan **`z-index`** positivo.

**Contextos de apilamiento:** Un nuevo contexto de apilamiento puede ser creado bajo ciertas condiciones (por ejemplo, por elementos con **`opacity`** menor que 1 o transformaciones CSS), lo que afecta cómo se calculan los **`z-index`** dentro de dicho contexto.

**`z-index`** es una herramienta crucial para manejar la visibilidad de elementos que se superponen, permitiéndote controlar con precisión la disposición visual en el diseño web.

## Overflow

La propiedad CSS **`overflow`** controla qué sucede con el contenido que sobrepasa los bordes de un elemento contenedor. Esta propiedad es crucial para la gestión del diseño y la presentación de contenido que no se ajusta de forma predeterminada dentro de las dimensiones asignadas a un elemento.

**Valores de la propiedad `overflow

visible`**: Es el valor predeterminado. El contenido que sobrepasa el tamaño del contenedor se muestra fuera de este.

**`hidden`**: Cualquier contenido que exceda los límites del contenedor será recortado, y no serán visibles las partes del contenido que desborden.

**`scroll`**: El contenedor tendrá barras de desplazamiento, permitiendo al usuario ver el contenido oculto, sin importar si hay desbordamiento o no.

**`auto`**: Similar a **`scroll`**, pero las barras de desplazamiento solo aparecerán cuando el contenido realmente desborde.

**Aplicación específica para ejes**

Puedes controlar el desbordamiento en los ejes horizontal y vertical específicamente con **`overflow-x`** y **`overflow-y`**. Los valores son los mismos que para **`overflow`**, permitiendo controlar el desbordamiento de forma independiente en cada eje.
**Ejemplo de `overflow`**

`<!DOCTYPE html>
<html lang="es">
<head>
    <style>
        .container {
            width: 200px;
            height: 100px;
            overflow: auto;
            border: 1px solid #000;
        }
    </style>
</head>
<body>
    <div class="container">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi.
    </div>
</body>
</html>`

En este ejemplo:
La clase **`container`** tiene un tamaño fijo de 200x100 píxeles.

**`overflow: auto`** asegura que aparecerán barras de desplazamiento si el contenido excede el espacio disponible.

**Usos prácticos

Paneles de interfaz de usuario**: Util para elementos con paneles que deben tener un tamaño fijo, como menús, cajas de herramientas o dashboards.

**Cuadros de texto**: Controla el desbordamiento de contenido en elementos de texto que no deben expandirse más allá de ciertas dimensiones.

**Diseño responsivo**: Combinado con otras propiedades CSS, **`overflow`** ayuda a crear diseños que se adaptan a diferentes tamaños de pantalla manteniendo el contenido accesible.

Usar correctamente **`overflow`** mejora la usabilidad de las interfaces, asegurando que el contenido es accesible sin alterar la estética o la funcionalidad del diseño.

## Float

La propiedad CSS **`float`** se utiliza para cambiar la disposición de un elemento y hacer que flote a la izquierda o a la derecha dentro de su contenedor. Originalmente fue diseñada para permitir que el texto fluyera alrededor de las imágenes, pero con el tiempo se ha utilizado para crear diseños de varias columnas y otros diseños complejos.

Cuando aplicas **`float`** a un elemento, este se saca del flujo normal del documento y se desplaza hacia el lado especificado (izquierda o derecha), permitiendo que otros elementos fluyan alrededor de él. Es importante tener en cuenta que los elementos flotados no afectan la altura del contenedor padre, lo que puede causar que los elementos siguientes se superpongan si no se manejan correctamente.

**Sintaxis básica:**

`.elemento {
    float: left; /* o right */
}`

**Consideraciones importantes:

Flotar elementos múltiples**: Puedes flotar varios elementos dentro de un contenedor. Sin embargo, es posible que necesites limpiar los flotadores (**`clear`**) para evitar problemas de diseño.

**Flotar elementos en una sola línea**: Los elementos flotados generalmente se colocan en una sola línea horizontal hasta que no haya suficiente espacio disponible en el contenedor, momento en el cual se colocarán debajo del último elemento flotado.

**Flotar y diseño responsivo**: A medida que la pantalla se hace más pequeña, es posible que necesites ajustar los estilos o incluso cambiar de enfoque a técnicas de diseño más modernas, como Flexbox o CSS Grid, que ofrecen más control sobre la disposición de los elementos.

**Clearing floats (Limpiar flotadores)**: Cuando flotas elementos dentro de un contenedor, es posible que necesites aplicar técnicas de limpieza de flotadores para asegurarte de que los elementos siguientes se comporten como se espera.
**Ejemplo:**

En este ejemplo, **`float-left`** y **`float-right`** se colocan uno al lado del otro dentro de **`.container`**, y el clearfix asegura que el contenedor se expanda correctamente para incluir ambos elementos flotados.

## Pseudoclases

Las pseudoclases en CSS te permiten aplicar estilos a un elemento en función de su estado o posición en relación con el documento. Esto te da la capacidad de crear estilos dinámicos y reaccionar a acciones específicas del usuario o al estado del documento. Algunas de las pseudoclases más comunes incluyen:

**`:hover**:` Aplica estilos cuando el cursor del mouse está sobre el elemento.

**`:active**:` Aplica estilos cuando el elemento está siendo activado (por ejemplo, cuando se hace clic en un enlace).

**`:focus**:` Aplica estilos cuando el elemento está enfocado (por ejemplo, cuando se selecciona un campo de entrada de texto).

**`:nth-child()**:` Aplica estilos a un elemento basado en su posición entre sus hermanos.

**`:nth-of-type()**:` Similar a :nth-child(), pero se aplica solo a elementos del mismo tipo.

**`:first-child`**, **`:last-child**:` Aplica estilos al primer o último hijo de un elemento padre.

**`:not()**:` Excluye un elemento de la selección si no coincide con un selector especificado.

**`:checked**:` Aplica estilos a un elemento de entrada (como una casilla de verificación) cuando está marcado.

**`:enabled`**, **`:disabled**:` Aplica estilos a elementos de entrada habilitados o deshabilitados.

**`:valid`**, **`:invalid**:` Aplica estilos a elementos de entrada que son válidos o inválidos según las restricciones de validación.

**Ejemplos de pseudoclases:**

Estilo de enlace cuando el cursor está sobre él:

`a:hover {
    color: red;
}`

Estilo de campo de entrada cuando está enfocado:

`input:focus {
    border-color: blue;
}`

Estilo del primer elemento de una lista:

`li:first-child {
    font-weight: bold;
}`

Estilo de un elemento de entrada de tipo "radio" cuando está marcado:

`input[type="radio"]:checked {
    background-color: yellow;
}`

**Consideraciones importantes:**

Las pseudoclases son una poderosa herramienta para crear estilos dinámicos y responsivos en tu sitio web.

Es importante comprender qué pseudoclases están disponibles y cómo se aplican para poder utilizarlas de manera efectiva.

Las pseudoclases pueden combinarse entre sí y con otros selectores CSS para crear estilos altamente específicos y adaptados a tus necesidades.

## Pseudoelementos

Los pseudoelementos en CSS te permiten crear elementos virtuales dentro de un elemento HTML y aplicar estilos específicos a estos elementos virtuales. A diferencia de los elementos reales, los pseudoelementos no están presentes en el HTML, pero te permiten agregar contenido adicional o estilos a un elemento sin modificar el HTML. Algunos de los pseudoelementos más comunes incluyen:

**::before**: Crea un elemento virtual antes del contenido del elemento seleccionado.

**::after**: Crea un elemento virtual después del contenido del elemento seleccionado.

**::first-line**: Aplica estilos a la primera línea de texto dentro de un elemento.

**::first-letter**: Aplica estilos al primer carácter de texto dentro de un elemento.

**::selection**: Aplica estilos al texto seleccionado por el usuario.

**Ejemplos de pseudoelementos:**

Creación de contenido antes y después de un elemento:

p::before {
    content: "Antes ";
}

p::after {
    content: " Después";
}

Estilo de la primera letra de un párrafo:

p::first-letter {
    font-size: 150%;
    color: blue;
}

Estilo de la primera línea de un párrafo:

p::first-line {
    font-weight: bold;
    font-size: 120%;
}

**Consideraciones importantes:**

Los pseudoelementos te permiten agregar contenido o estilos adicionales a tus elementos HTML sin modificar el HTML real.

Los pseudoelementos se seleccionan utilizando una sintaxis de doble dos puntos (::) después del selector CSS del elemento al que se aplicarán.

Es importante tener en cuenta que algunos pseudoelementos, como ::before y ::after, requieren la propiedad content para especificar el contenido que se mostrará.

Los pseudoelementos pueden combinarse con selectores CSS y otras propiedades para crear efectos y estilos complejos en tu sitio web.

## Opacidad

La opacidad en CSS se refiere a la propiedad que controla la transparencia de un elemento, lo que permite que los elementos sean parcialmente transparentes y muestren el contenido detrás de ellos. La opacidad se puede aplicar a cualquier elemento HTML, incluidos elementos de texto, imágenes, fondos y elementos de contenedor.

**Propiedad opacity:**

La propiedad **`opacity`** controla la opacidad de un elemento y puede tener un valor entre 0 y 1, donde:

0 indica que el elemento es completamente transparente (no visible).

1 indica que el elemento es completamente opaco (visible).

**Ejemplo:**

`div {
    opacity: 0.5; /* Hace que el elemento tenga una opacidad del 50% */
}`

C**onsideraciones importantes:**

La propiedad **`opacity`** afecta a todos los descendientes de un elemento de manera recursiva. Esto significa que si aplicas **`opacity: 0.5`** a un contenedor, todos los elementos dentro de ese contenedor también tendrán una opacidad del 50%.

La opacidad no afecta la posición o el espacio que ocupa un elemento en el diseño de la página. Un elemento con opacidad 0 aún ocupará espacio en el diseño, aunque no sea visible.

Si solo deseas que el contenido de un elemento sea transparente pero no su fondo, puedes utilizar la propiedad **`background-color`** con un valor **`rgba()`** para definir un color de fondo con transparencia.

Si necesitas controlar la opacidad de un elemento y su contenido de forma independiente, puedes utilizar pseudoelementos o técnicas de superposición utilizando **`rgba()`** en lugar de **`opacity`**.

## Navegación (NavBar)

La navegación, comúnmente abreviada como "navbar" o "barra de navegación", es una parte fundamental de la interfaz de usuario de un sitio web. La navbar es una sección que contiene enlaces o elementos interactivos que permiten a los usuarios navegar por las diferentes partes del sitio web.

**Características comunes de una navbar:

Enlaces a páginas importantes**: La navbar suele contener enlaces a las páginas más importantes del sitio web, como la página de inicio, la página de productos/servicios, la página de contacto, etc.

**Menú desplegable**: En sitios web con una gran cantidad de páginas o secciones, es común encontrar un menú desplegable que contiene enlaces a todas las páginas del sitio.

**Logotipo del sitio**: Muchas barras de navegación incluyen el logotipo del sitio web, que a menudo es un enlace a la página de inicio.

**Estilo fijo o pegajoso**: Algunas barras de navegación permanecen fijas en la parte superior de la página incluso cuando el usuario se desplaza hacia abajo (navbars pegajosas), mientras que otras desaparecen cuando el usuario se desplaza hacia abajo y vuelven a aparecer cuando el usuario se desplaza hacia arriba (navbars fijas).

**Implementación en HTML y CSS:

HTML:**

`htmlCopy code
<nav class="navbar">
    <div class="container">
        <a href="#" class="logo">Logo</a>
        <ul class="nav-links">
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Productos</a></li>
            <li><a href="#">Servicios</a></li>
            <li><a href="#">Contacto</a></li>
        </ul>
    </div>
</nav>`

**CSS:**
`cssCopy code
.navbar {
    background-color: #333;
    color: white;
    padding: 10px 0;
}

.container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
}

.logo {
    font-size: 24px;
    text-decoration: none;
    color: white;
}

.nav-links {
    list-style: none;
    margin: 0;
    padding: 0;
}

.nav-links li {
    display: inline;
    margin-right: 20px;
}

.nav-links li a {
    text-decoration: none;
    color: white;
}

/* Estilos para navbar pegajosa */
.navbar.sticky {
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1000;
}`

**Consideraciones importantes:**

La navegación debe ser clara y fácil de usar para los usuarios, con enlaces bien organizados y etiquetas claras.

Es importante que la navegación sea responsiva y se adapte a diferentes tamaños de pantalla, especialmente en dispositivos móviles.

La barra de navegación puede tener estilos adicionales, como animaciones al desplazarse hacia abajo (navbar que se oculta) o efectos al hacer hover sobre los enlaces.

Se pueden agregar elementos adicionales a la barra de navegación según las necesidades del sitio web, como botones de búsqueda, botones de inicio de sesión, etc.

## !important

La regla **`!important`** es una declaración especial en CSS que se utiliza para aumentar la especificidad de una regla y darle prioridad sobre otras reglas que podrían aplicarse al mismo elemento. Cuando se añade **`!important`** a una propiedad CSS, esta propiedad se aplicará independientemente de su especificidad normal o de su orden en la hoja de estilos.

**Sintaxis:**

La sintaxis para usar **`!important`** es agregarlo al final de la declaración de una propiedad CSS, justo antes del punto y coma.

`selector {
    propiedad: valor !important;
}`

**Ejemplo:**
Supongamos que tenemos el siguiente CSS:

`p {
    color: blue;
}

p {
    color: red !important;
}`

En este caso, el color del texto de todos los elementos **`<p>`** será rojo, ya que la segunda regla tiene **`!important`**, lo que le da prioridad sobre la primera regla, a pesar de que esta última está más arriba en el archivo CSS.

**Consideraciones importantes:**

El uso excesivo de **`!important`** puede dificultar la depuración y el mantenimiento del código CSS, ya que anula las reglas normales de cascada y especificidad.

Se recomienda evitar **`!important`** siempre que sea posible y utilizar técnicas como mejorar la especificidad de los selectores o reorganizar las reglas CSS para evitar conflictos.

Siempre es mejor escribir reglas CSS claras y bien estructuradas para evitar la necesidad de usar **`!important`**.

## Animaciones

Las animaciones en CSS te permiten crear efectos visuales dinámicos y atractivos en tu sitio web sin necesidad de utilizar JavaScript. Puedes animar propiedades CSS como el color, el tamaño, la posición, la opacidad, entre otras. Las animaciones se definen utilizando la regla **`@keyframes`** y se aplican a elementos utilizando la propiedad **`animation`**.

**Definición de una animación con `@keyframes`:**

`@keyframes nombreDeLaAnimacion {
    0% { /* estado inicial */ }
    100% { /* estado final */ }
}`

En este ejemplo, **`nombreDeLaAnimacion`** es un identificador único para la animación. Puedes definir varios puntos clave (keyframes) para especificar cómo cambian las propiedades CSS a lo largo de la animación, desde el 0% (estado inicial) hasta el 100% (estado final).

**Aplicación de una animación con la propiedad `animation`:**

selector {
    animation: nombreDeLaAnimacion duracion iteracion retraso direccion;
}

**`nombreDeLaAnimacion`**: El nombre de la animación definida con **`@keyframes`**.

**`duracion`**: La duración de la animación en segundos o milisegundos.

**`iteracion`**: El número de veces que se repetirá la animación.

**`retraso`**: El tiempo de espera antes de que comience la animación.

**`direccion`**: La dirección de la animación (normal, inversa, alternando).

**Ejemplo:**

Supongamos que queremos crear una animación de cambio de color para un botón:

`@keyframes cambioColor {
    0% { background-color: red; }
    50% { background-color: blue; }
    100% { background-color: green; }
}

button {
    animation: cambioColor 3s infinite alternate;
}`

En este ejemplo, el botón cambiará de color de rojo a azul y luego a verde en un ciclo infinito con una duración de 3 segundos.

**Consideraciones importantes:**

Las animaciones en CSS son una forma efectiva de crear efectos visuales sutiles o llamativos en tu sitio web.

Es importante considerar el rendimiento al usar animaciones, especialmente en dispositivos móviles.

Puedes controlar la suavidad de la animación utilizando la propiedad **`transition-timing-function`** o **`animation-timing-function`**.

Experimenta con diferentes propiedades CSS y combinaciones de valores para crear animaciones únicas y atractivas.

## Transiciones

Las transiciones en CSS te permiten controlar cómo cambian los estilos de un elemento cuando ocurre un cambio, como al cambiar el estado de un elemento al pasar el cursor sobre él, al cambiar de página o al hacer clic en un botón. Las transiciones suavizan estos cambios aplicando un efecto de transición gradual en lugar de un cambio instantáneo.

**Propiedades CSS para definir una transición:**

Para crear una transición, debes especificar la propiedad o propiedades que deseas animar y luego definir la duración, el tipo y el retraso de la transición.

`selector {
    transition-property: propiedad;
    transition-duration: duracion;
    transition-timing-function: funcion-timing;
    transition-delay: retraso;
}

**transition-property**`: Especifica las propiedades CSS que deseas animar. Puedes listar múltiples propiedades separadas por comas.

**`transition-duration`**: Especifica la duración de la transición en segundos o milisegundos.

**`transition-timing-function`**: Define cómo cambia la velocidad de la transición a lo largo del tiempo (función de tiempo). Puedes utilizar valores como **`ease`**, **`linear`**, **`ease-in`**, **`ease-out`**, **`ease-in-out`**, entre otros.

**`transition-delay`**: Opcionalmente, puedes especificar un retraso antes de que comience la transición.

**Ejemplo:**

Supongamos que queremos crear una transición suave para cambiar el color de fondo de un botón al pasar el cursor sobre él:

`button {
    background-color: blue;
    transition-property: background-color;
    transition-duration: 0.5s;
    transition-timing-function: ease-in-out;
}

button:hover {
    background-color: red;
}`

En este ejemplo, cuando pasamos el cursor sobre el botón, el color de fondo cambiará de azul a rojo suavemente durante 0.5 segundos.

**Consideraciones importantes:**

Las transiciones en CSS proporcionan una forma fácil y efectiva de agregar efectos visuales sutiles a tu sitio web.

Es importante elegir la duración, el tipo y el retraso de la transición adecuados para crear efectos visualmente atractivos y no intrusivos.

Las transiciones funcionan bien con eventos como **`:hover`**, **`:focus`**, **`:active`**, **`:visited`**, entre otros, para crear interacciones dinámicas con los usuarios.

Experimenta con diferentes combinaciones de propiedades y valores para crear efectos de transición únicos y adaptados a tus necesidades específicas.

## MediaQueries (Responsive)

Las Media Queries en CSS son una característica fundamental para hacer que los sitios web sean responsivos y se adapten a diferentes dispositivos y tamaños de pantalla. Permiten aplicar estilos específicos basados en las características del dispositivo, como el ancho de la pantalla, la orientación del dispositivo, la densidad de píxeles, entre otros.

**Sintaxis general:**

`@media tipo-de-medio y (condición) {
    /* Estilos específicos para este tipo de medio y condición */
}

**tipo-de-medio**`: Especifica el tipo de medio para el cual se aplicarán los estilos. Los tipos comunes son **`screen`** (pantallas de dispositivos), **`print`** (para impresión) y **`all`** (todos los dispositivos).

**`condición`**: Define una o más condiciones que deben cumplirse para que se apliquen los estilos dentro de la Media Query. Las condiciones comunes incluyen ancho máximo (**`max-width`**), ancho mínimo (**`min-width`**), orientación (**`orientation`**), densidad de píxeles (**`min-resolution`**), etc.

**Ejemplo:**

`/* Estilos para dispositivos con un ancho máximo de 768px */
@media screen and (max-width: 768px) {
    body {
        font-size: 16px;
    }

    .container {
        width: 90%;
        margin: 0 auto;
    }
}`

En este ejemplo, los estilos se aplicarán cuando la pantalla tenga un ancho máximo de 768px, como en dispositivos móviles.

**Consideraciones importantes:**

Las Media Queries te permiten crear diseños responsivos que se ajusten a una amplia variedad de dispositivos y tamaños de pantalla.

Es importante considerar las necesidades y comportamientos de los usuarios en diferentes dispositivos al diseñar y aplicar Media Queries.

Puedes utilizar múltiples Media Queries anidadas para aplicar estilos específicos a diferentes rangos de tamaños de pantalla.

Las Media Queries son una parte esencial del diseño web moderno y ayudan a garantizar una experiencia de usuario consistente en todos los dispositivos.

![Untitled](Apuntes%20personales%20de%20programacio%CC%81n%2034801733d96a4e289f62f94f3ab9be44/Untitled%203.png)

## FlexBox

Flexbox, o Flexible Box Layout, es un modelo de diseño en CSS que permite crear diseños más complejos y flexibles en una página web. Con Flexbox, puedes controlar la distribución y el alineamiento de los elementos dentro de un contenedor de manera más intuitiva y eficiente que con métodos tradicionales como float o inline-block.

**Principales conceptos de Flexbox:

Contenedor Flex (Flex Container)**: Es el elemento padre que contiene los elementos hijos (flex items) que se van a distribuir y alinear. Para convertir un elemento en un contenedor flex, se aplica la propiedad **`display: flex`** o **`display: inline-flex`**.

**Elementos Flex (Flex Items)**: Son los elementos hijos directos del contenedor flex que se distribuyen y alinean dentro de él.

**Eje Principal (Main Axis)**: Es la dirección principal de la distribución de los elementos flex dentro del contenedor. Se define con la propiedad **`flex-direction`** y puede ser horizontal (row) o vertical (column).

**Eje Secundario (Cross Axis)**: Es la dirección perpendicular al eje principal. Se utiliza para controlar el alineamiento de los elementos flex que no ocupan todo el espacio disponible en el eje principal.

**Flexibilidad (Flexibility)**: Los elementos flex tienen la capacidad de crecer y contraer para ocupar el espacio disponible dentro del contenedor flex. Se utiliza la propiedad **`flex`** para especificar cómo se distribuye el espacio adicional o restante entre los elementos flex.

**Ejemplo básico de Flexbox:**

`.container {
    display: flex;
    flex-direction: row; /* Por defecto, flex items se alinean horizontalmente */
    justify-content: space-between; /* Distribuye los elementos flex de manera uniforme a lo largo del eje principal */
    align-items: center; /* Centra los elementos flex en el eje secundario */
}

.item {
    flex: 1; /* Todos los elementos flex tienen la misma flexibilidad y ocupan el mismo espacio disponible */
}`

**Ventajas de Flexbox:**

Simplifica el diseño de páginas web complejas.

Ofrece un mayor control sobre el espaciado y la alineación de los elementos.

Facilita la creación de diseños responsivos y adaptables.

Reduce la dependencia de técnicas de diseño más antiguas y complejas como float y inline-block.

**Consideraciones importantes:**

Flexbox no es adecuado para todos los diseños y situaciones. En algunos casos, puede ser más apropiado utilizar otras técnicas de diseño, como Grid Layout o combinaciones de varias técnicas.

Es importante practicar y experimentar con Flexbox para comprender completamente sus capacidades y limitaciones.

![flexBox.png](Apuntes%20personales%20de%20programacio%CC%81n%2034801733d96a4e289f62f94f3ab9be44/flexBox.png)

## Grid

CSS Grid Layout es una tecnología que permite crear diseños de página web más complejos y estructurados que Flexbox. Con CSS Grid, puedes dividir el espacio de la página en filas y columnas, y luego colocar elementos en estas áreas definidas, lo que ofrece un mayor control sobre la disposición de los elementos en comparación con Flexbox.

**Principales conceptos de CSS Grid:

Grid Container (Contenedor de Cuadrícula)**: Es el elemento padre que contiene los elementos hijos que se van a organizar en una cuadrícula. Se convierte en un contenedor de cuadrícula utilizando la propiedad **`display: grid`**.

**Grid Items (Elementos de la Cuadrícula)**: Son los elementos hijos directos del contenedor de cuadrícula que se colocan dentro de la cuadrícula.

**Filas (Rows) y Columnas (Columns)**: La cuadrícula se divide en filas horizontales y columnas verticales. Puedes definir el tamaño y la cantidad de filas y columnas utilizando las propiedades **`grid-template-rows`** y **`grid-template-columns`**.

**Áreas de la Cuadrícula (Grid Areas)**: Puedes agrupar celdas adyacentes de la cuadrícula en áreas más grandes y significativas, lo que facilita la organización visual del diseño de la página.

**Alineación (Alignment)**: Puedes alinear los elementos de la cuadrícula dentro de sus celdas y ajustar la alineación de la cuadrícula en su contenedor utilizando propiedades como **`justify-items`**, **`align-items`**, **`justify-content`** y **`align-content`**.

**Ejemplo básico de CSS Grid:**

`.container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr; /* Divide el contenedor en tres columnas de igual tamaño */
    grid-template-rows: 100px 200px; /* Define dos filas con alturas específicas */
    gap: 10px; /* Define el espacio entre las filas y columnas */
}

.item {
    grid-column: 2 / 4; /* Coloca el elemento en las columnas 2 y 3 */
    grid-row: 1 / 3; /* Coloca el elemento en las filas 1 y 2 */
}`

**Ventajas de CSS Grid:

``**Proporciona un mayor control sobre el diseño y la estructura de la página en comparación con otras técnicas de diseño.

Permite crear diseños más complejos y sofisticados con menos código.

Facilita la creación de diseños responsivos y adaptables sin necesidad de usar técnicas complejas de CSS o JavaScript.

**Consideraciones importantes:**

CSS Grid es compatible con la mayoría de los navegadores modernos, pero es posible que necesites proporcionar un diseño alternativo para navegadores más antiguos que no admitan Grid.

Es importante entender los fundamentos de CSS Grid, como filas, columnas, áreas de la cuadrícula y alineación, para aprovechar al máximo esta tecnología. Experimenta y practica para familiarizarte con su uso y aplicaciones.

![Grid.png](Apuntes%20personales%20de%20programacio%CC%81n%2034801733d96a4e289f62f94f3ab9be44/Grid.png)

## 

## Javascript

Si usamos la notación `this.variable` podemos usar hasta fuera del `scope` { }.

EVENTOS —> [https://www.w3schools.com/tags/ref_eventattributes.asp](https://www.w3schools.com/tags/ref_eventattributes.asp)

`onClick=(”funcionMostrar”)`  se usa para agregar funcionalidad a un boton desde html hacia JS. Por ejemplo si queremos mostrar en pantalla hariamos:

`document.getElementById(’seleccionable’).innerHTML = Date();`

onmouseover=”funcionMostrar()”  —> Al pasar el cursor por arriba se activa el evento.

onmouseout=”funcionMostrar()” —> Al sacar el cursor de encima se ejecuta el evento.

onchange=”funcionMostrar()” —> Esto al poner en un seleccionable, al cambiar de opción se ejecuta el evento.

Comparación

Si usamos `variable===variable` podemos comparar a través del valor absoluto ( sin importar el tipo de dato.

Metodos String

`texto.slice(4,7)` —> Corta el String desde el 4 al 7.

`texto.substr(4,7)` —> Ya no se usa

`texto.replace(’palabraNueva’, ‘palabraVieja’` —> Cambia el texto segun lo mandado.

`texto.toUpperCase`(), `texto.toLowerCase()`. `texto.Capitalize()` -→ Cambia mayusculas y minusculas según el caso.

`texto.concat(texto2)` —> Concatena texto.

`texto.trim()` —> Saca los espacios vacios de adelante y atras del string.

`texto.trimStart()` —> Saca los espacios del inicio.

`texto.trimEnd()` —> Saca los espacios del final.

`texto.charAt(5)` —> Consigue la letra en el indice 5.

`texto.split(’.’)` —>  Este metodo sirve para cuando queremos dividir el String en arrays partiendo de un caracter que le mandamos. Por ejemplo “hola. Argentina. Mundo” me devolveria 3 arrays.

`texto.split(’’)`   —> Si mandamos el split sin parametros, nos divide el string caracter por caracter en un array.
