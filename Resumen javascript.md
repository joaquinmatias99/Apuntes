# JavaScript

## Javascript en HTML
Integrar JavaScript en HTML usando la etiqueta `<script>`. Los scripts pueden incluirse directamente en el HTML o enlazarse desde archivos externos.

## Declaraciones y asignaciones
Declarar variables con `var`, `let` y `const`:
- `var` tiene alcance de función y permite redefinir variables.
- `let` tiene alcance de bloque y no permite redefinir variables.
- `const` tiene alcance de bloque y se utiliza para valores constantes.

## Datos Number y String
Tipos de datos numéricos y de cadena:
- Números: enteros y decimales.
- Cadenas: texto delimitado por comillas simples o dobles.

## Operadores en Javascript
Operadores:
- Aritméticos: `+`, `-`, `*`, `/`, `%`.
- De asignación: `=`, `+=`, `-=`, etc.
- De comparación: `==`, `===`, `!=`, `!==`, `>`, `<`, etc.
- Lógicos: `&&`, `||`, `!`.

## Sintaxis de las variables
Sintaxis correcta para declarar variables:
- Las variables deben comenzar con una letra, `$` o `_`.
- Uso de nombres significativos y en `camelCase`.

## Scope (disponibilidad)
Ámbito de las variables:
- Scope global: variables accesibles en cualquier parte del código.
- Scope local: variables accesibles solo dentro de la función o bloque donde se definen.

Si usamos la notación `this.variable` podemos usar hasta fuera del `scope` { }.

## Tipos de datos
Tipos de datos primitivos:
- `Number`, `String`, `Boolean`, `Null`, `Undefined`, `Symbol`.
- Objetos y funciones como tipos de datos no primitivos.

## Operadores lógicos
Uso de operadores lógicos:
- `&&` (AND): ambas condiciones deben ser verdaderas.
- `||` (OR): al menos una condición debe ser verdadera.
- `!` (NOT): invierte el valor lógico.

