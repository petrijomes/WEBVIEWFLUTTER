## *Aplicación móvil de noticias de videojuegos con webview.*

##### Integrantes del equipo a cargo y sus respectivos roles: 

| Integrantes | Roles | 
|----------|----------|
| Felipe Nazar Valenzuela | Encargado de diseño | 
| Benjamin Esteban Navarrete | Desarrollador principal | 
| Sebastian Saldias Parra | Arquitecto de software | 


### *Caso de uso.*

El **caso de uso** consiste en implementar una aplicación móvil de noticias de videojuegos en donde demos información del videojuego correspondiente y se tenga un botón que lleve a una webview de YouTube donde haya una lista de reproducción de videos sobre ese mismo videojuego.

**Característica a implementar**: La característica que debemos implementar es la sexta del documento entregado por el profesor, esta consiste en la Implementación de una WebView. Esta última es una implementación del sistema operativo que permite visualizar una página web tal como lo haría un navegador web, pero dentro de una aplicación móvil. 

En ocasiones se utilizan estas webviews para incrustar funciones en una app que previamente fueron implementadas usando tecnologías web para no implementarlas de nuevo, tales como, Logins mediante OAuth, Carros de compra, etc.
 

### *Diseño.*

Para el **diseño** se considero realizar una pagina de inicio, en donde se tengan todas las noticias de los videojuegos correspondientes, con una foto de una portada o caratula del videojuego y una breve descripción de la noticia, esta seria clickeable para que nos lleve a otra en donde estar la noticia a más profundidad con un botón que nos lleve a la webview de YouTube con la lista de reproducción explicada anteriormente. 

En este caso solo se va a considerar una sola noticia en la página de inicio, puesto que este es un modelo de prueba.

Para el diseño o maquetado de este proyecto se utilizó la herramienta de diseño web Figma. A continuación, dejaremos la vista de los diseño en esta herramienta:
 

