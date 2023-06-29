��    9      �  O   �      �     �  �     �   �  B  �    �  s  �  d   s
    �
  +  �  �     #  �      �     2  �  u  �  Z   I  ^   �  8     �   <  �   �  C   �  �     2  �  �   �  �  �  b   }  �  �     i!     j"     q"     v"     �"     �"     �"  =   �"  `   �"     Y#     ^#  
   w#  
   �#     �#     �#     �#     �#     �#  d   �#  `   T$     �$  �   �$    �%  O   �&    '     6(     <(     J(  x  R(  �  �)     j+  �   �+    Q,  �  d-  n  /  �  u0  s   52  �  �2    W6    �8  d  �9  #  E;  �   i<  �  =  �  �>  u   b@  |   �@  [   UA  �   �A    {B  X   �C  �   �C  �  �D    �H  �  �I  |   �K  �  BL  -  "N     PO     WO     ^O     pO     O  "   �O  G   �O  �   �O     ~P     �P     �P     �P     �P     �P     �P     �P     Q  j   #Q  q   �Q      R  '  R  1  =S  h   oT  K  �T     $V     *V     >V  �  JV         4       2         -         #          $       
   	      )          8       +                    %                 3           6   &                   5      "              .             0          (   !                   '   /      1          9               ,          7   *    "%s" not a valid entry. A boolean that specifies whether to use the X-Forwarded-Host header in preference to the Host header. This should only be enabled if a proxy which sets this header is in use. A boolean that specifies whether to use the X-Forwarded-Port header in preference to the SERVER_PORT META variable. This should only be enabled if a proxy which sets this header is in use. USE_X_FORWARDED_HOST takes priority over this setting. A dictionary containing the settings for all databases to be used with Django. It is a nested dictionary whose contents map a database alias to a dictionary containing the options for an individual database. The DATABASES setting must configure a default database; any number of additional databases may also be specified. A list of IP addresses, as strings, that: Allow the debug() context processor to add some variables to the template context. Can use the admindocs bookmarklets even if not logged in as a staff user. Are marked as "internal" (as opposed to "EXTERNAL") in AdminEmailHandler emails. A list of all available languages. The list is a list of two-tuples in the format (language code, language name) for example, ('ja', 'Japanese'). This specifies which languages are available for language selection. Generally, the default value should suffice. Only set this setting if you want to restrict language selection to a subset of the Django-provided languages.  A list of authentication backend classes (as strings) to use when attempting to authenticate a user. A list of strings representing the host/domain names that this site can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly-safe web server configurations. Values in this list can be fully qualified names (e.g. 'www.example.com'), in which case they will be matched against the request's Host header exactly (case-insensitive, not including port). A value beginning with a period can be used as a subdomain wildcard: '.example.com' will match example.com, www.example.com, and any other subdomain of example.com. A value of '*' will match anything; in this case you are responsible to provide your own validation of the Host header (perhaps in a middleware; if so this middleware must be listed first in MIDDLEWARE). A string representing the language code for this installation. This should be in standard language ID format. For example, U.S. English is "en-us". It serves two purposes: If the locale middleware isn't in use, it decides which translation is served to all users. If the locale middleware is active, it provides a fallback language in case the user's preferred language can't be determined or is not supported by the website. It also provides the fallback translation when a translation for a given literal doesn't exist for the user's preferred language. A string representing the time zone for this installation. Note that this isn't necessarily the time zone of the server. For example, one server may serve multiple Django-powered sites, each with a separate time zone setting. A tuple representing a HTTP header/value combination that signifies a request is secure. This controls the behavior of the request object’s is_secure() method. Warning: Modifying this setting can compromise your site’s security. Ensure you fully understand your setup before changing it. Default: '' (Empty string). Password to use for the SMTP server defined in EMAIL_HOST. This setting is used in conjunction with EMAIL_HOST_USER when authenticating to the SMTP server. If either of these settings is empty, Django won't attempt authentication. Default: '' (Empty string). Username to use for the SMTP server defined in EMAIL_HOST. If empty, Django won't attempt authentication. Default: '/accounts/login/' The URL where requests are redirected for login, especially when using the login_required() decorator. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: '/accounts/profile/' The URL where requests are redirected after login when the contrib.auth.login view gets no next parameter. This is used by the login_required() decorator, for example. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: 'django.contrib.sessions.backends.db'. Controls where Django stores session data. Default: 'django.core.mail.backends.smtp.EmailBackend'. The backend to use for sending emails. Default: 'localhost'. The host to use for sending email. Default: 'sessionid'. The name of the cookie to use for sessions.This can be whatever you want (as long as it's different from the other cookie names in your application). Default: 'webmaster@localhost' Default email address to use for various automated correspondence from the site manager(s). This doesn't include error messages sent to ADMINS and MANAGERS; for that, see SERVER_EMAIL. Default: 25. Port to use for the SMTP server defined in EMAIL_HOST. Default: 2621440 (i.e. 2.5 MB). The maximum size (in bytes) that an upload will be before it gets streamed to the file system. See Managing files for details. See also DATA_UPLOAD_MAX_MEMORY_SIZE. Default: 2621440 (i.e. 2.5 MB). The maximum size in bytes that a request body may be before a SuspiciousOperation (RequestDataTooBig) is raised. The check is done when accessing request.body or request.POST and is calculated against the total request size excluding any file upload data. You can set this to None to disable the check. Applications that are expected to receive unusually large form posts should tune this setting. The amount of request data is correlated to the amount of memory needed to process the request and populate the GET and POST dictionaries. Large requests could be used as a denial-of-service attack vector if left unchecked. Since web servers don't typically perform deep request inspection, it's not possible to perform a similar check at that level. See also FILE_UPLOAD_MAX_MEMORY_SIZE. Default: False. Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. If you are experiencing hanging connections, see the implicit TLS setting EMAIL_USE_SSL. Default: False. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting EMAIL_USE_TLS. Note that EMAIL_USE_TLS/EMAIL_USE_SSL are mutually exclusive, so only set one of those settings to True. Default: None. Specifies a timeout in seconds for blocking operations like the connection attempt. Default: None. The URL where requests are redirected after a user logs out using LogoutView (if the view doesn't get a next_page argument). If None, no redirect will be performed and the logout view will be rendered. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: [] (Empty list). List of compiled regular expression objects representing User-Agent strings that are not allowed to visit any page, systemwide. Use this for bad robots/crawlers. This is only used if CommonMiddleware is installed (see Middleware). Django Edit Edit setting: %s Edit settings English Enter the new setting value. Is this settings being overridden by an environment variable? Local storage is currently disabled, changes to setting values will not be saved or take effect. Name Namespace: %s, not found Namespaces Overridden Setting count Setting namespaces Setting updated successfully. Settings Settings in namespace: %s Settings inherited from an environment variable take precedence and cannot be changed in this view.  Settings updated, restart your installation and refresh your browser for changes to take effect. Smart settings The file storage engine to use when collecting static files with the collectstatic management command. A ready-to-use instance of the storage backend defined in this setting can be found at django.contrib.staticfiles.storage.staticfiles_storage. The full Python path of the WSGI application object that Django's built-in servers (e.g. runserver) will use. The django-admin startproject management command will create a simple wsgi.py file with an application callable in it, and point this setting to that application. The list of validators that are used to check the strength of user's passwords. URL to use when referring to static files located in STATIC_ROOT. Example: "/static/" or "http://static.example.com/" If not None, this will be used as the base path for asset definitions (the Media class) and the staticfiles app. It must end in a slash if set to a non-empty value. Value View settings Warning When set to True, if the request URL does not match any of the patterns in the URLconf and it doesn't end in a slash, an HTTP redirect is issued to the same URL with a slash appended. Note that the redirect may cause any data submitted in a POST request to be lost. The APPEND_SLASH setting is only used if CommonMiddleware is installed (see Middleware). See also PREPEND_WWW. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-07-27 05:38+0000
