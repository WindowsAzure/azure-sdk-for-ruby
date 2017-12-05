# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # Check SKU availability result list.
    #
    class CheckSkuAvailabilityResultList

      include MsRestAzure

      # @return [Array<CheckSkuAvailabilityResult>] Check SKU availability
      # result list.
      attr_accessor :value


      #
      # Mapper for CheckSkuAvailabilityResultList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckSkuAvailabilityResultList',
          type: {
            name: 'Composite',
            class_name: 'CheckSkuAvailabilityResultList',
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
                      serialized_name: 'CheckSkuAvailabilityResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CheckSkuAvailabilityResult'
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