Si usamos `variable===variable` podemos comparar a través del valor absoluto ( sin importar el tipo de dato.

## NODE.JS (Consola)
Ejecución de JavaScript en Node.js:
- Uso de `node` en la consola para ejecutar scripts.
- Módulos integrados y manejo de paquetes con `npm`.

## Funciones
Definir y utilizar funciones:
- Declaración con `function` y funciones anónimas.
- Parámetros y valores de retorno.
- Funciones flecha (`=>`) para una sintaxis más corta.

## Objetos (literales)
Trabajar con objetos literales:
- Creación de objetos con `{}`.
- Propiedades y métodos de los objetos.
- Acceso y modificación de propiedades.

## Eventos (del DOM)
Manejo del DOM y eventos:
- Selección de elementos con `getElementById`, `querySelector`, etc.
- Añadir y manejar eventos con `addEventListener`.

Referencia de atributos de eventos: [W3Schools - Event Attributes](https://www.w3schools.com/tags/ref_eventattributes.asp)

- `onClick="funcionMostrar()"`: Agrega funcionalidad a un botón desde HTML hacia JS. Por ejemplo, para mostrar la fecha en pantalla:
  ```javascript
  document.getElementById('seleccionable').innerHTML = Date();

onmouseover=”funcionMostrar()”  —> Al pasar el cursor por arriba se activa el evento.

onmouseout=”funcionMostrar()” —> Al sacar el cursor de encima se ejecuta el evento.

onchange=”funcionMostrar()” —> Esto al poner en un seleccionable, al cambiar de opción se ejecuta el evento.

## Strings
Manejo de cadenas:
- Métodos como `concat()`, `slice()`, `substring()`, `toUpperCase()`, `toLowerCase()`.
- Plantillas literales (template literals) usando backticks (` `).

### Métodos String

- `texto.slice(4,7)`: Corta el String desde el 4 al 7.
- Ejemplo: Si `texto` es `"abcdefgh"`, `texto.slice(4,7)` devuelve `"efg"`.

- `texto.substr(4,7)`: Ya no se usa.
- Ejemplo: No se proporciona debido a que este método ya no se recomienda.

- `texto.replace('palabraNueva', 'palabraVieja')`: Cambia el texto según lo mandado.
- Ejemplo: Si `texto` es `"Hola mundo"`, `texto.replace('mundo', 'amigo')` devuelve `"Hola amigo"`.

- `texto.toUpperCase()`, `texto.toLowerCase()`, `texto.Capitalize()`: Cambian mayúsculas y minúsculas según el caso.
- Ejemplo: Si `texto` es `"Hola Mundo"`, `texto.toUpperCase()` devuelve `"HOLA MUNDO"`, `texto.toLowerCase()` devuelve `"hola mundo"`, y `texto.capitalize()` no es un método válido en JavaScript.

- `texto.concat(texto2)`: Concatena texto.
- Ejemplo: Si `texto` es `"Hola"` y `texto2` es `" Mundo"`, `texto.concat(texto2)` devuelve `"Hola Mundo"`.

- `texto.trim()`: Saca los espacios vacíos de adelante y atrás del string.
- Ejemplo: Si `texto` es `"   Hola Mundo   "`, `texto.trim()` devuelve `"Hola Mundo"`.

- `texto.trimStart()`: Saca los espacios del inicio.
- Ejemplo: Si `texto` es `"   Hola Mundo"`, `texto.trimStart()` devuelve `"Hola Mundo"`.

- `texto.trimEnd()`: Saca los espacios del final.
- Ejemplo: Si `texto` es `"Hola Mundo   "`, `texto.trimEnd()` devuelve `"Hola Mundo"`.

- `texto.charAt(5)`: Consigue la letra en el índice 5.
- Ejemplo: Si `texto` es `"Hola Mundo"`, `texto.charAt(5)` devuelve `"M"`.

- `texto.split('.')`: Este método sirve para dividir el String en arrays partiendo de un carácter que le mandamos. Por ejemplo, “hola. Argentina. Mundo” devolvería 3 arrays.
- Ejemplo: Si `texto` es `"Hola.Mundo.Planeta"`, `texto.split('.')` devuelve `["Hola", "Mundo", "Planeta"]`.

- `texto.split('')`: Si mandamos el split sin parámetros, nos divide el string carácter por carácter en un array.
- Ejemplo: Si `texto` es `"Hola"`, `texto.split('')` devuelve `["H", "o", "l", "a"]`.

## Array (arreglos, listas)
Trabajar con arreglos:
- Métodos para manipular arreglos: `push()`, `pop()`, `shift()`, `unshift()`, `splice()`, `slice()`, `map()`, `filter()`, `reduce()`.
- Iteración sobre arreglos con bucles y métodos.

## Date (fechas)

En JavaScript, los meses de un objeto `Date` se indexan desde 0, lo que significa que en lugar de comenzar con el mes 1 para enero, se comienza con el mes 0. Por lo tanto, la secuencia de meses es la siguiente:

- Enero: 0 
- Febrero: 1
- Marzo: 2
- Abril: 3
- Mayo: 4
- Junio: 5
- Julio: 6
- Agosto: 7
- Septiembre: 8
- Octubre: 9
- Noviembre: 10
- Diciembre: 11


### Metodos de Fecha

- `getDate()`: Obtiene el día del mes (del 1 al 31).
- `getDay()`: Obtiene el día de la semana (del 0 al 6, donde 0 es domingo).
- `getFullYear()`: Obtiene el año de la fecha especificada.
- `getHours()`: Obtiene la hora (0 a 23) de la fecha especificada.
- `getMinutes()`: Obtiene los minutos (0 a 59) de la fecha especificada.
- `getMonth()`: Obtiene el mes (del 0 al 11) de la fecha especificada.
- `getSeconds()`: Obtiene los segundos (0 a 59) de la fecha especificada.
- `getTime()`: Devuelve el valor numérico de la fecha especificada como el número de milisegundos desde la época.
- `setDate()`: Establece el día del mes (del 1 al 31) para la fecha especificada.
- `setFullYear()`: Establece el año para la fecha especificada.
- `setHours()`: Establece la hora (0 a 23) para la fecha especificada.
- `setMinutes()`: Establece los minutos (0 a 59) para la fecha especificada.
- `setMonth()`: Establece el mes (del 0 al 11) para la fecha especificada.
- `setSeconds()`: Establece los segundos (0 a 59) para la fecha especificada.
- `setTime()`: Establece la fecha y hora para el objeto Date.
- `toDateString()`: Devuelve la parte de la fecha de la fecha especificada como una cadena legible para humanos en el formato de día de la semana, mes, día y año.
- `toISOString()`: Devuelve una cadena en formato ISO (yyyy-mm-ddTHH:MM:SS.sssZ) de la fecha especificada.
- `toJSON()`: Devuelve la fecha en formato JSON.
- `toString()`: Devuelve una cadena que representa el objeto Date.



## Objeto Math
Uso del objeto `Math`:

Métodos matemáticos como 

- `Math.random()`: Retorna un número pseudoaleatorio entre 0 (inclusive) y 1 (exclusivo). Este método es útil para generar valores aleatorios para simulaciones o juegos.

- `Math.floor()`: Retorna el mayor número entero menor o igual a un número. Por ejemplo, `Math.floor(5.7)` retorna 5. Se utiliza comúnmente para truncar decimales hacia abajo.

- `Math.ceil()`: Retorna el menor número entero mayor o igual a un número. Por ejemplo, `Math.ceil(5.1)` retorna 6. Se utiliza comúnmente para redondear hacia arriba.

- `Math.round()`: Retorna el valor de un número redondeado al entero más cercano. Si la fracción es igual a 0.5, se redondea hacia el número par más cercano. Por ejemplo, `Math.round(5.5)` retorna 6 y `Math.round(5.4)` retorna 5.

- `Math.max()`: Retorna el mayor de cero o más números dados. Por ejemplo, `Math.max(10, 20, 30)` retorna 30. Se utiliza para encontrar el valor máximo en un conjunto de números.

- `Math.min()`: Retorna el menor de cero o más números dados. Por ejemplo, `Math.min(10, 20, 30)` retorna 10. Se utiliza para encontrar el valor mínimo en un conjunto de números.


## If/Else/Switch (Condicionales)
Control del flujo del programa:
- Condicionales `if`, `else if`, `else`.
- Sentencias `switch` para múltiples condiciones.

## For, While, DoWhile (Bucles)
Estructuras de repetición:
- Bucles `for`, `while`, `do...while`.
- Uso de `break` y `continue` para controlar el flujo dentro de los bucles.

## Sets y Maps
Colecciones `Set` y `Map`:
- `Set` para almacenar valores únicos.
- `Map` para pares clave-valor.
- Métodos y propiedades de `Set` y `Map`.

## TypeOf & InstanceOf
Determinar tipos de datos:
- `typeof` para verificar tipos primitivos.
- `instanceof` para verificar instancias de objetos.

## Conversiones de datos
Convertir entre tipos de datos:
- Conversión implícita y explícita.
- Métodos como `Number()`, `String()`, `Boolean()`, `parseInt()`, `parseFloat()`.

## Regex: Expresiones Regulares
Uso de expresiones regulares:
- Creación de patrones para buscar y manipular texto.
- Métodos `test()`, `exec()`, `match()`, `replace()`.

### Caracteres Especiales
- .: Coincide con cualquier carácter excepto una nueva línea.
- ^: Coincide con el inicio de una cadena.
- $: Coincide con el final de una cadena.
- *: Coincide con el carácter anterior 0 o más veces.
- +: Coincide con el carácter anterior 1 o más veces.
- ?: Coincide con el carácter anterior 0 o 1 vez.
- {n}: Coincide exactamente con n repeticiones del carácter anterior.
- {n,}: Coincide con n o más repeticiones del carácter anterior.
- {n,m}: Coincide con al menos n y no más de m repeticiones del carácter anterior.
- []: Define un conjunto de caracteres.
- [^]: Define un conjunto de caracteres que no deben coincidir.
- |: Alternancia (o lógico).
- \: Escapa caracteres especiales.

### Conjuntos de Caracteres Predefinidos
- \d: Coincide con cualquier dígito (equivalente a [0-9]).
- \D: Coincide con cualquier carácter que no sea un dígito.
- \w: Coincide con cualquier carácter alfanumérico (equivalente a [A-Za-z0-9_]).
- \W: Coincide con cualquier carácter no alfanumérico.
- \s: Coincide con cualquier carácter de espacio en blanco (espacios, tabulaciones, saltos de línea).
- \S: Coincide con cualquier carácter que no sea un espacio en blanco.
#### Métodos Principales
- test() Comprueba si hay una coincidencia en una cadena. Devuelve true o false.

```javascript
const regex = /hello/;
console.log(regex.test('hello world')); // true
```

- exec() Busca una coincidencia en una cadena y devuelve un array con los detalles de la coincidencia o null si no hay coincidencia.

```javascript
const regex = /hello/;
const result = regex.exec('hello world');
console.log(result); // ["hello", index: 0, input: "hello world", groups: undefined]
```

- match() Busca coincidencias en una cadena y devuelve un array con las coincidencias o null si no hay coincidencia. Funciona con cadenas de texto.

```javascript
const str = 'hello world';
const regex = /hello/;
console.log(str.match(regex)); // ["hello", index: 0, input: "hello world", groups: undefined]
```

- replace() Busca coincidencias en una cadena y reemplaza las coincidencias encontradas con una nueva subcadena.

```javascript
const str = 'hello world';
const regex = /hello/;
console.log(str.replace(regex, 'hi')); // "hi world"
```

Flags (Modificadores)
- g: Búsqueda global, encuentra todas las coincidencias.
- i: Búsqueda insensible a mayúsculas y minúsculas.
- m: Búsqueda en modo multilínea.
- s: Permite que . coincida con caracteres de nueva línea.
- u: Habilita el modo unicode para la coincidencia.
- y: Búsqueda pegajosa que busca coincidencias a partir de la posición actual en la cadena.

Ejemplos Comunes
Validar una dirección de correo electrónico
```javascript
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
console.log(emailRegex.test('user@example.com')); // true
```

Validar un número de teléfono (formato 123-456-7890)
```javascript
const phoneRegex = /^\d{3}-\d{3}-\d{4}$/;
console.log(phoneRegex.test('123-456-7890')); // true
```
Extraer todas las palabras de una cadena

```javascript
const text = 'Hello, how are you?';
const words = text.match(/\b\w+\b/g);
console.log(words); // ["Hello", "how", "are", "you"]
```





## Try & Catch (Manejo de Errores Síncronos)

El manejo de errores en JavaScript se realiza a menudo utilizando bloques `try...catch`. Estos bloques permiten detectar y manejar errores para mantener la estabilidad del programa, evitando que los errores no controlados provoquen fallos inesperados.

### Uso de `try...catch`

Un bloque `try...catch` consta de dos partes principales:
- `try`: Contiene el código que puede lanzar una excepción.
- `catch`: Contiene el código que se ejecuta si ocurre una excepción en el bloque `try`.

### Sintaxis Básica

```javascript
try {
    // Código que puede lanzar un error
    console.log("Intentando ejecutar código...");
    throw new Error("Ocurrió un error!");
} catch (error) {
    // Código para manejar el error
    console.log("Se capturó un error:", error.message);
}finally{
    //Se ejecuta siempre
    console.log("Se ejecuta siempre");
}
```

## Callbacks

### Uso de Funciones Callback

Una función callback es una función que se pasa como argumento a otra función y se ejecuta después de que se complete una tarea. Los callbacks son una forma común de manejar operaciones asíncronas en JavaScript, como la lectura de archivos, consultas a bases de datos o solicitudes de red.

### Características de los Callbacks

- **Definición**: Una función que se pasa como argumento a otra función y se llama dentro de esa función.
- **Asincronía**: Permiten ejecutar código después de que se haya completado una operación asíncrona.
- **Control de Flujo**: Facilitan la organización y el manejo del flujo de operaciones asíncronas.

### Ejemplo Básico

```javascript
function mostrarConsola(num) {
    console.log(num);
}

function calcular(num1, num2, callback) {
    let suma =num1+num2;
    callback(suma);
}

calcular(1,3,mostrarConsola);
// Salida:
// 4
```

## Promesas

### Manejo de Promesas

Las promesas en JavaScript son objetos que representan la eventual finalización (o falla) de una operación asíncrona y su valor resultante. Las promesas proporcionan una forma más limpia y manejable de trabajar con operaciones asíncronas en comparación con los callbacks anidados.

- Crear y usar promesas con `new Promise()`.
- Métodos `then()`, `catch()`, `finally()` para manejar el flujo asíncrono.

### Crear y Usar Promesas

Las promesas se crean utilizando el constructor `new Promise()`, que toma una función ejecutora con dos argumentos: `resolve` y `reject`. 

```javascript
let promesa1 = new Promise ((response) => {
  setTimeout(() =>{
    let resp = {
      response:200,
      description: '1 Esta info es importante'
    }
    response(resp);
  }, 3000);
  
})

let promesa2 = new Promise ((response) => {
  setTimeout(() =>{
    let resp = {
      response:200,
      description: '2 esta info es importante pero suele demorar mucho'
    }
    response(resp);
  }, 5000);
  
})

let promesa3 = new Promise ((response) => {
  setTimeout(() =>{
    let resp = {
      response:200,
      description: '3 Esta info es rapida'
    }
    response(resp);
  }, 2500);
  
})


promesa1.then(res =>{
    console.log(res.description)
    promesa2.then(res =>{
        console.log(res.description)
        promesa3.then(res =>{
            console.log(res)
        }).catch(error => {
          console.warn(error)
        })
    }).catch(error=> {
      console.warn(error)
    })
}).catch(error => {
  console.warn(error)
})
//Este codigo lo ejecuta de manera secuencia pero no es tan comodo de usar, por eso usamos await y async
```


## Async & Await

### Sintaxis para Manejar Promesas

`async` y `await` son características de JavaScript que simplifican la escritura y el manejo de código asíncrono basado en promesas.

### Uso de `async`

La palabra clave `async` se utiliza para declarar que una función devuelve una promesa. Permite que la función sea ejecutada de forma asíncrona y que pueda utilizar `await` dentro de ella.

```javascript
async function ejecutarPromesas() {
  let respuestaProm1 = await promesa1;
  console.log(respuestaProm1);
  let respuestaProm2 = await promesa2;
  console.log(respuestaProm2);
  let respuestaProm3 = await promesa3;
  console.log(respuestaProm3);
  }

  ejecutarPromesas();
```

## Fetch, APIs, JSON
Interacción con APIs:
- Uso de `fetch()` para realizar solicitudes HTTP.
- Manipulación de datos en formato JSON con `JSON.parse()` y `JSON.stringify()`.
