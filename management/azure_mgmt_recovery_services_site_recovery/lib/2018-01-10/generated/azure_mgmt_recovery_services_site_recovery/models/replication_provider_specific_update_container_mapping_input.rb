# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Provider specific input for update pairing operations.
    #
    class ReplicationProviderSpecificUpdateContainerMappingInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["A2A"] = "A2AUpdateContainerMappingInput"

      def initialize
        @instanceType = "ReplicationProviderSpecificUpdateContainerMappingInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for ReplicationProviderSpecificUpdateContainerMappingInput class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplicationProviderSpecificUpdateContainerMappingInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'ReplicationProviderSpecificUpdateContainerMappingInput',
            class_name: 'ReplicationProviderSpecificUpdateContainerMappingInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
