# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_08_01
  module Models
    #
    # The list linked service operation response.
    #
    class LinkedServiceListResult

      include MsRestAzure

      # @return [Array<LinkedService>] The list of linked service instances
      attr_accessor :value


      #
      # Mapper for LinkedServiceListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LinkedServiceListResult',
          type: {
            name: 'Composite',
            class_name: 'LinkedServiceListResult',
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
                      serialized_name: 'LinkedServiceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LinkedService'
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
