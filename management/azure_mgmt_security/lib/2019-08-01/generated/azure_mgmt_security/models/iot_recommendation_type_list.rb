# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # List of recommendation types
    #
    class IotRecommendationTypeList

      include MsRestAzure

      # @return [Array<IotRecommendationType>] List data
      attr_accessor :value


      #
      # Mapper for IotRecommendationTypeList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotRecommendationTypeList',
          type: {
            name: 'Composite',
            class_name: 'IotRecommendationTypeList',
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
                      serialized_name: 'IotRecommendationTypeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IotRecommendationType'
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
