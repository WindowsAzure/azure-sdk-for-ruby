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
    # Azure VM workload-specific protected item representing SAP Hana Database.
    #
    class AzureVmWorkloadSAPHanaDatabaseProtectedItem < AzureVmWorkloadProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "AzureVmWorkloadSAPHanaDatabase"
      end

      attr_accessor :protectedItemType


      #
      # Mapper for AzureVmWorkloadSAPHanaDatabaseProtectedItem class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureVmWorkloadSAPHanaDatabase',
          type: {
            name: 'Composite',
            class_name: 'AzureVmWorkloadSAPHanaDatabaseProtectedItem',
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
