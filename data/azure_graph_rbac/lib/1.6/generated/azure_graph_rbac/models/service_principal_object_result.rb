# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Service Principal Object Result.
    #
    class ServicePrincipalObjectResult

      include MsRestAzure

      # @return [Array<String>] A collection of Application Objects.
      attr_accessor :value

      # @return [String] The URL representing edm equivalent.
      attr_accessor :odatametadata


      #
      # Mapper for ServicePrincipalObjectResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServicePrincipalObjectResult',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipalObjectResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
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
              odatametadata: {
                required: false,
                serialized_name: 'odata\\.metadata',
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
