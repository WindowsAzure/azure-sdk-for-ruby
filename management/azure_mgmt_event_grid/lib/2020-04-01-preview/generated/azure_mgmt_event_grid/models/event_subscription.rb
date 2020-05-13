# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # Event Subscription
    #
    class EventSubscription < Resource

      include MsRestAzure

      # @return [String] Name of the topic of the event subscription.
      attr_accessor :topic

      # @return [EventSubscriptionProvisioningState] Provisioning state of the
      # event subscription. Possible values include: 'Creating', 'Updating',
      # 'Deleting', 'Succeeded', 'Canceled', 'Failed', 'AwaitingManualAction'
      attr_accessor :provisioning_state

      # @return [EventSubscriptionDestination] Information about the
      # destination where events have to be delivered for the event
      # subscription.
      # Uses Azure Event Grid's identity to acquire the authentication tokens
      # being used during delivery / dead-lettering.
      attr_accessor :destination

      # @return [DeliveryWithResourceIdentity] Information about the
      # destination where events have to be delivered for the event
      # subscription.
      # Uses the managed identity setup on the parent resource (namely, topic
      # or domain) to acquire the authentication tokens being used during
      # delivery / dead-lettering.
      attr_accessor :delivery_with_resource_identity

      # @return [EventSubscriptionFilter] Information about the filter for the
      # event subscription.
      attr_accessor :filter

      # @return [Array<String>] List of user defined labels.
      attr_accessor :labels

      # @return [DateTime] Expiration time of the event subscription.
      attr_accessor :expiration_time_utc

      # @return [EventDeliverySchema] The event delivery schema for the event
      # subscription. Possible values include: 'EventGridSchema',
      # 'CustomInputSchema', 'CloudEventSchemaV1_0'
      attr_accessor :event_delivery_schema

      # @return [RetryPolicy] The retry policy for events. This can be used to
      # configure maximum number of delivery attempts and time to live for
      # events.
      attr_accessor :retry_policy

      # @return [DeadLetterDestination] The dead letter destination of the
      # event subscription. Any event that cannot be delivered to its'
      # destination is sent to the dead letter destination.
      # Uses Azure Event Grid's identity to acquire the authentication tokens
      # being used during delivery / dead-lettering.
      attr_accessor :dead_letter_destination

      # @return [DeadLetterWithResourceIdentity] The dead letter destination of
      # the event subscription. Any event that cannot be delivered to its'
      # destination is sent to the dead letter destination.
      # Uses the managed identity setup on the parent resource (namely, topic
      # or domain) to acquire the authentication tokens being used during
      # delivery / dead-lettering.
      attr_accessor :dead_letter_with_resource_identity


      #
      # Mapper for EventSubscription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSubscription',
          type: {
            name: 'Composite',
            class_name: 'EventSubscription',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              topic: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.topic',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              destination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destination',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'endpointType',
                  uber_parent: 'EventSubscriptionDestination',
                  class_name: 'EventSubscriptionDestination'
                }
              },
              delivery_with_resource_identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deliveryWithResourceIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'DeliveryWithResourceIdentity'
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.filter',
                type: {
                  name: 'Composite',
                  class_name: 'EventSubscriptionFilter'
                }
              },
              labels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.labels',
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
              expiration_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expirationTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              event_delivery_schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eventDeliverySchema',
                type: {
                  name: 'String'
                }
              },
              retry_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.retryPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetryPolicy'
                }
              },
              dead_letter_destination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deadLetterDestination',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'endpointType',
                  uber_parent: 'DeadLetterDestination',
                  class_name: 'DeadLetterDestination'
                }
              },
              dead_letter_with_resource_identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deadLetterWithResourceIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'DeadLetterWithResourceIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end
