# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_07_19_preview
  module Models
    #
    # Quota change requests information.
    #
    class CreateGenericQuotaRequestParameters

      include MsRestAzure

      # @return [Array<CurrentQuotaLimitBase>] Quota change requests.
      attr_accessor :value


      #
      # Mapper for CreateGenericQuotaRequestParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateGenericQuotaRequestParameters',
          type: {
            name: 'Composite',
            class_name: 'CreateGenericQuotaRequestParameters',
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
                      serialized_name: 'CurrentQuotaLimitBaseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CurrentQuotaLimitBase'
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
