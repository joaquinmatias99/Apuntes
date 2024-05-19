
## Javascript



EVENTOS —> [https://www.w3schools.com/tags/ref_eventattributes.asp](https://www.w3schools.com/tags/ref_eventattributes.asp)

`onClick=(”funcionMostrar”)`  se usa para agregar funcionalidad a un boton desde html hacia JS. Por ejemplo si queremos mostrar en pantalla hariamos:

`document.getElementById(’seleccionable’).innerHTML = Date();`

onmouseover=”funcionMostrar()”  —> Al pasar el cursor por arriba se activa el evento.

onmouseout=”funcionMostrar()” —> Al sacar el cursor de encima se ejecuta el evento.

onchange=”funcionMostrar()” —> Esto al poner en un seleccionable, al cambiar de opción se ejecuta el evento.

### Comparación

Si usamos `variable===variable` podemos comparar a través del valor absoluto ( sin importar el tipo de dato.

### Metodos String

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