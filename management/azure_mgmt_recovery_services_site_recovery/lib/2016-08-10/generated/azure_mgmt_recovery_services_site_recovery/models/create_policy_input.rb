# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Protection profile input.
    #
    class CreatePolicyInput

      include MsRestAzure

      # @return [CreatePolicyInputProperties] Policy creation properties.
      attr_accessor :properties


      #
      # Mapper for CreatePolicyInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CreatePolicyInput',
          type: {
            name: 'Composite',
            class_name: 'CreatePolicyInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CreatePolicyInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
