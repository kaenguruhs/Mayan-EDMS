from itertools import chain, islice
import logging
import re

from django.apps import apps
from django.utils.translation import gettext_lazy as _

from mayan.apps.templating.classes import Template

from .literals import (
    DOCUMENT_FILE_SOURCE_METADATA_BATCH_SIZE,
    REGULAR_EXPRESSION_MATCH_EVERYTHING, REGULAR_EXPRESSION_MATCH_NOTHING
)

logger = logging.getLogger(name=__name__)


class SourceBackendMixinRegularExpression:
    @classmethod
    def get_form_fields(cls):
        fields = super().get_form_fields()

        fields.update(
            {
                'include_regex': {
                    'class': 'mayan.apps.templating.fields.TemplateField',
                    'default': '',
                    'kwargs': {
                        'initial_help_text': _(
                            message='Regular expression used to select which '
                            'files to upload.'
                        )
                    },
                    'label': _(message='Include regular expression'),
                    'required': False
                },
                'exclude_regex': {
                    'class': 'mayan.apps.templating.fields.TemplateField',
                    'default': '',
                    'kwargs': {
                        'initial_help_text': _(
                            message='Regular expression used to exclude '
                            'which files to upload.'
                        )
                    },
                    'label': _(message='Exclude regular expression'),
                    'required': False
                }
            }
        )

        return fields

    @classmethod
    def get_form_fieldsets(cls):
        fieldsets = super().get_form_fieldsets()

        fieldsets += (
            (
                _(message='Content selection'), {
                    'fields': ('include_regex', 'exclude_regex')
                }
            ),
        )

        return fieldsets

    def get_regex_exclude(self):
        template_string = self.kwargs.get(
            'exclude_regex', REGULAR_EXPRESSION_MATCH_NOTHING
        ) or REGULAR_EXPRESSION_MATCH_NOTHING

        template = Template(template_string=template_string)

        template_result = template.render()

        return re.compile(pattern=template_result)

    def get_regex_include(self):
        template_string = self.kwargs.get(
            'include_regex', REGULAR_EXPRESSION_MATCH_EVERYTHING
        )

        template = Template(template_string=template_string)

        template_result = template.render()

        return re.compile(pattern=template_result)


class SourceBackendMixinSourceMetadata:
    def callback_post_document_file_create(
        self, source_metadata=None, **kwargs
    ):
        super().callback_post_document_file_create(**kwargs)

        DocumentFileSourceMetadata = apps.get_model(
            app_label='sources', model_name='DocumentFileSourceMetadata'
        )

        document_file = kwargs['document_file']
        source_id = kwargs['source_id']
        source_metadata = source_metadata or {}

        document_file_source_metadata_list = (
            DocumentFileSourceMetadata(
                document_file=document_file, key=key, source_id=source_id,
                value=value
            ) for key, value in source_metadata.items()
        )

        document_file_source_metadata_source_id = DocumentFileSourceMetadata(
            document_file=document_file, key='source_id',
            source_id=source_id, value=source_id
        )

        document_file_source_metadata_list = chain(
            (document_file_source_metadata_source_id,),
            document_file_source_metadata_list
        )

        while True:
            batch = list(
                islice(
                    document_file_source_metadata_list,
                    DOCUMENT_FILE_SOURCE_METADATA_BATCH_SIZE
                )
            )

            if not batch:
                break

            DocumentFileSourceMetadata.objects.bulk_create(
                batch_size=DOCUMENT_FILE_SOURCE_METADATA_BATCH_SIZE,
                objs=batch
            )
