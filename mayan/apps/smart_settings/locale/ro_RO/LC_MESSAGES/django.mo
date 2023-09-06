��    :      �  O   �      �     �  �     �   �  B  �    �  s  	  d   �
    �
  +  �  �   !  #       '    /  �   2  2  �  u  �  Z   a  ^   �  8     �   T  �      C   �  �     2  �  �     �  	  b   �  �  �     �!     �"     �"     �"     �"     �"     �"  =   �"  `   #     q#     v#  
   �#  
   �#     �#     �#     �#     �#     �#  d   $  `   l$     �$  �   �$    �%  O   �&    3'     N(     T(     b(  x  j(  �  �)     ~+  �   �+  4  w,  �  �-  D  D/  �  �0  �   !2  �  �2  �  46  �   �8  Z  �9     
;    ;  �   1<  }  �<  �  B>  s   @  o   �@  H   �@  �   ;A  �   �A  M   �B  �   HC    @D    DH  �  \I     K  �  �K  d  �M     �N     �N     �N     O     !O  $   *O  ;   OO  �   �O     P  &   P     @P  
   PP     [P     mP  &   �P     �P  "   �P  q   �P  {   LQ     �Q    �Q  4  �R  Q   )T  �  {T     V     
V     V  �  $V         5       3         .         $          %       
   	      *          9       ,                    &                 4          7   '                    6      #              /             1          )   "            !      (   0      2          :               -          8   +    "%s" not a valid entry. A boolean that specifies whether to use the X-Forwarded-Host header in preference to the Host header. This should only be enabled if a proxy which sets this header is in use. A boolean that specifies whether to use the X-Forwarded-Port header in preference to the SERVER_PORT META variable. This should only be enabled if a proxy which sets this header is in use. USE_X_FORWARDED_HOST takes priority over this setting. A dictionary containing the settings for all databases to be used with Django. It is a nested dictionary whose contents map a database alias to a dictionary containing the options for an individual database. The DATABASES setting must configure a default database; any number of additional databases may also be specified. A list of IP addresses, as strings, that: Allow the debug() context processor to add some variables to the template context. Can use the admindocs bookmarklets even if not logged in as a staff user. Are marked as "internal" (as opposed to "EXTERNAL") in AdminEmailHandler emails. A list of all available languages. The list is a list of two-tuples in the format (language code, language name) for example, ('ja', 'Japanese'). This specifies which languages are available for language selection. Generally, the default value should suffice. Only set this setting if you want to restrict language selection to a subset of the Django-provided languages.  A list of authentication backend classes (as strings) to use when attempting to authenticate a user. A list of strings representing the host/domain names that this site can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly-safe web server configurations. Values in this list can be fully qualified names (e.g. 'www.example.com'), in which case they will be matched against the request's Host header exactly (case-insensitive, not including port). A value beginning with a period can be used as a subdomain wildcard: '.example.com' will match example.com, www.example.com, and any other subdomain of example.com. A value of '*' will match anything; in this case you are responsible to provide your own validation of the Host header (perhaps in a middleware; if so this middleware must be listed first in MIDDLEWARE). A string representing the language code for this installation. This should be in standard language ID format. For example, U.S. English is "en-us". It serves two purposes: If the locale middleware isn't in use, it decides which translation is served to all users. If the locale middleware is active, it provides a fallback language in case the user's preferred language can't be determined or is not supported by the website. It also provides the fallback translation when a translation for a given literal doesn't exist for the user's preferred language. A string representing the time zone for this installation. Note that this isn't necessarily the time zone of the server. For example, one server may serve multiple Django-powered sites, each with a separate time zone setting. A tuple representing a HTTP header/value combination that signifies a request is secure. This controls the behavior of the request object’s is_secure() method. Warning: Modifying this setting can compromise your site’s security. Ensure you fully understand your setup before changing it. Default Default: '' (Empty string). Password to use for the SMTP server defined in EMAIL_HOST. This setting is used in conjunction with EMAIL_HOST_USER when authenticating to the SMTP server. If either of these settings is empty, Django won't attempt authentication. Default: '' (Empty string). Username to use for the SMTP server defined in EMAIL_HOST. If empty, Django won't attempt authentication. Default: '/accounts/login/' The URL where requests are redirected for login, especially when using the login_required() decorator. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: '/accounts/profile/' The URL where requests are redirected after login when the contrib.auth.login view gets no next parameter. This is used by the login_required() decorator, for example. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: 'django.contrib.sessions.backends.db'. Controls where Django stores session data. Default: 'django.core.mail.backends.smtp.EmailBackend'. The backend to use for sending emails. Default: 'localhost'. The host to use for sending email. Default: 'sessionid'. The name of the cookie to use for sessions.This can be whatever you want (as long as it's different from the other cookie names in your application). Default: 'webmaster@localhost' Default email address to use for various automated correspondence from the site manager(s). This doesn't include error messages sent to ADMINS and MANAGERS; for that, see SERVER_EMAIL. Default: 25. Port to use for the SMTP server defined in EMAIL_HOST. Default: 2621440 (i.e. 2.5 MB). The maximum size (in bytes) that an upload will be before it gets streamed to the file system. See Managing files for details. See also DATA_UPLOAD_MAX_MEMORY_SIZE. Default: 2621440 (i.e. 2.5 MB). The maximum size in bytes that a request body may be before a SuspiciousOperation (RequestDataTooBig) is raised. The check is done when accessing request.body or request.POST and is calculated against the total request size excluding any file upload data. You can set this to None to disable the check. Applications that are expected to receive unusually large form posts should tune this setting. The amount of request data is correlated to the amount of memory needed to process the request and populate the GET and POST dictionaries. Large requests could be used as a denial-of-service attack vector if left unchecked. Since web servers don't typically perform deep request inspection, it's not possible to perform a similar check at that level. See also FILE_UPLOAD_MAX_MEMORY_SIZE. Default: False. Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. If you are experiencing hanging connections, see the implicit TLS setting EMAIL_USE_SSL. Default: False. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting EMAIL_USE_TLS. Note that EMAIL_USE_TLS/EMAIL_USE_SSL are mutually exclusive, so only set one of those settings to True. Default: None. Specifies a timeout in seconds for blocking operations like the connection attempt. Default: None. The URL where requests are redirected after a user logs out using LogoutView (if the view doesn't get a next_page argument). If None, no redirect will be performed and the logout view will be rendered. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: [] (Empty list). List of compiled regular expression objects representing User-Agent strings that are not allowed to visit any page, systemwide. Use this for bad robots/crawlers. This is only used if CommonMiddleware is installed (see Middleware). Django Edit Edit setting: %s Edit settings English Enter the new setting value. Is this settings being overridden by an environment variable? Local storage is currently disabled, changes to setting values will not be saved or take effect. Name Namespace: %s, not found Namespaces Overridden Setting count Setting namespaces Setting updated successfully. Settings Settings in namespace: %s Settings inherited from an environment variable take precedence and cannot be changed in this view.  Settings updated, restart your installation and refresh your browser for changes to take effect. Smart settings The file storage engine to use when collecting static files with the collectstatic management command. A ready-to-use instance of the storage backend defined in this setting can be found at django.contrib.staticfiles.storage.staticfiles_storage. The full Python path of the WSGI application object that Django's built-in servers (e.g. runserver) will use. The django-admin startproject management command will create a simple wsgi.py file with an application callable in it, and point this setting to that application. The list of validators that are used to check the strength of user's passwords. URL to use when referring to static files located in STATIC_ROOT. Example: "/static/" or "http://static.example.com/" If not None, this will be used as the base path for asset definitions (the Media class) and the staticfiles app. It must end in a slash if set to a non-empty value. Value View settings Warning When set to True, if the request URL does not match any of the patterns in the URLconf and it doesn't end in a slash, an HTTP redirect is issued to the same URL with a slash appended. Note that the redirect may cause any data submitted in a POST request to be lost. The APPEND_SLASH setting is only used if CommonMiddleware is installed (see Middleware). See also PREPEND_WWW. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-09-06 21:36+0000
Last-Translator: Harald Ersch, 2023
Language-Team: Romanian (Romania) (https://app.transifex.com/rosarior/teams/13584/ro_RO/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: ro_RO
Plural-Forms: nplurals=3; plural=(n==1?0:(((n%100>19)||((n%100==0)&&(n!=0)))?2:1));
 "%s" nu este o intrare validă. Un boolean care specifică dacă se utilizează antetul X-Forwarded-Host, în preferință pentru antetul gazdă. Acest lucru ar trebui să fie activat numai dacă este utilizat un proxy care stabilește acest antet. Un boolean care specifică dacă trebuie să utilizați antetul portului X-Forwarded-Port, în preferință pentru variabila SERVER_PORT META. Acest lucru ar trebui să fie activat numai dacă este utilizat un proxy care stabilește acest antet. USE_X_FORWARDED_HOST are prioritate față de această setare. Un dicționar care conține setările pentru toate bazele de date care vor fi utilizate cu Django. Acesta este un dicționar imbricat al cărui conținut alcătuiește un alias de bază de date într-un dicționar care conține opțiunile pentru o bază de date individuală. Setarea DATABASES trebuie să configureze o bază de date implicită; poate fi specificat orice număr de baze de date adiționale. O listă de adrese IP, ca șiruri de caractere, care: Permite procesorului de context debug () să adauge unele variabile în contextul șablonului. Poate utiliza marcajele admindocs chiar dacă nu este logat ca personal utilizator. Sunt marcate ca "interne" (spre deosebire de "EXTERNAL") în e-mailurile AdminEmailHandler. O listă a tuturor limbilor disponibile. Lista este o listă cu două perechi în format (codul limbii, numele limbii), de exemplu, ('ja', 'japoneză'). Aceasta specifică limbile disponibile pentru selectarea limbii. În general, valoarea implicită ar trebui să fie suficientă. Setați această setare numai dacă doriți să restricționați selectarea limbii pe un subset de limbi furnizate de Django. O listă de clase de backend de autentificare (ca șiruri) de utilizat atunci când se încearcă autentificarea unui utilizator. O listă de șiruri reprezentând numele gazdă / domenii pe care acest site le poate difuza. Aceasta este o măsură de securitate pentru a preveni atacurile de antet gazdă HTTP, care sunt posibile chiar și în cazul multor configurații aparent confortabile ale serverului web. Valorile din această listă pot fi nume calificate complet (de exemplu, "www.example.com"), caz în care acestea vor fi potrivite exact cu antetul gazdei gazdă (fără majuscule, fără a include portul). O valoare care începe cu o un punct poate fi folosită ca un wildcard subdomeniu: '.example.com' se va potrivi cu example.com, www.example.com și orice alt subdomeniu al example.com. O valoare de '*' se va potrivi cu orice; în acest caz, sunteți responsabil să vă asigurați validarea propriu-zisă a antetului Host (poate într-un middleware, dacă acest lucru trebuie să fie menționat mai întâi în MIDDLEWARE). Un șir reprezentând codul de limbă pentru această instalare. Aceasta ar trebui să fie în format standard de limbă. De exemplu, engleza americană este 'en-us'. Acesta servește două scopuri: dacă middleware-ul locale nu este utilizat, acesta decide ce traducere este servită tuturor utilizatorilor. Dacă middleware-ul local este activ, acesta oferă o limbă de rezervă în cazul în care limba preferată a utilizatorului nu poate fi determinată sau nu este acceptată de site-ul web. De asemenea, oferă traducerea de rezervă atunci când o traducere pentru un cuvânt dat nu există pentru limba preferată a utilizatorului. Un șir reprezentând fusul orar pentru această instalare. Rețineți că acest lucru nu este neapărat fusul orar al serverului. De exemplu, un server poate servi mai multe site-uri cu putere Django, fiecare având o setare de fus orar separată. O pereche reprezentând o combinație antet / valoare HTTP care semnifică o solicitare sigură. Aceasta controlează comportamentul metodei is_secure () a obiectului de solicitare. Avertisment: modificarea acestei setări poate compromite securitatea site-ului. Asigurați-vă că înțelegeți complet configurarea dvs. înainte de a o schimba. Implicit Implicit: '' (Șir gol). Parolă de utilizat pentru serverul SMTP definit în EMAIL_HOST. Această setare este utilizată împreună cu EMAIL_HOST_USER atunci când se autentifică la serverul SMTP. Dacă oricare dintre aceste setări este goală, Django nu va încerca autentificarea. Implicit: '' (Șir gol). Utilizator de utilizat pentru serverul SMTP definit în EMAIL_HOST. Dacă este gol, Django nu va încerca autentificarea. Implicit: '/ accounts / login /' URL-ul în cazul în care cererile sunt redirecționate pentru autentificare, mai ales când utilizați decoratorul login_required (). Această setare acceptă, de asemenea, șabloanele URL denumite care pot fi utilizate pentru a reduce duplicarea configurației, deoarece nu trebuie să definiți adresa URL în două locuri (setări și URLconf). Implicit: '/ accounts / profile /' Adresa URL unde cererile sunt redirecționate după autentificare când vizualizarea contrib.auth.login nu primește niciun alt parametru. Acest lucru este folosit, de exemplu, de decoratorul login_required (). Această setare acceptă, de asemenea, șabloanele URL denumite care pot fi utilizate pentru a reduce duplicarea configurației, deoarece nu trebuie să definiți adresa URL în două locuri (setări și URLconf). Implicit: „django.contrib.sessions.backends.db”. Controlează locul în care Django stochează datele sesiunii. Implicit: 'django.core.mail.backends.smtp.EmailBackend'. Backend-ul de utilizat pentru trimiterea de e-mailuri. Implicit: "localhost". Gazda de utilizat pentru trimiterea de e-mailuri. Implicit: „idsesiune”. Numele cookie-ului pe care îl folosiți pentru sesiuni. Acesta poate fi orice doriți (atât timp cât este diferit de celelalte nume cookie din aplicația dvs.). Implicit: 'webmaster @ localhost' Adresa de e-mail implicită pentru a fi utilizată pentru diverse corespondențe automate de la administratorii site-ului. Aceasta nu include mesajele de eroare trimise ADMINS și MANAGERS; pentru asta, vezi SERVER_EMAIL. Implicit: 25. Portul de utilizat pentru serverul SMTP definit în EMAIL_HOST. Implicit: 2621440 (adică 2,5 MB). Dimensiunea maximă (în octeți) pe care o încărcare va declanșa transmiterea în flux la sistemul de fișiere. Consultați Gestionarea fișierelor pentru detalii. Consultați și DATA_UPLOAD_MAX_MEMORY_SIZE. Implicit: 2621440 (adică 2,5 MB). Dimensiunea maximă în octeți pe care un corp de solicitare ar putea fi înainte ca o SuspiciousOperation (RequestDataTooBig) să fie ridicată. Verificarea se face când se accesează request.body sau request.POST și se calculează în funcție de dimensiunea totală a solicitării, excluzând datele de încărcare a fișierelor. Puteți seta această opțiune la None pentru a dezactiva verificarea. Aplicațiile care sunt așteptate să primească posturi neobișnuit de mari trebuie să ajusteze această setare. Suma datelor solicitate este corelată cu cantitatea de memorie necesară pentru procesarea solicitării și cu conținutul dicționarelor GET și POST. Solicitările mari ar putea fi folosite ca vector de atac al refuzului de serviciu dacă nu sunt bifate. Întrucât serverele web nu efectuează în mod obișnuit o inspecție profundă a solicitărilor, nu este posibil să efectuați o verificare similară la acel nivel. Consultați și FILE_UPLOAD_MAX_MEMORY_SIZE. Implicit: Fals. Dacă să utilizați o conexiune TLS (securizată) atunci când vorbiți cu serverul SMTP. Acesta este utilizat pentru conexiuni TLS explicite, în general pe portul 587. Dacă întâmpinați conexiuni suspendate, consultați setarea implicită TLS EMAIL_USE_SSL. Implicit: Fals. Dacă să utilizați o conexiune implicită TLS (securizată) atunci când vorbiți cu serverul SMTP. În majoritatea documentelor de e-mail, acest tip de conexiune TLS este denumit SSL. În general, este folosit pe portul 465. Dacă întâmpinați probleme, consultați setarea explicită TLS EMAIL_USE_TLS. Rețineți că EMAIL_USE_TLS / EMAIL_USE_SSL se exclud reciproc, deci setați numai una dintre aceste setări la True. Implicit: Niciuna. Specifică un interval de timp în secunde pentru blocarea operațiilor, cum ar fi încercarea de conectare. Implicit: Niciuna. Adresa URL unde cererile sunt redirecționate după ce un utilizator se deconectează utilizând LogoutView (dacă vizualizarea nu are un argument next_page). Dacă nu există, nu va fi efectuată nicio redirecționare și va fi redată vizualizarea logout. Această setare acceptă, de asemenea, șabloanele URL denumite care pot fi utilizate pentru a reduce duplicarea configurației, deoarece nu trebuie să definiți adresa URL în două locuri (setări și URLconf). Implicit: [] (Listă goală). Lista de obiecte de expresie obișnuită compilate care reprezintă șiruri de caractere ale utilizatorilor care nu au permisiunea de a vizita nicio pagină, la nivel de sistem. Utilizați acest lucru pentru roboți / crawlere rele. Acest lucru este folosit numai dacă este instalat CommonMiddleware (consultați Middleware). Django Editați Editați setarea: %s Editează setările Engleză Introduceți noua valoare de setare. Această setare este suprascrisă de o variabilă de mediu? Stocarea locală este în prezent dezactivată, modificările aduse valorilor setărilor nu vor fi salvate și nu vor intra în vigoare. Nume Spațiul de nume: %s, nu a fost găsit Spații de nume Suprascris Numărul setării Setarea spațiilor de nume Setarea a fost actualizată cu succes. Setări Setările din spațiul de nume: %s Setările moștenite de la o variabilă de mediu au prioritate și nu pot fi modificate în această vizualizare. Setările actualizate, reporniți instalarea și reîmprospătați browserul pentru ca modificările să intre în vigoare. Setări inteligente Motorul de stocare a fișierelor utilizat la colectarea fișierelor statice cu comanda de gestionare collectstatic. O instanță gata de utilizare a backend-ului de stocare definită în această setare poate fi găsită la django.contrib.staticfiles.storage.staticfiles_storage. Calea completă Python a obiectului aplicației WSGI pe care o vor utiliza serverele încorporate Django (de exemplu, runserver). Comanda django-admin startproject de administrare va crea un simplu fișier wsgi.py cu o aplicație care poate fi apelată în ea și va indica această setare acelei aplicații. Lista de validatori folosită pentru a verifica puterea parolelor utilizatorului. Adresa URL care trebuie utilizată atunci când se face referire la fișiere statice situate în STATIC_ROOT. Exemplu: "/static /" sau "http://static.example.com/" Dacă nu este niciunul, acesta va fi folosit ca și cale de bază pentru definirea activelor (clasa Media) și aplicația staticfiles. Trebuie să se încheie într-o bară, dacă este setată la o valoare care nu este goală. Valoare Vedeți setările Alertă Când este setat la True, dacă adresa URL a solicitării nu se potrivește cu niciunul dintre modelele din URLconf și nu se termină într-un / , redirecționarea HTTP se emite aceluiași URL cu  / adăugat. Rețineți că redirecționarea poate duce la pierderea datelor transmise într-o solicitare POST. Setarea APPEND_SLASH este utilizată numai dacă este instalat CommonMiddleware (consultați Middleware). Consultați și PREPEND_WWW. 