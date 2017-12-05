# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AnalysisServices::Mgmt::V2017_07_14
  module Models
    #
    # An object that represents enumerating SKUs for existing resources
    #
    class SkuEnumerationForExistingResourceResult

      include MsRestAzure

      # @return [Array<SkuDetailsForExistingResource>] The collection of
      # available SKUs for existing resources
      attr_accessor :value


      #
      # Mapper for SkuEnumerationForExistingResourceResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuEnumerationForExistingResourceResult',
          type: {
            name: 'Composite',
            class_name: 'SkuEnumerationForExistingResourceResult',
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
                      serialized_name: 'SkuDetailsForExistingResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuDetailsForExistingResource'
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
