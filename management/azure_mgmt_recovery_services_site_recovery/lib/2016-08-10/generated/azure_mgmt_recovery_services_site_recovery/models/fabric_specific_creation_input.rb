# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Fabric provider specific settings.
    #
    class FabricSpecificCreationInput

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["A2A"] = "AzureFabricCreationInput"
      @@discriminatorMap["VMwareV2"] = "VMwareV2FabricCreationInput"

      def initialize
        @instanceType = "FabricSpecificCreationInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for FabricSpecificCreationInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FabricSpecificCreationInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'FabricSpecificCreationInput',
            class_name: 'FabricSpecificCreationInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
