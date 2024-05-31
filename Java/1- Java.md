# Apuntes personales de programación

## ¿Qué es Java?
Es un lenguaje de programación de alto nivel y orientado a objetos, que fue
desarrollado por Sun Microsystems (actualmente adquirido por Oracle) en la
década de 1990. Es conocido por su portabilidad, lo que significa que los
programas escritos en Java pueden ejecutarse en diferentes plataformas sin
necesidad de realizar cambios significativos en el código fuente. Java es un
lenguaje de programación popular que se utiliza para desarrollar una variedad de
software, desde aplicaciones de escritorio hasta aplicaciones web y móviles.
En Java, puedes crear dos tipos principales de programas: aplicaciones y
applets. Las aplicaciones son programas independientes que se ejecutan en el
sistema operativo de una computadora, mientras que los applets son pequeñas
aplicaciones diseñadas para ser ejecutadas dentro de un navegador web.

## Características del lenguaje
Java posee algunas características distintivas:

● Portabilidad 🤳: es altamente portátil, lo que significa que el código Java puede ejecutarse en diferentes plataformas sin cambios significativos. Esto se logra mediante el uso de la Máquina Virtual de Java (JVM), que
interpreta el código Java y la ejecuta en cualquier dispositivo o sistema operativo que tenga una implementación de JVM.

● Orientación a objetos 🚗: está diseñado siguiendo el paradigma de
programación orientada a objetos (POO). Esto significa que se basa en la
creación y manipulación de objetos, lo que promueve la modularidad,
reutilización de código y facilita el mantenimiento y la escalabilidad de las aplicaciones.

● Seguridad 🔐: tiene un enfoque fuerte en seguridad. El código se ejecuta en un entorno controlado, lo que ayuda a prevenir posibles vulnerabilidades y protege los sistemas de ejecutar código malicioso.

● Multiplataforma🖱: permite desarrollar aplicaciones que son
independientes de la plataforma, lo que significa que pueden ejecutarse en diferentes sistemas operativos, como Windows, macOS, Linux, entre otros.

● Bibliotecas y comunidad amplias📚: cuenta con una amplia gama de
bibliotecas y frameworks disponibles que facilitan el desarrollo de
aplicaciones.

## ¿Qué es la JVM (Java Virtual Machine)?💻

JVM, en español Máquina Virtual de Java es la encargada de interpretar y ejecutar el código Java. Proporciona portabilidad, gestión automática de la memoria y características de seguridad para las aplicaciones Java, permitiendo que se ejecuten en diferentes sistemas operativos sin necesidad de modificar el código fuente, es decir permite, provee una capa que permite que un programa compilado pueda ejecutarse en la JVM sin necesidad estar preparada para la plataforma.

## Bytecode

Es un código intermedio que se genera cuando se compila un programa Java. Es un conjunto de instrucciones de bajo nivel que está diseñado para ser ejecutado por la JVM.
El bytecode es independiente de la plataforma, lo que significa que puede ser ejecutado en cualquier sistema operativo que tenga una implementación de JVM.

## JDK (Java Development Kit)

Es un conjunto de herramientas que necesitas para desarrollar aplicaciones en Java. Contiene varios componentes importantes:

↪ Java Runtime Environment (JRE): Es el entorno de ejecución de Java y
esencialmente, es lo que necesitas para ejecutar programas Java en tu computadora. Incluye la máquina virtual de Java (JVM) que permite que el código Java se ejecute en diferentes plataformas. Proporciona las
bibliotecas y componentes necesarios para ejecutar aplicaciones Java en un sistema. Incluye la JVM, que interpreta y ejecuta el bytecode generado por el compilador.

↪ Compilador Java: Es una herramienta que convierte el código fuente
escrito en Java en un formato que la máquina virtual de Java (JVM) puede entender y ejecutar. El compilador convierte el código fuente (escrito por el programador) en bytecode (código intermedio) que puede ser ejecutado por la JVM.

