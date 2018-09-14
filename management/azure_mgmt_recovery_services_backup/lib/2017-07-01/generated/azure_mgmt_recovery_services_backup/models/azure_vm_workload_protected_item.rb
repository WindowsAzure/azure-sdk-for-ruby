# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Azure VM workload-specific protected item.
    #
    class AzureVmWorkloadProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "AzureVmWorkloadProtectedItem"
      end

      attr_accessor :protectedItemType

      # @return [String] Friendly name of the DB represented by this backup
      # item.
      attr_accessor :friendly_name

      # @return [String] Host/Cluster Name for instance or AG
      attr_accessor :server_name

      # @return [String] Parent name of the DB such as Instance or Availability
      # Group.
      attr_accessor :parent_name

      # @return [String] Parent type of protected item, example: for a DB,
      # standalone server or distributed
      attr_accessor :parent_type

      # @return [String] Backup status of this backup item.
      attr_accessor :protection_status

      # @return [ProtectionState] Backup state of this backup item. Possible
      # values include: 'Invalid', 'IRPending', 'Protected', 'ProtectionError',
      # 'ProtectionStopped', 'ProtectionPaused'
      attr_accessor :protection_state

      # @return [LastBackupStatus] Last backup operation status. Possible
      # values: Healthy, Unhealthy. Possible values include: 'Invalid',
      # 'Healthy', 'Unhealthy', 'IRPending'
      attr_accessor :last_backup_status

      # @return [DateTime] Timestamp of the last backup operation on this
      # backup item.
      attr_accessor :last_backup_time

      # @return [ErrorDetail] Error details in last backup
      attr_accessor :last_backup_error_detail

      # @return [String] Data ID of the protected item.
      attr_accessor :protected_item_data_source_id

      # @return [ProtectedItemHealthStatus] Health status of the backup item,
      # evaluated based on last heartbeat received. Possible values include:
      # 'Invalid', 'Healthy', 'Unhealthy', 'NotReachable', 'IRPending'
      attr_accessor :protected_item_health_status

      # @return [AzureVmWorkloadProtectedItemExtendedInfo] Additional
      # information for this backup item.
      attr_accessor :extended_info


      #
      # Mapper for AzureVmWorkloadProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureVmWorkloadProtectedItem',
          type: {
            name: 'Composite',
            class_name: 'AzureVmWorkloadProtectedItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              backup_set_name: {
                required: false,
                serialized_name: 'backupSetName',
                type: {
                  name: 'String'
                }
              },
              create_mode: {
                required: false,
                serialized_name: 'createMode',
                type: {
                  name: 'String'
                }
              },
              vault_id: {
                required: false,
                serialized_name: 'vaultId',
                type: {
                  name: 'String'
                }
              },
              protectedItemType: {
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: false,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              parent_name: {
                required: false,
                serialized_name: 'parentName',
                type: {
                  name: 'String'
                }
              },
              parent_type: {
                required: false,
                serialized_name: 'parentType',
                type: {
                  name: 'String'
                }
              },
              protection_status: {
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              last_backup_status: {
                required: false,
                serialized_name: 'lastBackupStatus',
                type: {
                  name: 'String'
                }
              },
              last_backup_time: {
                required: false,
                serialized_name: 'lastBackupTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_backup_error_detail: {
                required: false,
                serialized_name: 'lastBackupErrorDetail',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorDetail'
                }
              },
              protected_item_data_source_id: {
                required: false,
                serialized_name: 'protectedItemDataSourceId',
                type: {
                  name: 'String'
                }
              },
              protected_item_health_status: {
                required: false,
                serialized_name: 'protectedItemHealthStatus',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureVmWorkloadProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
