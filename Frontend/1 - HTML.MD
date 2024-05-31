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
