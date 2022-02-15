��    +      t  ;   �      �     �  B  �  s    d   �    �  �   �	  �   �
  2  b  Z   �  ^   �  8   O  �   �  C   `  �   �  �   i  b   ^     �     �     �     �     �     �  =        O     T  
   m  
   x     �     �     �     �     �  d   �  `   J     �  �   �    �  O   �               %  x  -  v  �  "     �  @  �  �  �   �  �  :    �  �   !  s  �!  o   #  m   �#  G   �#    A$  O   I%  �   �%  ,  �&  �   �'     7(     >(     G(     b(     {(     �(  L   �(     �(     �(     )  	   )     ()     >)     ^)     w)  &   �)  z   �)  �   %*     �*    �*  *  �+  ^   -     g-     n-     �-  �  �-         #              +      %   )                    *         $   !              &       "               
                                                                                       (   	   '    "%s" not a valid entry. A dictionary containing the settings for all databases to be used with Django. It is a nested dictionary whose contents map a database alias to a dictionary containing the options for an individual database. The DATABASES setting must configure a default database; any number of additional databases may also be specified. A list of all available languages. The list is a list of two-tuples in the format (language code, language name) for example, ('ja', 'Japanese'). This specifies which languages are available for language selection. Generally, the default value should suffice. Only set this setting if you want to restrict language selection to a subset of the Django-provided languages.  A list of authentication backend classes (as strings) to use when attempting to authenticate a user. A list of strings representing the host/domain names that this site can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly-safe web server configurations. Values in this list can be fully qualified names (e.g. 'www.example.com'), in which case they will be matched against the request's Host header exactly (case-insensitive, not including port). A value beginning with a period can be used as a subdomain wildcard: '.example.com' will match example.com, www.example.com, and any other subdomain of example.com. A value of '*' will match anything; in this case you are responsible to provide your own validation of the Host header (perhaps in a middleware; if so this middleware must be listed first in MIDDLEWARE). A string representing the time zone for this installation. Note that this isn't necessarily the time zone of the server. For example, one server may serve multiple Django-powered sites, each with a separate time zone setting. Default: '' (Empty string). Username to use for the SMTP server defined in EMAIL_HOST. If empty, Django won't attempt authentication. Default: '/accounts/login/' The URL where requests are redirected for login, especially when using the login_required() decorator. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: 'django.contrib.sessions.backends.db'. Controls where Django stores session data. Default: 'django.core.mail.backends.smtp.EmailBackend'. The backend to use for sending emails. Default: 'localhost'. The host to use for sending email. Default: 'webmaster@localhost' Default email address to use for various automated correspondence from the site manager(s). This doesn't include error messages sent to ADMINS and MANAGERS; for that, see SERVER_EMAIL. Default: 25. Port to use for the SMTP server defined in EMAIL_HOST. Default: 2621440 (i.e. 2.5 MB). The maximum size (in bytes) that an upload will be before it gets streamed to the file system. See Managing files for details. See also DATA_UPLOAD_MAX_MEMORY_SIZE. Default: False. Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. If you are experiencing hanging connections, see the implicit TLS setting EMAIL_USE_SSL. Default: None. Specifies a timeout in seconds for blocking operations like the connection attempt. Django Edit Edit setting: %s Edit settings English Enter the new setting value. Is this settings being overridden by an environment variable? Name Namespace: %s, not found Namespaces Overridden Setting count Setting namespaces Setting updated successfully. Settings Settings in namespace: %s Settings inherited from an environment variable take precedence and cannot be changed in this view.  Settings updated, restart your installation and refresh your browser for changes to take effect. Smart settings The file storage engine to use when collecting static files with the collectstatic management command. A ready-to-use instance of the storage backend defined in this setting can be found at django.contrib.staticfiles.storage.staticfiles_storage. The full Python path of the WSGI application object that Django's built-in servers (e.g. runserver) will use. The django-admin startproject management command will create a simple wsgi.py file with an application callable in it, and point this setting to that application. The list of validators that are used to check the strength of user's passwords. Value View settings Warning When set to True, if the request URL does not match any of the patterns in the URLconf and it doesn't end in a slash, an HTTP redirect is issued to the same URL with a slash appended. Note that the redirect may cause any data submitted in a POST request to be lost. The APPEND_SLASH setting is only used if CommonMiddleware is installed (see Middleware). See also PREPEND_WWW. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-02-03 10:14+0000
Last-Translator: Frédéric Sheedy <sheedf@gmail.com>, 2022
Language-Team: French (https://www.transifex.com/rosarior/teams/13584/fr/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: fr
Plural-Forms: nplurals=2; plural=(n > 1);
 "%s" n'est pas une entrée valide. Un dictionnaire contenant les paramètres de toutes les bases de données à utiliser avec Django. Il s'agit d'un dictionnaire imbriqué dont le contenu associe un alias de base de données à un dictionnaire contenant les options d'une base de données individuelle. Le paramètre DATABASES doit configurer une base de données par défaut; un certain nombre de bases de données supplémentaires peuvent également être spécifiées. Une liste de toutes les langues disponibles. Elle contient la liste des langues au format (code de langue, nom de langue) par exemple ('ja', 'japonais'). Ceci spécifie les langues disponibles pour la sélection de la langue. Généralement, la valeur par défaut devrait suffire. Définissez ce paramètre uniquement si vous souhaitez restreindre la sélection de la langue à un sous-ensemble des langues fournies par Django. Une liste des méthodes d'authentification (sous forme de chaînes de caractères) à utiliser lors d'une tentative d'authentification d'un utilisateur. Une liste de chaînes représentant les noms d'hôte ou domaine que ce site peut servir. Il s'agit d'une mesure de sécurité pour empêcher les attaques d'en-tête par l'hôte HTTP, qui sont possibles même dans de nombreuses configurations de serveur Web apparemment sûres. Les valeurs de cette liste peuvent être des noms complets (par exemple «www.example.com»), auquel cas ils seront mis en correspondance avec l'en-tête Host de la demande exactement (insensible à la casse, sans inclure le port). Une valeur commençant par un point peut être utilisée comme caractère générique de sous-domaine: «.example.com» correspondra à example.com, www.example.com et à tout autre sous-domaine example.com. Une valeur '*' correspondra à tout; dans ce cas, vous êtes responsable de fournir votre propre validation de l'en-tête Host (peut-être dans un middleware; si tel est le cas, ce middleware doit être répertorié en premier dans MIDDLEWARE). Une chaîne représentant le fuseau horaire de cette installation. Notez que ce n'est pas nécessairement le fuseau horaire du serveur. Par exemple, un serveur peut desservir plusieurs sites alimentés par Django, chacun avec un paramètre de fuseau horaire distinct. Par défaut: '' (chaîne vide). Nom d'utilisateur à utiliser pour le serveur SMTP défini dans EMAIL_HOST. Si vide, Django ne tentera pas d'authentification. Par défaut: '/accounts/login/' L'URL où les demandes sont redirigées pour la connexion, en particulier lors de l'utilisation de login_required(). Ce paramètre accepte également les modèles d'URL qui peuvent être utilisés pour réduire la duplication de la configuration, car vous n'avez pas à définir l'URL à deux endroits (paramètres et configuration d'URL). Valeur par défaut: 'django.contrib.sessions.backends.db'. Contrôle où Django stocke les données de session. Par défaut:'django.core.mail.backends.smtp.EmailBackend'. Le backend à utiliser pour envoyer des courriels. Par défaut: 'localhost'. L'hôte à utiliser pour l'envoi de courriel. Par défaut: 'webmaster@localhost' Adresse courriel par défaut à utiliser pour diverses correspondances automatisées du ou des gestionnaires de site. Cela n'inclut pas les messages d'erreur envoyés aux ADMIN et aux GESTIONNAIRES; pour cela, voir SERVER_EMAIL. Par défaut: 25. Port à utiliser pour le serveur SMTP défini dans EMAIL_HOST. Par défaut: 2621440 (soit 2,5 Mo). La taille maximale (en octets) d'un téléchargement avant qu'il ne soit diffusé sur le système de fichiers. Voir Gestion des fichiers pour plus de détails. Voir aussi DATA_UPLOAD_MAX_MEMORY_SIZE. Par défaut: False. Indique s'il faut utiliser une connexion TLS (sécurisée) lors des connexions au serveur SMTP. Ceci est utilisé pour les connexions TLS explicites, généralement sur le port 587. Si vous rencontrez des connexions suspendues, consultez le paramètre TLS implicite EMAIL_USE_SSL. Par défaut: aucun. Spécifie un délai d'expiration en secondes pour le blocage d'opérations telles que la tentative de connexion. Django Modifier Modifier le paramètre: %s Modifier les paramètres Anglais Entrez la nouvelle valeur. Est-ce que ces paramètres sont remplacés par une variable d'environnement? Nom Espace de nom : %s non trouvé Espaces de noms Remplacé Nombre de paramètres Espaces de noms des paramètres Paramètres mit à jour. Paramètres Paramètres dans l'espace de noms : %s Les paramètres hérités d'une variable d'environnement ont préséance et ne peuvent pas être modifiés dans cette vue. Paramètres mis à jour, redémarrez votre installation et actualisez votre navigateur pour que les modifications prennent effet. Paramètres intelligents Le moteur de stockage de fichiers à utiliser lors de la collecte de fichiers statiques avec la commande de gestion collectstatic. Une instance prête à l'emploi du processus de stockage défini dans ce paramètre se trouve sur django.contrib.staticfiles.storage.staticfiles_storage. Le chemin Python complet de l'objet d'application WSGI que les serveurs intégrés de Django (par exemple runserver) utiliseront. La commande de gestion django-admin startproject créera un simple fichier wsgi.py contenant une application appelable et pointera ce paramètre vers cette application. La liste des validateurs utilisés pour vérifier la force des mots de passe de l'utilisateur. Valeur Afficher les paramètres Avertissement Lorsque défini à "True", si l'URL demandé ne correspond à aucun des modèles configuré dans "URLconf" et ne se termine pas par une barre oblique, une redirection HTTP est émise vers la même URL avec une barre oblique ajoutée. Notez que la redirection peut entraîner la perte de toutes les données soumises dans une demande POST. Le paramètre APPEND_SLASH n'est utilisé que si CommonMiddleware est installé (voir Middleware). Voir également PREPEND_WWW. 