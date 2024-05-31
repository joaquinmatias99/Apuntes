# Apuntes personales de programación


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
    
    
