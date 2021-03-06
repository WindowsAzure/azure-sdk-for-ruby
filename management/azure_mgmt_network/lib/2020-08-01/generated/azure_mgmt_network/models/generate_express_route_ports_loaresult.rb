# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Response for GenerateExpressRoutePortsLOA API service call.
    #
    class GenerateExpressRoutePortsLOAResult

      include MsRestAzure

      # @return [String] The content as a base64 encoded string.
      attr_accessor :encoded_content


      #
      # Mapper for GenerateExpressRoutePortsLOAResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenerateExpressRoutePortsLOAResult',
          type: {
            name: 'Composite',
            class_name: 'GenerateExpressRoutePortsLOAResult',
            model_properties: {
              encoded_content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encodedContent',
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
