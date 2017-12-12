# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2017_04_01
  module Models
    #
    # Single item in List or Get Alias(Disaster Recovery configuration)
    # operation
    #
    class ArmDisasterRecovery < Resource

      include MsRestAzure

      # @return [ProvisioningStateDR] Provisioning state of the Alias(Disaster
      # Recovery configuration) - possible values 'Accepted' or 'Succeeded' or
      # 'Failed'. Possible values include: 'Accepted', 'Succeeded', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] ARM Id of the Primary/Secondary eventhub namespace
      # name, which is part of GEO DR pairning
      attr_accessor :partner_namespace

      # @return [String] Alternate name specified when alias and namespace
      # names are same.
      attr_accessor :alternate_name

      # @return [RoleDisasterRecovery] role of namespace in GEO DR - possible
      # values 'Primary' or 'PrimaryNotReplicating' or 'Secondary'. Possible
      # values include: 'Primary', 'PrimaryNotReplicating', 'Secondary'
      attr_accessor :role


      #
      # Mapper for ArmDisasterRecovery class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ArmDisasterRecovery',
          type: {
            name: 'Composite',
            class_name: 'ArmDisasterRecovery',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningStateDR'
                }
              },
              partner_namespace: {
                required: false,
                serialized_name: 'properties.partnerNamespace',
                type: {
                  name: 'String'
                }
              },
              alternate_name: {
                required: false,
                serialized_name: 'properties.alternateName',
                type: {
                  name: 'String'
                }
              },
              role: {
                required: false,
                read_only: true,
                serialized_name: 'properties.role',
                type: {
                  name: 'Enum',
                  module: 'RoleDisasterRecovery'
                }
              }
            }
          }
        }
      end
    end
  end
end