↪ API de Java (Application Programming Interface): Son conjuntos de
clases y métodos predefinidos que podes utilizar para realizar diversas tareas en Java. Por ejemplo, hay APIs para manejar gráficos, redes, entrada/salida de datos, entre otros.

En resumen, el JDK es un conjunto de herramientas para desarrollar aplicaciones
Java, el JRE es el entorno de ejecución para ejecutar aplicaciones Java y el
bytecode es el código intermedio generado por el compilador de Java que es
interpretado por la JVM.

## Build path

El Build Path, o ruta de compilación, en Java se refiere a la configuración que le indica al entorno de desarrollo dónde encontrar las dependencias necesarias para compilar un proyecto. Estas dependencias pueden incluir archivos JAR, bibliotecas externas, directorios de clases y recursos adicionales que el proyecto
necesita para su compilación y ejecución.

La configuración del Build Path es esencial para asegurar que el entorno de desarrollo pueda encontrar todas las clases y recursos necesarios para compilar el proyecto con éxito. Sin una configuración adecuada del Build Path, el compilador no podrá encontrar las clases o bibliotecas externas requeridas, lo que resultará en errores de compilación.

La configuración del Build Path se realiza típicamente en el entorno de desarrollo integrado (IDE) utilizado para desarrollar el proyecto. Los IDEs como Eclipse y IntelliJ IDEA proporcionan herramientas para agregar y gestionar las dependencias del proyecto en el Build Path de forma fácil y eficiente.

Al configurar el Build Path, es importante tener en cuenta la jerarquía de dependencias del proyecto y asegurarse de que todas las dependencias necesarias estén incluidas y se resuelvan correctamente. Una configuración adecuada del Build Path garantiza que el proyecto se compile sin problemas y que todas las dependencias se incluyan correctamente en el archivo JAR o en el resultado final del proyecto.

## Class Path en Java

El Class Path, o ruta de clases, en Java es una configuración que le indica a la Máquina Virtual de Java (JVM) dónde buscar las clases y recursos necesarios para la ejecución de un programa. Esta configuración es esencial para asegurar que la JVM pueda encontrar todas las clases y recursos requeridos durante la ejecución de un programa Java.

Cuando ejecutas un programa Java, la JVM utiliza el Class Path para cargar las clases y recursos necesarios desde el sistema de archivos o desde ubicaciones específicas configuradas en el entorno de ejecución. Si una clase o recurso no se encuentra en el Class Path, la JVM generará un error de clase no encontrada. El Class Path puede configurarse de varias maneras:

1. Class Path por defecto: La JVM utiliza automáticamente un conjunto de ubicaciones predefinidas para buscar clases y recursos. Estas ubicaciones incluyen el directorio actual (donde se encuentra el archivo .class principal), las bibliotecas de la extensión de Java (extension libraries) y el class path del entorno (si está configurado).
2. Class Path explícito: podes especificar el Class Path de forma explícita al ejecutar un programa Java utilizando la opción "-cp" o "--classpath" seguida de una lista de directorios y archivos JAR separados por puntos y/o el separador de ruta de archivos específico del sistema operativo (":" en Unix/Linux, ";" en Windows).
3. Class Path configurado en el entorno de desarrollo: Algunos entornos de desarrollo (IDEs) permiten configurar el Class Path de forma visual o mediante archivos de configuración específicos del proyecto. Esto facilita la gestión de dependencias y la distribución de proyectos Java.
   
Es importante entender cómo configurar el Class Path correctamente para garantizar que la JVM pueda encontrar todas las clases y recursos necesarios durante la ejecución de un programa Java. Una configuración adecuada del ClassPath es crucial para evitar errores de clase no encontrada y garantizar el correcto
funcionamiento del programa.

## Ejecución y Depuración:

