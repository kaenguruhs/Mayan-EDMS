import logging

from django.conf import settings
from django.contrib.auth import get_user_model
from django.contrib.auth.signals import user_logged_in
from django.db.models.signals import post_save
from django.utils.translation import ugettext_lazy as _

from mayan.apps.common.apps import MayanAppConfig
from mayan.apps.common.menus import menu_list_facet, menu_object, menu_user

from .handlers import (
    handler_user_locale_profile_session_config,
    handler_user_locale_profile_create
)
from .links import (
    link_user_locale_profile_detail, link_user_locale_profile_edit
)
from .patches import patchDjangoTranslation

logger = logging.getLogger(name=__name__)


class LocalesApp(MayanAppConfig):
    app_namespace = 'locales'
    app_url = 'locales'
    has_rest_api = False
    has_tests = False
    name = 'mayan.apps.locales'
    verbose_name = _('Locales')

    def ready(self):
        super().ready()
        User = get_user_model()

        patchDjangoTranslation()

        menu_list_facet.bind_links(
            links=(
                link_user_locale_profile_detail,
            ), sources=(User,)
        )

        menu_object.bind_links(
            links=(
                link_user_locale_profile_edit,
            ), sources=(User,)
        )

        post_save.connect(
            dispatch_uid='common_handler_user_locale_profile_create',
            receiver=handler_user_locale_profile_create,
            sender=settings.AUTH_USER_MODEL
        )

        user_logged_in.connect(
            dispatch_uid='common_handler_user_locale_profile_session_config',
            receiver=handler_user_locale_profile_session_config
        )