- Vista general del diseño en figma: 
   ![](https://github.com/petrijomes/WebViewFlutter/blob/main/assets/figma.png)

- Página de inicio:
  
    ![](https://github.com/petrijomes/WebViewFlutter/blob/main/assets/main.PNG)

- Noticia del videojuego correspondiente:
  
    ![](https://github.com/petrijomes/WebViewFlutter/blob/main/assets/noticia.PNG)
  
    ![](https://github.com/petrijomes/WebViewFlutter/blob/main/assets/noticia2.PNG)

Una vez apretado el botón YOUTUBE PLAYLIST, nos va a redirigir a la webview de YouTube donde veremos la playlist de videos del juego correspondiente. No se vio necesario realizar esa parte en figma, puesto que YouTube es una aplicación que ya está hecha.


### *Implementación.*

Lo primero que se realizó para la implementación fue crear un proyecto nuevo en flutter, en donde la carpeta **"lib"** fue modificada, a continuación, se mostrara esas modificaciones y el paso a paso del código del proyecto: 

1. Se creo una carpeta **"pages"** y un archivo .dart llamado **"main."**

2. El archivo **"main."** se usa para:

    - Es el punto de entrada de la aplicación, el cual designara la página de inicio a **HomePage**. 

3. Dentro de **"pages"** se encuentra una carpeta llamada **"Webview"** en donde se desarrolla la característica elegida para este proyecto, y dos archivos .dart, uno llamado **"homepage"** y el otro llamado **"second_page."**

4. El archivo **"homepage"** se usa para:

    - Es el cuerpo de la página de inicio, es en donde irán las noticias de nuestra aplicación móvil, cada noticia tendrá una imagen respectiva y una breve descripción, estas dos cosas serán clickeables y nos redirigen a la página siguiente, en donde se explicará a mayor profundidad la noticia. En específico redirige a **"second_page."**

5. El archivo **"second_page"** es en donde se encuentra la funcionalidad de la característica a desarrollar (webview) y la descripción completa de la noticia. El código se implementa de la siguiente manera:


```dart

//Al inicio del codigo.
class _SecondPageState extends State<SecondPage> {
  final GlobalKey<WebYoutubeState> webYoutubeKey = GlobalKey<WebYoutubeState>();
  final GlobalKey<WebForniteState> webForniteKey = GlobalKey<WebForniteState>();
```

```dart
//Parte del boton.
MaterialButton(
    onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => WebYoutube(key: webYoutubeKey)),
        );
    },
    // ignore: sort_child_properties_last
    child: const Text(
        'Youtube playlist',
        style: TextStyle(color: Colors.white),
    ),
    color: Colors.red,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)),
    padding: const EdgeInsets.symmetric(
        horizontal: 40, vertical: 12),
    ),
```

-  En donde al inicio del código se realizan las instancias de las GlobalKeys que se utilizan para mantener una referencia a los estados de los widgets WebYoutube y WebFornite, respectivamente. Estos serán útiles para poder interactuar con los archivos que están dentro de la carpeta **"webview"**

- Luego en la parte del **botón** se le dan los estilos correspondientes, luego al momento de clickear MaterialButton se ejecuta el código en onPressed, se utiliza Navigator.push para navegar a la pantalla representada por el widget WebYoutube. La **key** se pasa como parte de la creación de WebYoutube. Esto significa que, en la pantalla de WebYoutube, se puede acceder al estado y a otras propiedades específicas de ese widget utilizando la **key**, lo cual se explicara más adelante.

6. Dentro de la carpeta **"Webview"** se encuentran dos archivos .dart relacionados con la característica a desarrollar, uno llamado **"fornite"** y el otro **"youtube."**

7. Ambos archivos nombrados anteriormente tienen la misma estructura y ambas son implementaciones de una webview, lo único que se diferencia entre ellas es la url de destino. En este caso mostraremos el código del archivo **"youtube."**


```dart
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebYoutube extends StatefulWidget {
  WebYoutube({required Key key}) : super(key: key);

  @override
  WebYoutubeState createState() => WebYoutubeState();
}

class WebYoutubeState extends State<WebYoutube> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url:
          'https://www.youtube.com/playlist?list=PLyL5rQLuUHayBnxXww_gMAb7Q9evwkp58',
      appBar: AppBar(
        title: Text('Youtube'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
```
- En este caso se implementa la **webview**, la cual será una vista de youtube dentro de nuestra aplicación móvil, en la cual se encontrará una lista de reproducción de videos de Fortnite.

- Se recibe la **key** entregada al momento de presionar el botón en la página explicada anteriormente, esta se utiliza para identificar de manera única **StatefulWidget**. 

- **Widget build**: Dentro de este método, se devuelve un widget WebviewScaffold. Este widget se encarga de mostrar un WebView utilizando el paquete flutter_webview_plugin.
    - **url**: Se establece la URL del WebView a la dirección de una lista de reproducción de YouTube.
    - **AppBar**: Se muestra una barra de aplicación (AppBar) en la parte superior de la pantalla. La barra de aplicación tiene un título ('Youtube'), se centra y no tiene sombra (elevation: 0).

### *Arquitectura.*

#### Estructura de archivos propuesta: 

```
lib/
|-- main.dart
|-- pages/
|   |-- homepage.dart
|   |-- second_page.dart
|   |-- webview/
|       |-- web_youtube.dart
|       |-- web_fornite.dart
```

- **lib/main.dart**: Archivo principal donde se ejecuta la aplicación. Contiene la clase **MyApp**.
- **lib/pages/**: Carpeta que contiene las páginas de la aplicación.
    - **homepage.dart**: Página principal (*HomePage*).
    - **second_page.dart**: Segunda página (*SecondPage*).
    - **webview/**: Carpeta que contiene archivos relacionados con WebViews.
        - **web_youtube.dart**: Clase para mostrar el WebView de YouTube (*WebYoutube*).
        - **web_fornite.dart**: Clase para mostrar el WebView de Fortnite (*WebFornite*).

#### Arquitectura de Software Utilizada: 

La estructura propuesta refleja una arquitectura de aplicación Flutter que podríamos describir como **"Estructura de Una Sola Página"**. En esta arquitectura:

- Cada pantalla de la aplicación se implementa en su propio archivo Dart (homepage.dart y second_page.dart).
- Las páginas no siguen un patrón arquitectónico específico, y la lógica, la presentación y cualquier funcionalidad están contenidas en un solo archivo por página.
- Existe una carpeta adicional (webview/) que organiza archivos relacionados con la funcionalidad de los WebViews específicos para YouTube y Fortnite.

Esta arquitectura es sencilla y adecuada para proyectos **más pequeños o menos complejos** como este. Sin embargo, podría volverse menos escalable a medida que la aplicación crece en tamaño y complejidad. **Para proyectos más grandes**, podría considerarse la adopción de patrones arquitectónicos más avanzados, como **BLoC**. Este patrón se centra en dividir la lógica de la aplicación en capas claras, separando la presentación de la lógica de negocio y del estado de la aplicación.
