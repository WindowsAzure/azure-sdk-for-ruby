# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Configures the Explicit Analog Television Output Restriction control
    # bits. For further details see the PlayReady Compliance Rules.
    #
    class ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction

      include MsRestAzure

      # @return [Boolean] Indicates whether this restriction is enforced on a
      # Best Effort basis.
      attr_accessor :best_effort

      # @return [Integer] Configures the restriction control bits. Must be
      # between 0 and 3 inclusive.
      attr_accessor :configuration_data


      #
      # Mapper for ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction',
            model_properties: {
              best_effort: {
                required: true,
                serialized_name: 'bestEffort',
                type: {
                  name: 'Boolean'
                }
              },
              configuration_data: {
                required: true,
                serialized_name: 'configurationData',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
