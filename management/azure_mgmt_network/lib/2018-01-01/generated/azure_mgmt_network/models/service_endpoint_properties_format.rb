# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_01_01
  module Models
    #
    # The service endpoint properties.
    #
    class ServiceEndpointPropertiesFormat

      include MsRestAzure

      # @return [String] The type of the endpoint service.
      attr_accessor :service

      # @return [Array<String>] A list of locations.
      attr_accessor :locations

      # @return [String] The provisioning state of the resource.
      attr_accessor :provisioning_state


      #
      # Mapper for ServiceEndpointPropertiesFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceEndpointPropertiesFormat',
          type: {
            name: 'Composite',
            class_name: 'ServiceEndpointPropertiesFormat',
            model_properties: {
              service: {
                required: false,
                serialized_name: 'service',
                type: {
                  name: 'String'
                }
              },
              locations: {
                required: false,
                serialized_name: 'locations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
