# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # Information about the destination for an event subscription
    #
    class EventSubscriptionDestination

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["WebHook"] = "WebHookEventSubscriptionDestination"
      @@discriminatorMap["EventHub"] = "EventHubEventSubscriptionDestination"
      @@discriminatorMap["StorageQueue"] = "StorageQueueEventSubscriptionDestination"
      @@discriminatorMap["HybridConnection"] = "HybridConnectionEventSubscriptionDestination"
      @@discriminatorMap["ServiceBusQueue"] = "ServiceBusQueueEventSubscriptionDestination"

      def initialize
        @endpointType = "EventSubscriptionDestination"
      end

      attr_accessor :endpointType


      #
      # Mapper for EventSubscriptionDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventSubscriptionDestination',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'endpointType',
            uber_parent: 'EventSubscriptionDestination',
            class_name: 'EventSubscriptionDestination',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
