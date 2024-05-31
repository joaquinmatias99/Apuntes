
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