La depuración es un proceso crucial en el desarrollo de software, especialmente
en Java, donde la detección y corrección de errores pueden ser desafiantes
debido a la naturaleza del lenguaje y la complejidad de los programas.
La depuración implica ejecutar el programa paso a paso, observar el flujo de
ejecución y examinar el estado de las variables en diferentes puntos del
programa. Esto ayuda a identificar posibles problemas de lógica, errores de
sintaxis, excepciones no controladas y otros errores que pueden provocar un
comportamiento inesperado o incorrecto del programa.
Las herramientas de depuración en entornos de desarrollo integrados (IDEs)
como Eclipse y IntelliJ IDEA ofrecen una variedad de funcionalidades para facilitar
el proceso de depuración. Estas herramientas permiten establecer puntos de
interrupción en el código, inspeccionar variables, seguir la ejecución paso a paso,
ejecutar el programa en modo de pausa y mucho más.
Es fundamental que los desarrolladores comprendan el proceso de depuración y
utilicen estas herramientas de manera efectiva para identificar y corregir errores
en el código Java. La habilidad para depurar de manera eficiente puede acelerar
el desarrollo, mejorar la calidad del código y reducir el tiempo necesario para
solucionar problemas en el software.

### Concepto de Ejecución:

● En el contexto del desarrollo de software, la ejecución se refiere al proceso
de llevar a cabo un programa informático para que realice sus funciones
previstas.

● Durante la ejecución, el programa se carga en la memoria, se procesa por
la CPU y se produce la salida deseada, que puede ser visible para el usuario o almacenada en algún formato.

### Concepto de Depuración:

● La depuración es el proceso de identificar, analizar y corregir los errores
(bugs) presentes en el código de un programa.

● A través de la depuración, los desarrolladores pueden resolver problemas
como errores de lógica, excepciones no controladas, fallos de rendimiento y
comportamientos inesperados.

### Importancia de la Ejecución y Depuración:

● La ejecución es fundamental para probar y validar el funcionamiento de un
programa antes de su implementación en un entorno de producción.

● La depuración es esencial para identificar y corregir errores que pueden
afectar la funcionalidad, la seguridad y la estabilidad del software.

● Ambos procesos son cruciales para garantizar que un programa cumpla
con los requisitos establecidos y funcione correctamente bajo diversas
condiciones.

### Flujo de Ejecución y Depuración:

● El flujo de ejecución de un programa describe el orden en el que se
ejecutan las instrucciones dentro del código.

● Durante la ejecución, el flujo sigue las instrucciones secuenciales del
código, a menos que se encuentren estructuras de control como bucles,
condicionales o llamadas a funciones que alteren el flujo normal.
Impacto de la Depuración en el Flujo de Ejecución:

● Durante el proceso de depuración, el flujo de ejecución puede verse
afectado por puntos de interrupción (breakpoints) colocados por el
desarrollador para detener la ejecución en puntos específicos del código.

● Al alcanzar un punto de interrupción, la ejecución se pausa y el
desarrollador puede inspeccionar el estado del programa, como el valor de
las variables, y analizar el comportamiento hasta ese punto.

#### Técnicas y Herramientas de Depuración:

● Las técnicas de depuración incluyen la ejecución paso a paso
(step-by-step), la inspección de variables, la visualización de la pila de
llamadas (call stack), la búsqueda de expresiones (watch expressions) y la
identificación de puntos de fallo.

● Las herramientas de depuración proporcionadas por los entornos de
desarrollo integrado (IDEs), como Eclipse, IntelliJ IDEA, ofrecen
funcionalidades para realizar estas técnicas de depuración de manera
eficiente.

## Resumen

Java es un lenguaje de programación ampliamente utilizado en la industria del
software. La evolución de Java a lo largo de sus versiones ha introducido nuevas
características y mejoras significativas.

El JDK es un conjunto de herramientas para el desarrollo de aplicaciones Java,
mientras que el JRE proporciona el entorno de ejecución necesario para ejecutar
aplicaciones Java.

Eclipse IDE es un entorno de desarrollo integrado que facilita la escritura,
compilación y depuración de código Java, ofreciendo herramientas y
características adicionales para agilizar el proceso de desarrollo.
Con Eclipse IDE y las herramientas proporcionadas por el JDK, los desarrolladores
pueden crear y ejecutar aplicaciones Java de manera eficiente y productiva.