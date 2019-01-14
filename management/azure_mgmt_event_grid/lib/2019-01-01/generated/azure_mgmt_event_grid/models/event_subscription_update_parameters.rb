# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_01_01
  module Models
    #
    # Properties of the Event Subscription update
    #
    class EventSubscriptionUpdateParameters

      include MsRestAzure

      # @return [EventSubscriptionDestination] Information about the
      # destination where events have to be delivered for the event
      # subscription.
      attr_accessor :destination

      # @return [EventSubscriptionFilter] Information about the filter for the
      # event subscription.
      attr_accessor :filter

      # @return [Array<String>] List of user defined labels.
      attr_accessor :labels

      # @return [RetryPolicy] The retry policy for events. This can be used to
      # configure maximum number of delivery attempts and time to live for
      # events.
      attr_accessor :retry_policy

      # @return [DeadLetterDestination] The DeadLetter destination of the event
      # subscription.
      attr_accessor :dead_letter_destination


      #
      # Mapper for EventSubscriptionUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSubscriptionUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'EventSubscriptionUpdateParameters',
            model_properties: {
              destination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'endpointType',
                  uber_parent: 'EventSubscriptionDestination',
                  class_name: 'EventSubscriptionDestination'
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filter',
                type: {
                  name: 'Composite',
                  class_name: 'EventSubscriptionFilter'
                }
              },
              labels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'labels',
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
              retry_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retryPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetryPolicy'
                }
              },
              dead_letter_destination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deadLetterDestination',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'endpointType',
                  uber_parent: 'DeadLetterDestination',
                  class_name: 'DeadLetterDestination'
                }
              }
            }
          }
        }
      end
    end
  end
end
