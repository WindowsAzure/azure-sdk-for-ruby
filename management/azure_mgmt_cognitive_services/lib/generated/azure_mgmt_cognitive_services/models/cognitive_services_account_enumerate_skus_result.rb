# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CognitiveServices
  module Models
    #
    # The list of cognitive services accounts operation response.
    #
    class CognitiveServicesAccountEnumerateSkusResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<CognitiveServicesResourceAndSku>] Gets the list of
      # Cognitive Services accounts and their properties.
      attr_accessor :value


      #
      # Mapper for CognitiveServicesAccountEnumerateSkusResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CognitiveServicesAccountEnumerateSkusResult',
          type: {
            name: 'Composite',
            class_name: 'CognitiveServicesAccountEnumerateSkusResult',
            model_properties: {
              value: {
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CognitiveServicesResourceAndSkuElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CognitiveServicesResourceAndSku'
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
