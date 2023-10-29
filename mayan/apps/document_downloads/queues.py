from django.utils.translation import ugettext_lazy as _

from mayan.apps.task_manager.classes import CeleryQueue
from mayan.apps.task_manager.workers import worker_c

queue_document_downloads = CeleryQueue(
    name='documents_downloads', label=_('Documents downloads'),
    worker=worker_c
)

queue_document_downloads.add_task_type(
    dotted_path='mayan.apps.document_downloads.tasks.task_document_file_compress',
    label=_('Generate a compressed document file bundle')
)
