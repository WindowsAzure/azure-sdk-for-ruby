# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2017_06_15_preview
  module Models
    #
    # Filter for the Event Subscription
    #
    class EventSubscriptionFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] An optional string to filter events for an event
      # subscription based on a resource path prefix.
      # The format of this depends on the publisher of the events.
      # Wildcard characters are not supported in this path.
      attr_accessor :subject_begins_with

      # @return [String] An optional string to filter events for an event
      # subscription based on a resource path suffix.
      # Wildcard characters are not supported in this path.
      attr_accessor :subject_ends_with

      # @return [Array<String>] A list of applicable event types that need to
      # be part of the event subscription.
      # If it is desired to subscribe to all event types, the string "all"
      # needs to be specified as an element in this list.
      attr_accessor :included_event_types

      # @return [Boolean] Specifies if the SubjectBeginsWith and
      # SubjectEndsWith properties of the filter
      # should be compared in a case sensitive manner. Default value: false .
      attr_accessor :is_subject_case_sensitive


      #
      # Mapper for EventSubscriptionFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSubscriptionFilter',
          type: {
            name: 'Composite',
            class_name: 'EventSubscriptionFilter',
            model_properties: {
              subject_begins_with: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subjectBeginsWith',
                type: {
                  name: 'String'
                }
              },
              subject_ends_with: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subjectEndsWith',
                type: {
                  name: 'String'
                }
              },
              included_event_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'includedEventTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_subject_case_sensitive: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isSubjectCaseSensitive',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
