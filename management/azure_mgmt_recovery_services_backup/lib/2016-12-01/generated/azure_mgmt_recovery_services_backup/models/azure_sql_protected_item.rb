# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Azure SQL workload-specific backup item.
    #
    class AzureSqlProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "Microsoft.Sql/servers/databases"
      end

      attr_accessor :protectedItemType

      # @return [String] Internal ID of a backup item. Used by Azure SQL Backup
      # engine to contact Recovery Services.
      attr_accessor :protected_item_data_id

      # @return [ProtectedItemState] Backup state of the backed up item.
      # Possible values include: 'Invalid', 'IRPending', 'Protected',
      # 'ProtectionError', 'ProtectionStopped', 'ProtectionPaused'
      attr_accessor :protection_state

      # @return [AzureSqlProtectedItemExtendedInfo] Additional information for
      # this backup item.
      attr_accessor :extended_info


      #
      # Mapper for AzureSqlProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Sql/servers/databases',
          type: {
            name: 'Composite',
            class_name: 'AzureSqlProtectedItem',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              protectedItemType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              protected_item_data_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemDataId',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureSqlProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
