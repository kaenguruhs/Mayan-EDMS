��    =        S   �      8     9  �   Q  �      B  �    7  s  O	  d   �
    (  +  5  �   a  #  C     g     o    w  �   z  2     u  3  Z   �  ^     8   c  �   �  �   H  C      �   d  2  )  �   \  �  Q  b   �  �  @      �!     �"     �"     �"     �"     �"     �"  =   #  `   X#     �#     �#  
   �#  
   �#  )   �#     $     %$     8$     V$     _$  d   y$     �$  `   �$     R%  �   a%    W&  O   h'    �'     �(     �(     �(  x  �(  s  h*      �+  �   �+    �,  c  �-  :  9/  �  t0  �   �1  �  �2  L   6  �   m8  E  \9  	   �:     �:    �:  �   �;  2  X<  �  �=  u   /?  k   �?  Q   @  �   c@    ,A  b   .B  �   �B  �  �C  4  %G  �  ZH  u   ?J  �  �J  4  �L     �M     �M     �M     �M  
   �M     �M  G   N  {   _N     �N     �N     �N     	O  ,   O     KO     YO     mO     �O     �O  `   �O     P  {   %P     �P    �P    �Q  c   �R  G  8S     �T     �T     �T  �  �T     8   '       3                           5   1      !   #          ;                  $   (   *          
       &              <                7   =              ,      9         -          %         4   0                  +   :   "              6   2                )   /   .            	           "%s" not a valid entry. A boolean that specifies whether to use the X-Forwarded-Host header in preference to the Host header. This should only be enabled if a proxy which sets this header is in use. A boolean that specifies whether to use the X-Forwarded-Port header in preference to the SERVER_PORT META variable. This should only be enabled if a proxy which sets this header is in use. USE_X_FORWARDED_HOST takes priority over this setting. A dictionary containing the settings for all databases to be used with Django. It is a nested dictionary whose contents map a database alias to a dictionary containing the options for an individual database. The DATABASES setting must configure a default database; any number of additional databases may also be specified. A list of IP addresses, as strings, that: Allow the debug() context processor to add some variables to the template context. Can use the admindocs bookmarklets even if not logged in as a staff user. Are marked as "internal" (as opposed to "EXTERNAL") in AdminEmailHandler emails. A list of all available languages. The list is a list of two-tuples in the format (language code, language name) for example, ('ja', 'Japanese'). This specifies which languages are available for language selection. Generally, the default value should suffice. Only set this setting if you want to restrict language selection to a subset of the Django-provided languages.  A list of authentication backend classes (as strings) to use when attempting to authenticate a user. A list of strings representing the host/domain names that this site can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly-safe web server configurations. Values in this list can be fully qualified names (e.g. 'www.example.com'), in which case they will be matched against the request's Host header exactly (case-insensitive, not including port). A value beginning with a period can be used as a subdomain wildcard: '.example.com' will match example.com, www.example.com, and any other subdomain of example.com. A value of '*' will match anything; in this case you are responsible to provide your own validation of the Host header (perhaps in a middleware; if so this middleware must be listed first in MIDDLEWARE). A string representing the language code for this installation. This should be in standard language ID format. For example, U.S. English is "en-us". It serves two purposes: If the locale middleware isn't in use, it decides which translation is served to all users. If the locale middleware is active, it provides a fallback language in case the user's preferred language can't be determined or is not supported by the website. It also provides the fallback translation when a translation for a given literal doesn't exist for the user's preferred language. A string representing the time zone for this installation. Note that this isn't necessarily the time zone of the server. For example, one server may serve multiple Django-powered sites, each with a separate time zone setting. A tuple representing a HTTP header/value combination that signifies a request is secure. This controls the behavior of the request object’s is_secure() method. Warning: Modifying this setting can compromise your site’s security. Ensure you fully understand your setup before changing it. Choices Default Default: '' (Empty string). Password to use for the SMTP server defined in EMAIL_HOST. This setting is used in conjunction with EMAIL_HOST_USER when authenticating to the SMTP server. If either of these settings is empty, Django won't attempt authentication. Default: '' (Empty string). Username to use for the SMTP server defined in EMAIL_HOST. If empty, Django won't attempt authentication. Default: '/accounts/login/' The URL where requests are redirected for login, especially when using the login_required() decorator. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: '/accounts/profile/' The URL where requests are redirected after login when the contrib.auth.login view gets no next parameter. This is used by the login_required() decorator, for example. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: 'django.contrib.sessions.backends.db'. Controls where Django stores session data. Default: 'django.core.mail.backends.smtp.EmailBackend'. The backend to use for sending emails. Default: 'localhost'. The host to use for sending email. Default: 'sessionid'. The name of the cookie to use for sessions.This can be whatever you want (as long as it's different from the other cookie names in your application). Default: 'webmaster@localhost' Default email address to use for various automated correspondence from the site manager(s). This doesn't include error messages sent to ADMINS and MANAGERS; for that, see SERVER_EMAIL. Default: 25. Port to use for the SMTP server defined in EMAIL_HOST. Default: 2621440 (i.e. 2.5 MB). The maximum size (in bytes) that an upload will be before it gets streamed to the file system. See Managing files for details. See also DATA_UPLOAD_MAX_MEMORY_SIZE. Default: 2621440 (i.e. 2.5 MB). The maximum size in bytes that a request body may be before a SuspiciousOperation (RequestDataTooBig) is raised. The check is done when accessing request.body or request.POST and is calculated against the total request size excluding any file upload data. You can set this to None to disable the check. Applications that are expected to receive unusually large form posts should tune this setting. The amount of request data is correlated to the amount of memory needed to process the request and populate the GET and POST dictionaries. Large requests could be used as a denial-of-service attack vector if left unchecked. Since web servers don't typically perform deep request inspection, it's not possible to perform a similar check at that level. See also FILE_UPLOAD_MAX_MEMORY_SIZE. Default: False. Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. If you are experiencing hanging connections, see the implicit TLS setting EMAIL_USE_SSL. Default: False. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting EMAIL_USE_TLS. Note that EMAIL_USE_TLS/EMAIL_USE_SSL are mutually exclusive, so only set one of those settings to True. Default: None. Specifies a timeout in seconds for blocking operations like the connection attempt. Default: None. The URL where requests are redirected after a user logs out using LogoutView (if the view doesn't get a next_page argument). If None, no redirect will be performed and the logout view will be rendered. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Default: [] (Empty list). List of compiled regular expression objects representing User-Agent strings that are not allowed to visit any page, systemwide. Use this for bad robots/crawlers. This is only used if CommonMiddleware is installed (see Middleware). Django Edit Edit setting: %s Edit settings English Enter the new setting value. Is this settings being overridden by an environment variable? Local storage is currently disabled, changes to setting values will not be saved or take effect. Name Namespace: %s, not found Namespaces Overridden Possible values allowed for this setting. Setting count Setting namespaces Setting updated successfully. Settings Settings in namespace: %s Settings inherited from an environment variable take precedence and cannot be changed in this view.  Settings namespace Settings updated, restart your installation and refresh your browser for changes to take effect. Smart settings The file storage engine to use when collecting static files with the collectstatic management command. A ready-to-use instance of the storage backend defined in this setting can be found at django.contrib.staticfiles.storage.staticfiles_storage. The full Python path of the WSGI application object that Django's built-in servers (e.g. runserver) will use. The django-admin startproject management command will create a simple wsgi.py file with an application callable in it, and point this setting to that application. The list of validators that are used to check the strength of user's passwords. URL to use when referring to static files located in STATIC_ROOT. Example: "/static/" or "http://static.example.com/" If not None, this will be used as the base path for asset definitions (the Media class) and the staticfiles app. It must end in a slash if set to a non-empty value. Value View settings Warning When set to True, if the request URL does not match any of the patterns in the URLconf and it doesn't end in a slash, an HTTP redirect is issued to the same URL with a slash appended. Note that the redirect may cause any data submitted in a POST request to be lost. The APPEND_SLASH setting is only used if CommonMiddleware is installed (see Middleware). See also PREPEND_WWW. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-09-06 21:36+0000
Last-Translator: Bedreddin Şahbaz, 2023
Language-Team: Turkish (Turkey) (https://app.transifex.com/rosarior/teams/13584/tr_TR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: tr_TR
Plural-Forms: nplurals=2; plural=(n > 1);
 "%s" geçerli bir giriş değil. X-Forwarded-Host üstbilgisinin Ana Bilgisayar üstbilgisine tercih edilip edilmeyeceğini belirten bir boolean. Bu, yalnızca bu üstbilgiyi ayarlayan bir proxy kullanılıyorsa etkinleştirilmelidir. X-Forwarded-Port üstbilgisinin SERVER_PORT META değişkeni tercihinde kullanılıp kullanılmayacağını belirten bir boolean. Bu, yalnızca bu üstbilgiyi ayarlayan bir proxy kullanılıyorsa etkinleştirilmelidir. USE_X_FORWARDED_HOST bu ayara göre önceliklidir. Django ile kullanılacak tüm veritabanlarının ayarlarını içeren bir sözlük. İçeriği, bir veritabanı takma adını tek bir veritabanı için seçenekleri içeren bir sözlüğe eşleyen iç içe bir sözlüktür. VERİTABANLARI ayarı varsayılan bir veritabanını yapılandırmalıdır; herhangi bir sayıda ek veri tabanı da belirtilebilir. Dize olarak IP adreslerinin listesi: Debug() bağlam işlemcisinin şablon bağlamına bazı değişkenler eklemesine izin verin. Personel kullanıcısı olarak oturum açmamış olsa bile admindocs yer işaretlerini kullanabilir. AdminEmailHandler e-postalarında "dahili" ("HARİCİ" yerine) olarak işaretlenir. Mevcut tüm dillerin bir listesi. Liste, örneğin ('ja', 'Japonca') biçimindeki (dil kodu, dil adı) iki kümeden oluşan bir listedir. Bu, dil seçimi için hangi dillerin kullanılabileceğini belirtir. Genel olarak, varsayılan değer yeterli olmalıdır. Bu ayarı yalnızca dil seçimini Django tarafından sağlanan dillerin bir alt kümesiyle sınırlamak istiyorsanız ayarlayın. Bir kullanıcının kimliğini doğrulamaya çalışırken kullanılacak kimlik doğrulama backend sınıflarının (dizeler olarak) listesi. Bu sitenin sunabileceği ana bilgisayar/etki alanı adlarını temsil eden dizelerin listesi. Bu, görünüşte güvenli birçok web sunucusu yapılandırmasında bile mümkün olan HTTP Host başlık saldırılarını önlemek için bir güvenlik önlemidir. Bu listedeki değerler tam olarak nitelenmiş adlar olabilir (örneğin 'www.example.com'), bu durumda bunlar isteğin Ana Bilgisayar başlığıyla tam olarak eşleştirilir (büyük/küçük harfe duyarlı değildir, bağlantı noktası dahil değildir). Alt alan joker karakteri olarak nokta ile başlayan bir değer kullanılabilir: '.example.com' example.com, www.example.com ve example.com'un diğer herhangi bir alt alanıyla eşleşir. '*' değeri her şeyle eşleşir; bu durumda, Host başlığı için kendi doğrulamanızı sağlamaktan sorumlusunuz (belki bir ara yazılımda; öyleyse bu ara yazılım ilk olarak MIDDLEWARE'de listelenmelidir). Bu yükleme için dil kodunu temsil eden bir dize. Bu standart dil kimliği biçiminde olmalıdır. Örneğin, ABD ingilizcesi "en-us" dur. İki amaca hizmet eder: Yerel katman yazılımı kullanılmıyorsa, tüm kullanıcılara hangi çevirinin sunulacağına karar verir. Yerel katman yazılımı etkinse, kullanıcının tercih ettiği dilin belirlenememesi veya web sitesi tarafından desteklenmemesi durumunda bir geri dönüş dili sağlar. Ayrıca, kullanıcının tercih ettiği dil için belirli bir kelimenin çevirisi mevcut olmadığında geri dönüş çevirisini de sağlar. Bu yükleme için saat dilimini temsil eden bir dize. Bunun mutlaka sunucunun saat dilimi olmadığını unutmayın. Örneğin, bir sunucu, her biri ayrı bir saat dilimi ayarına sahip birden çok Django destekli siteye hizmet verebilir. Bir isteği ifade eden bir HTTP üstbilgisi / değer kombinasyonunu temsil eden bir demet güvenlidir. Bu, istek nesnesinin is_secure() yönteminin davranışını denetler. Uyarı: Bu ayarı değiştirmek sitenizin güvenliğini tehlikeye atabilir. Değiştirmeden önce kurulumunuzu tam olarak anladığınızdan emin olun. Seçimler Varsayılan Varsayılan: " (Boş dize). EMAİL_HOST'TA tanımlanan SMTP sunucusu için kullanılacak parola. Bu ayar, SMTP sunucusunda kimlik doğrulaması yapılırken EMAIL_HOST_USER ile birlikte kullanılır. Bu ayarlardan biri boşsa, Django kimlik doğrulamayı denemez. Varsayılan: " (Boş dize). EMAİL_HOST'TA tanımlanan SMTP sunucusu için kullanılacak kullanıcı adı. Boşsa, Django kimlik doğrulamayı denemez. Default: '/accounts/login/' The URL where requests are redirected for login, especially when using the login_required() decorator. This setting also accepts named URL patterns which can be used to reduce configuration duplication since you don't have to define the URL in two places (settings and URLconf). Varsayılan: '/accounts/profile/' İsteklerin giriş yaptıktan sonra yönlendirildiği URL.imza.oturum açma görünümü bir sonraki parametreyi almaz. Bu, örneğin login_required() dekoratörü tarafından kullanılır. Bu ayar, URL'yi iki yerde tanımlamanız gerekmediğinden (ayarlar ve URLconf) yapılandırma çoğaltmasını azaltmak için kullanılabilecek adlandırılmış URL kalıplarını da kabul eder. Varsayılan: 'django.contrib.sessions.backends.db'. Django'nun oturum verilerini nerede sakladığını kontrol eder. Varsayılan: 'django.core.mail.backends.smtp.EmailBackend'. E-posta göndermek için kullanılacak backend. Varsayılan: 'localhost';. E-posta göndermek için kullanılacak ana bilgisayar. Varsayılan: 'sessionid'. Oturumlar için kullanılacak tanımlama bilgisinin adı. Bu, istediğiniz her şey olabilir (uygulamanızdaki diğer tanımlama bilgisi adlarından farklı olduğu sürece). Varsayılan: 'webmaster@localhost' Site yöneticisinden/yöneticilerinden çeşitli otomatik yazışmalar için kullanılacak varsayılan e-posta adresi. Bu, ADMIN ve YÖNETİCİLER'e gönderilen hata mesajlarını içermez; (bunun için bkz. SERVER_EMAIL). Varsayılan: 25. EMAİL_HOST'TA tanımlanan SMTP sunucusu için kullanılacak bağlantı noktası. Varsayılan: 2621440 (yani 2,5 MB). Bir karşıya yüklemenin dosya sistemine aktarılmadan önce olacağı maksimum boyut (bayt cinsinden). Ayrıntılar için Dosyaları yönetme konusuna bakın. Ayrıca bkz. DATA_UPLOAD_MAX_MEMORY_SİZE. Varsayılan: 2621440 (yani 2,5 MB). Bir SuspiciousOperation (RequestDataTooBig) oluşturulmadan önce bir istek gövdesinin bayt cinsinden maksimum boyutu. İstek erişilirken kontrol yapılır. request.body veya request.POST erişim sırasında kontrol yapılır ve herhangi bir dosya yükleme verisi hariç toplam istek boyutuna göre hesaplanır. Kontrolü devre dışı bırakmak için bunu Yok olarak ayarlayabilirsiniz. Alışılmadık derecede büyük form gönderileri alması beklenen uygulamalar bu ayarı ayarlamalıdır. İstek verilerinin miktarı, isteği işlemek ve GET ve POST sözlüklerini doldurmak için gereken bellek miktarıyla ilişkilendirilir. Büyük istekler, denetlenmezse hizmet reddi saldırı vektörü olarak kullanılabilir. Web sunucuları genellikle derin istek denetimi yapmadığından, bu düzeyde benzer bir denetim yapmak mümkün değildir. Ayrıca bakınız FİLE_UPLOAD_MAX_MEMORY_SİZE Varsayılan: False. SMTP sunucusuyla konuşurken TLS (güvenli) bağlantısının kullanılıp kullanılmayacağı. Bu, genellikle 587 numaralı bağlantı noktasında açık TLS bağlantıları için kullanılır. Asılı bağlantılarla karşılaşıyorsanız, örtülü TLS ayarına bakın EMAİL_USE_SSL. Varsayılan: False. SMTP sunucusuyla konuşurken örtülü bir TLS (güvenli) bağlantısının kullanılıp kullanılmayacağı. Çoğu e-posta belgesinde bu tür bir TLS bağlantısı SSL olarak adlandırılır. Genellikle 465 numaralı bağlantı noktasında kullanılır. Sorun yaşıyorsanız, EMAİL_USE_TLS açık TLS ayarına bakın. EMAİL_USE_TLS / EMAİL_USE_SSL'NİN birbirini dışladığını unutmayın, bu nedenle bu ayarlardan yalnızca birini True olarak ayarlayın. Varsayılan: Yok. Bağlantı girişimi gibi işlemleri engellemek için saniye cinsinden bir zaman aşımı belirtir. Varsayılan: Yok. Bir kullanıcı Oturumu Kapatma Görünümünü kullanarak oturumu kapattıktan sonra isteklerin yönlendirildiği URL (görünüm next_page bağımsız değişkeni almıyorsa). Yok ise, yönlendirme yapılmaz ve çıkış görünümü oluşturulur. Bu ayar, URL'yi iki yerde tanımlamanız gerekmediğinden (ayarlar ve URLconf) yapılandırma çoğaltmasını azaltmak için kullanılabilecek adlandırılmış URL kalıplarını da kabul eder. Varsayılan: [] (Boş liste). Sistem genelinde herhangi bir sayfayı ziyaret etmesine izin verilmeyen User-Agent dizelerini temsil eden derlenmiş düzenli ifade nesnelerinin listesi. Bunu kötü robotlar/tarayıcılar için kullanın. Bu, yalnızca CommonMiddleware kuruluysa kullanılır (bkz. Middleware). Django Düzenle Ayarı düzenle: %s Ayarları düzenle İngilizce Yeni ayar değerini girin. Bu ayarlar bir ortam değişkeni tarafından geçersiz kılınıyor mu? Yerel depolama şu anda devre dışı, ayar değerlerinde yapılan değişiklikler kaydedilmeyecek veya geçerli olmayacak. İsim Ad alanı: %s, bulunamadı Ad alanları Geçersiz kılındı Bu ayar için izin verilen olası değerler. Ayar sayısı Alan adları ayarı Ayar başarıyla güncellendi. Ayarlar %sİsim alanındaki ayarlar:  Bir ortam değişkeninden devralınan ayarlar önceliklidir ve bu görünümde değiştirilemez. Ayarlar ad alanı Ayarlar güncellendi, kurulumunuzu yeniden başlatın ve değişikliklerin etkili olması için tarayıcınızı yenileyin. Akıllı ayarlar Collectstatic management komutuyla statik dosyaları toplarken kullanılacak dosya depolama altyapısı. Bu ayarda tanımlanan depolama arka ucunun kullanıma hazır bir örneğini şu adreste bulabilirsiniz: django.yapmacık.statik dosyalar.depolama.statıcfıles_storage. Django'nun yerleşik sunucularının (örn. runserver) kullanacağı WSGI uygulama nesnesinin tam Python yolu. Django-admin startproject yönetim komutu basit bir wsgi.py içinde çağrılabilir bir uygulama bulunan dosyayı açın ve bu ayarı o uygulamaya yönlendirin. Kullanıcı parolalarının gücünü kontrol etmek için kullanılan doğrulayıcıların listesi. STATİC_ROOT içinde bulunan statik dosyalara başvururken kullanılacak URL. Örnek: "/statik/" veya "http://static.example.com/" Hiçbiri değilse, bu, varlık tanımları (Medya sınıfı) ve staticfiles uygulaması için temel yol olarak kullanılacaktır. Boş olmayan bir değere ayarlanırsa eğik çizgi ile bitmelidir. Değer Ayarları görüntüle Uyarı True olarak ayarlandığında, istek URL'si URLconf'taki kalıplardan herhangi biriyle eşleşmiyorsa ve "/" ile bitmiyorsa, aynı URL'ye "/" eklenmiş bir HTTP yönlendirmesi verilir. Yönlendirmenin, bir POST isteğinde gönderilen verilerin kaybolmasına neden olabileceğini unutmayın. APPEND_SLASH ayarı yalnızca CommonMiddleware kuruluysa kullanılır (bkz. Middleware). Ayrıca bkz. PREPEND_WWW. 