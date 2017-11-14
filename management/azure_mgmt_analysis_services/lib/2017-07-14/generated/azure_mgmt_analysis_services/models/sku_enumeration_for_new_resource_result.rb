# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AnalysisServices::Mgmt::V2017_07_14
  module Models
    #
    # An object that represents enumerating SKUs for new resources
    #
    class SkuEnumerationForNewResourceResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ResourceSku>] The collection of available SKUs for new
      # resources
      attr_accessor :value


      #
      # Mapper for SkuEnumerationForNewResourceResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuEnumerationForNewResourceResult',
          type: {
            name: 'Composite',
            class_name: 'SkuEnumerationForNewResourceResult',
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
                      serialized_name: 'ResourceSkuElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceSku'
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
