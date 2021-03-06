# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  module Models
    #
    # Information about the HybridConnection destination for an event
    # subscription.
    #
    class HybridConnectionEventSubscriptionDestination < EventSubscriptionDestination

      include MsRestAzure


      def initialize
        @endpointType = "HybridConnection"
      end

      attr_accessor :endpointType

      # @return [String] The Azure Resource ID of an hybrid connection that is
      # the destination of an event subscription.
      attr_accessor :resource_id

      # @return [Array<DeliveryAttributeMapping>] Delivery attribute details.
      attr_accessor :delivery_attribute_mappings


      #
      # Mapper for HybridConnectionEventSubscriptionDestination class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HybridConnection',
          type: {
            name: 'Composite',
            class_name: 'HybridConnectionEventSubscriptionDestination',
            model_properties: {
              endpointType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
                type: {
                  name: 'String'
                }
              },
              delivery_attribute_mappings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deliveryAttributeMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeliveryAttributeMappingElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'DeliveryAttributeMapping',
                        class_name: 'DeliveryAttributeMapping'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
