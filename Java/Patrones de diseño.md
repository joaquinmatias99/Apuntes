# Patrón MVC

MVC (Modelo-Vista-Controlador) es un patrón en el diseño de software
comúnmente utilizado para implementar interfaces de usuario, datos y lógica de control. Enfatiza una separación entre la lógica de negocios y su visualización.

Esta "separación de preocupaciones" proporciona una mejor división del trabajo y una mejora de mantenimiento. 
Las tres partes del patrón de diseño de software MVC se pueden describir de la siguiente manera:

- Modelo: Maneja datos y lógica de negocios.
- Vista: Se encarga del diseño y presentación.
- Controlador: Enruta comandos a los modelos y vistas.

## Beneficios de utilizar MVC ⬇️

Utilizar el patrón MVC en aplicaciones web aporta varios beneficios:
➕ Permite separar la lógica de negocio de la interfaz de usuario, resultando en una mejor organización del código.
➕ Promueve la reutilización de código, por ejemplo se puede usar el mismo modelo para distintas interfaces.
➕ Facilita el mantenimiento y actualización, ya que se pueden modificar el modelo, vista o controlador de forma independiente.
➕ El desarrollo se puede dividir por roles: programadores de backend en el modelo, diseñadores frontend en la vista, etc.
➕ Los cambios tienen menor impacto al estar desacoplados en capas
separadas.
➕ Permite escalar cada componente de forma independiente.
➕ Es más fácil realizar pruebas unitarias enfocadas en cada capa.
➕ La interfaz visual queda abstracta del modelo de datos subyacente.
➕ Promueve un acoplamiento más débil entre los componentes.
➕ Siguiendo estándares resulta en un código más claro y mantenible.