Last-Translator: Roberto Rosario, 2022
Language-Team: Spanish (Puerto Rico) (https://app.transifex.com/rosarior/teams/13584/es_PR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: es_PR
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
 "%s" no es una entrada válida. Un booleano que especifica si se debe usar el encabezado X-Fordered-Host con preferencia al encabezado Host. Esto solo debe habilitarse si se está utilizando un proxy que establece este encabezado. Un booleano que especifica si se debe usar el encabezado X-Fordered-Port con preferencia a la variable SERVER_PORT META. Esto solo debe habilitarse si se está utilizando un proxy que establece este encabezado. USE_X_FORWARDED_HOST tiene prioridad sobre esta configuración. Un diccionario que contiene la configuración de todas las bases de datos que se utilizarán con Django. Es un diccionario anidado cuyos contenidos asignan un alias de base de datos a un diccionario que contiene las opciones para una base de datos individual. La configuración DATABASES debe configurar una base de datos predeterminada; también se puede especificar cualquier cantidad de bases de datos adicionales. Una lista de direcciones IP, en forma de texto, que: Permiten que el procesador de contexto debug() agregue algunas variables al contexto de la plantilla. Puede usar los marcadores de Admindocs incluso si no ha iniciado sesión como usuario del personal. Están marcados como 'internos' (a diferencia de 'EXTERNOS') en los correos electrónicos de AdminEmailHandler. Una lista de todos los idiomas disponibles. La lista es una lista de dos tuplas en el formato (código de idioma, nombre del idioma), por ejemplo, ('ja', 'Japonés'). Esto especifica qué idiomas están disponibles para la selección de idiomas. Generalmente, el valor predeterminado debería ser suficiente. Solo establezca esta configuración si desea restringir la selección de idioma a un subconjunto de los idiomas proporcionados por Django. Una lista de clases de backend de autenticación (en forma de texto) para usar al intentar autenticar a un usuario. Una lista de textos que representan los nombres de host / dominio que este sitio puede servir. Esta es una medida de seguridad para evitar los ataques de encabezado HTTP Host, que son posibles incluso bajo muchas configuraciones de servidor web aparentemente seguras. Los valores en esta lista pueden ser nombres totalmente calificados (por ejemplo, 'www.ejemplo.com'), en cuyo caso se compararán exactamente con el encabezado Host de la solicitud (no distingue entre mayúsculas y minúsculas, sin incluir el puerto). Un valor que comienza con un punto se puede usar como un comodín de subdominio: '.example.com' coincidirá con example.com, www.example.com y cualquier otro subdominio de example.com. Un valor de '*' coincidirá con cualquier cosa; en este caso, usted es responsable de proporcionar su propia validación del encabezado de host (quizás en un middleware, si es así, este middleware debe aparecer primero en MIDDLEWARE). Un texto que representa el código de idioma para esta instalación. Esto debe estar en formato de ID de idioma estándar. Por ejemplo, el inglés de EE. UU. Es 'en-us'. Tiene dos propósitos: si el middleware de configuración regional no está en uso, decide qué traducción se sirve a todos los usuarios. Si el middleware de configuración regional está activo, proporciona un idioma alternativo en caso de que el idioma preferido del usuario no se pueda determinar o el sitio web no lo admita. También proporciona la traducción alternativa cuando no existe una traducción para un literal dado para el idioma preferido del usuario. Un text que representa la zona horaria para esta instalación. Tenga en cuenta que esto no es necesariamente la zona horaria del servidor. Por ejemplo, un servidor puede servir múltiples sitios con Django, cada uno con una configuración de zona horaria separada. Una tupla que representa una combinación de encabezado / valor HTTP que significa que una solicitud es segura. Esto controla el comportamiento del método is_secure() del objeto de solicitud. Advertencia: modificar esta configuración puede comprometer la seguridad de su sitio. Asegúrese de comprender completamente su configuración antes de cambiarla. Valor predeterminado: '' (texto vacío). Contraseña para usar para el servidor SMTP definido en EMAIL_HOST. Esta configuración se usa junto con EMAIL_HOST_USER al autenticarse en el servidor SMTP. Si cualquiera de estas configuraciones está vacía, Django no intentará la autenticación. Valor predeterminado: '' (text vacío). Nombre de usuario a usar para el servidor SMTP definido en EMAIL_HOST. Si está vacío, Django no intentará la autenticación. Valor predeterminado: '/ accounts / login /' La URL donde las solicitudes se redireccionan para iniciar sesión, especialmente cuando se utiliza el decodificador login_required (). Esta configuración también acepta patrones de URL nombrados que se pueden usar para reducir la duplicación de configuración, ya que no tiene que definir la URL en dos lugares (configuración y URLconf). Valor predeterminado: '/ accounts / profile /' La URL donde las solicitudes se redirigen después del inicio de sesión cuando la vista contrib.auth.login no obtiene el siguiente parámetro. Esto es usado por el decorador login_required (), por ejemplo. Esta configuración también acepta patrones de URL nombrados que se pueden usar para reducir la duplicación de configuración, ya que no tiene que definir la URL en dos lugares (configuración y URLconf). Valor predeterminado: "django.contrib.sessions.backends.db". Controla dónde Django almacena los datos de la sesión. Valor predeterminado: 'django.core.mail.backends.smtp.EmailBackend'. El backend para usar para enviar correos electrónicos. Valor predeterminado: 'localhost'. El host que se usará para enviar correos electrónicos. Valor predeterminado: "sessionid". El nombre de la cookie que se utilizará para las sesiones. Puede ser lo que desee (siempre y cuando sea diferente de los otros nombres de cookies en su aplicación). Predeterminado:'webmaster@localhost' Dirección de correo electrónico predeterminada que se usa para la correspondencia automatizada del administrador(es) del sitio. Esto no incluye los mensajes de error enviados a ADMINS y MANAGERS; para eso, vea SERVER_EMAIL. Valor predeterminado: 25. Puerto para usar para el servidor SMTP definido en EMAIL_HOST. Valor predeterminado: 2621440 (es decir, 2,5 MB). El tamaño máximo (en bytes) que una carga será antes de que se transmita al sistema de archivos. Consulte Administración de archivos para más detalles. Ver también DATA_UPLOAD_MAX_MEMORY_SIZE. Valor predeterminado: 2621440 (es decir, 2,5 MB). El tamaño máximo en bytes que puede ser un cuerpo de solicitud antes de que se genere una Operación Sospechosa (RequestDataTooBig). La comprobación se realiza al acceder a request.body o request.POST y se calcula con respecto al tamaño total de la solicitud, excluyendo cualquier archivo de carga de datos. Puede configurar esto en Ninguno para desactivar la verificación. Las aplicaciones que se espera que reciban publicaciones de forma inusualmente grande deben ajustar esta configuración. La cantidad de datos de solicitud se correlaciona con la cantidad de memoria necesaria para procesar la solicitud y llenar los diccionarios GET y POST. Las solicitudes grandes podrían usarse como un vector de ataque de denegación de servicio si no se seleccionan. Dado que los servidores web normalmente no realizan una inspección profunda de solicitudes, no es posible realizar una comprobación similar en ese nivel. Ver también FILE_UPLOAD_MAX_MEMORY_SIZE. Predeterminado: Falso. Si se debe usar una conexión TLS (segura) cuando se habla con el servidor SMTP. Esto se usa para conexiones explícitas de TLS, generalmente en el puerto 587. Si experimenta conexiones suspendidas, consulte la configuración de TLS implícita EMAIL_USE_SSL. Predeterminado: Falso. Si se debe usar una conexión TLS (segura) implícita al hablar con el servidor SMTP. En la mayoría de la documentación de correo electrónico, este tipo de conexión TLS se conoce como SSL. Generalmente se usa en el puerto 465. Si tiene problemas, consulte la configuración de TLS explícita EMAIL_USE_TLS. Tenga en cuenta que EMAIL_USE_TLS / EMAIL_USE_SSL son mutuamente excluyentes, por lo que solo debe establecer una de esas configuraciones en True. Predeterminado: ninguno Especifica un tiempo de espera en segundos para operaciones de bloqueo como el intento de conexión. Predeterminado: Ninguno. La URL donde se redirigen las solicitudes después de que un usuario cierre sesión usando LogoutView (si la vista no obtiene un argumento next_page). Si Ninguno, no se realizará una redirección y se procesará la vista de cierre de sesión. Esta configuración también acepta patrones de URL con nombre que se pueden usar para reducir la duplicación de la configuración, ya que no tiene que definir la URL en dos lugares (configuración y URLconf). Valor predeterminado: [] (lista vacía). Lista de objetos de expresiones regulares compilados que representan textos de User-Agent que no pueden visitar ninguna página, en todo el sistema. Úselo para robots / rastreadores malos. Esto solo se usa si CommonMiddleware está instalado (ver Middleware). Django Editar Editar ajuste: %s Editar ajustes inglés Ingrese el nuevo valor del ajuste. ¿Esta configuración está siendo anulada por una variable de entorno? El almacenamiento local está deshabilitado actualmente, los cambios en los valores de configuración no se guardarán ni surtirán efecto. Nombre Categoría: %s, no encontrada Categorías Anulado Conteo de ajustes Categoría de ajustes Ajuste actualizado con éxito. Ajustes Ajustes en la categoría: %s La configuración heredada de una variable de entorno tiene prioridad y no se puede cambiar en esta vista. Configuración actualizada, reinicie su instalación y actualice su navegador para que los cambios surtan efecto. Ajustes inteligentes El motor de almacenamiento de archivos que se utiliza al recopilar archivos estáticos con el comando de gestión collectstatic. Puede encontrar una instancia lista para usar del backend de almacenamiento definido en esta configuración en django.contrib.staticfiles.storage.staticfiles_storage. La ruta completa de Python del objeto de aplicación WSGI que usarán los servidores incorporados de Django (por ejemplo, runserver). El comando django-admin startproject management creará un archivo wsgi.py simple con una aplicación invocable en él, y señalará esta configuración a esa aplicación. La lista de validadores que se utilizan para verificar la seguridad de las contraseñas de los usuarios. URL a usar cuando se hace referencia a archivos estáticos ubicados en STATIC_ROOT. Ejemplo: "/static/" o "http://static.example.com/". Si no es None, se usará como ruta base para las definiciones de activos (la clase Media) y la aplicación staticfiles. Debe terminar en una barra inclinada si se establece en un valor no vacío. Valor Ver configuraciones Advertencia Cuando se establece en True, si la URL de solicitud no coincide con ninguno de los patrones en el URLconf y no termina en una barra inclinada, se emite un redireccionamiento HTTP a la misma URL con una barra inclinada. Tenga en cuenta que la redirección puede hacer que se pierdan los datos enviados en una solicitud POST. La configuración APPEND_SLASH solo se usa si está instalado CommonMiddleware (ver Middleware). Ver también PREPEND_WWW. 