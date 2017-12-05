# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Input definition for planned failover input properties.
    #
    class PlannedFailoverInputProperties

      include MsRestAzure

      # @return [String] Failover direction.
      attr_accessor :failover_direction

      # @return [ProviderSpecificFailoverInput] Provider specific settings
      attr_accessor :provider_specific_details


      #
      # Mapper for PlannedFailoverInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PlannedFailoverInputProperties',
          type: {
            name: 'Composite',
            class_name: 'PlannedFailoverInputProperties',
            model_properties: {
              failover_direction: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failoverDirection',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'ProviderSpecificFailoverInput',
                  class_name: 'ProviderSpecificFailoverInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
