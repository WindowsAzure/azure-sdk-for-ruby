# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  module Models
    #
    # Array of CloudEndpoint
    #
    class CloudEndpointArray

      include MsRestAzure

      # @return [Array<CloudEndpoint>] Collection of CloudEndpoint.
      attr_accessor :value


      #
      # Mapper for CloudEndpointArray class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudEndpointArray',
          type: {
            name: 'Composite',
            class_name: 'CloudEndpointArray',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CloudEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CloudEndpoint'
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
