# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The parameters schema of integration account map.
    #
    class IntegrationAccountMapPropertiesParametersSchema

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The reference name.
      attr_accessor :ref


      #
      # Mapper for IntegrationAccountMapPropertiesParametersSchema class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationAccountMapProperties_parametersSchema',
          type: {
            name: 'Composite',
            class_name: 'IntegrationAccountMapPropertiesParametersSchema',
            model_properties: {
              ref: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ref',
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
