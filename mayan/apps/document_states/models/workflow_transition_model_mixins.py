import hashlib

from django.core import serializers
from django.utils.translation import gettext_lazy as _

from mayan.apps.common.serialization import yaml_load
from mayan.apps.templating.classes import Template

from ..literals import GRAPHVIZ_SYMBOL_CONDITIONAL, GRAPHVIZ_SYMBOL_TRIGGER


class WorkflowTransitionBusinessLogicMixin:
    def do_diagram_generate(self, diagram):
        if self.has_condition():
            transition_label = '{} {}'.format(
                self.label, GRAPHVIZ_SYMBOL_CONDITIONAL
            )
        else:
            transition_label = self.label

        if self.trigger_events.exists():
            transition_label = '{} {}'.format(
                transition_label, GRAPHVIZ_SYMBOL_TRIGGER
            )

        edge_kwargs = {
            'head_name': self.destination_state.get_graph_id(),
            'label': '''<
                <table border="3" cellborder="0" color="white">
                    <tr>
                        <td bgcolor="white">{}</td>
                    </tr>
                </table>
            >'''.format(transition_label),
            'tail_name': self.origin_state.get_graph_id()
        }
        diagram.edge(**edge_kwargs)

    def evaluate_condition(self, workflow_instance):
        if self.has_condition():
            return Template(template_string=self.condition).render(
                context={'workflow_instance': workflow_instance}
            ).strip()
        else:
            return True

    def get_field_display(self):
        field_list = [
            str(field) for field in self.fields.all()
        ]
        field_list.sort()

        return ', '.join(field_list)

    get_field_display.short_description = _(message='Fields')

    def get_hash(self):
        result = hashlib.sha256(
            string=serializers.serialize(
                format='json', queryset=(self,)
            ).encode()
        )
        for trigger_event in self.trigger_events.all():
            result.update(
                trigger_event.get_hash().encode()
            )

        for field in self.fields.all():
            result.update(
                field.get_hash().encode()
            )

        return result.hexdigest()

    def has_condition(self):
        return self.condition.strip()
    has_condition.help_text = _(
        message='The transition will be available, depending on the condition '
        'return value.'
    )
    has_condition.short_description = _(message='Has a condition?')


class WorkflowTransitionFieldBusinessLogicMixin:
    def get_hash(self):
        return hashlib.sha256(
            string=serializers.serialize(
                format='json', queryset=(self,)
            ).encode()
        ).hexdigest()

    def get_widget_kwargs(self):
        return yaml_load(
            stream=self.widget_kwargs or '{}'
        )


class WorkflowTransitionTriggerEventBusinessLogicMixin:
    def get_hash(self):
        return hashlib.sha256(
            string=serializers.serialize(
                format='json', queryset=(self,)
            ).encode()
        ).hexdigest()
