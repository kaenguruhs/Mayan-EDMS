from datetime import timedelta

from ..events import (
    event_document_created, event_document_file_created,
    event_document_file_edited, event_document_type_changed,
    event_document_version_created, event_document_version_page_created,
    event_trashed_document_deleted
)
from ..models.document_models import Document
from ..settings import setting_stub_expiration_interval

from .base import GenericDocumentTestCase
from .literals import (
    TEST_DOCUMENT_SMALL_CHECKSUM, TEST_FILE_SMALL_FILENAME,
    TEST_DOCUMENT_SMALL_MIMETYPE, TEST_DOCUMENT_SMALL_SIZE
)


class DocumentTestCase(GenericDocumentTestCase):
    auto_upload_test_document = False

    def test_document_creation(self):
        self._clear_events()

        self._upload_test_document()

        self.assertEqual(
            self._test_document.document_type.label,
            self._test_document_type.label
        )

        self.assertEqual(self._test_document.file_latest.exists(), True)
        self.assertEqual(
            self._test_document.file_latest.size,
            TEST_DOCUMENT_SMALL_SIZE
        )

        self.assertEqual(
            self._test_document.file_latest.mimetype,
            TEST_DOCUMENT_SMALL_MIMETYPE
        )
        self.assertEqual(
            self._test_document.file_latest.encoding, 'binary'
        )
        self.assertEqual(
            self._test_document.file_latest.checksum,
            TEST_DOCUMENT_SMALL_CHECKSUM
        )
        self.assertEqual(
            self._test_document.file_latest.pages.count(), 1
        )
        self.assertEqual(
            self._test_document.label, TEST_FILE_SMALL_FILENAME
        )

        events = self._get_test_events()
        self.assertEqual(events.count(), 5)

        # Document created

        self.assertEqual(events[0].action_object, self.test_document_type)
        self.assertEqual(events[0].actor, self.test_document)
        self.assertEqual(events[0].target, self.test_document)
        self.assertEqual(events[0].verb, event_document_created.id)

        # Document file created

        self.assertEqual(events[1].action_object, self.test_document)
        self.assertEqual(events[1].actor, self.test_document_file)
        self.assertEqual(events[1].target, self.test_document_file)
        self.assertEqual(events[1].verb, event_document_file_created.id)

        # Document file edited (MIME type, page count update)

        self.assertEqual(events[2].action_object, self.test_document)
        self.assertEqual(events[2].actor, self.test_document_file)
        self.assertEqual(events[2].target, self.test_document_file)
        self.assertEqual(events[2].verb, event_document_file_edited.id)

        # Document version created

        self.assertEqual(events[3].action_object, self.test_document)
        self.assertEqual(events[3].actor, self.test_document_version)
        self.assertEqual(
            events[3].target, self.test_document.version_active
        )
        self.assertEqual(events[3].verb, event_document_version_created.id)

        # Document version page created

        self.assertEqual(
            events[4].action_object, self.test_document_version
        )
        self.assertEqual(
            events[4].actor, self.test_document_version_page
        )
        self.assertEqual(
            events[4].target, self.test_document_version_page
        )
        self.assertEqual(
            events[4].verb, event_document_version_page_created.id
        )

    def test_method_get_absolute_url(self):
        self._create_test_document_stub()

        self._clear_events()

        self.assertTrue(
            self._test_document.get_absolute_url()
        )

        events = self._get_test_events()
        self.assertEqual(events.count(), 0)


class DocumentManagerTestCase(GenericDocumentTestCase):
    auto_upload_test_document = False

    def test_document_stubs_deletion(self):
        document_stub = Document.objects.create(
            document_type=self._test_document_type
        )

        self._clear_events()

        Document.objects.delete_stubs()

        self.assertEqual(Document.objects.count(), 1)

        document_stub.datetime_created = document_stub.datetime_created - timedelta(
            seconds=setting_stub_expiration_interval.value + 1
        )
        document_stub.save()

        Document.objects.delete_stubs()

        self.assertEqual(Document.objects.count(), 0)

        events = self._get_test_events()
        self.assertEqual(events.count(), 1)

        self.assertEqual(events[0].action_object, None)
        self.assertEqual(events[0].actor, self.test_document_type)
        self.assertEqual(events[0].target, self.test_document_type)
        self.assertEqual(events[0].verb, event_trashed_document_deleted.id)
