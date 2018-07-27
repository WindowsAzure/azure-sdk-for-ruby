# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # The query filters that can be used with the list containers API.
    #
    class BMSContainerQueryObject

      include MsRestAzure

      # @return [BackupManagementType] Backup management type for this
      # container. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql', 'AzureStorage',
      # 'AzureWorkload', 'DefaultBackup'
      attr_accessor :backup_management_type

      # @return [ContainerType] Type of container for filter. Possible values
      # include: 'Invalid', 'Unknown', 'IaasVMContainer',
      # 'IaasVMServiceContainer', 'DPMContainer', 'AzureBackupServerContainer',
      # 'MABContainer', 'Cluster', 'AzureSqlContainer', 'Windows', 'VCenter',
      # 'VMAppContainer', 'SQLAGWorkLoadContainer', 'StorageContainer',
      # 'GenericContainer'
      attr_accessor :container_type

      # @return [String] Backup engine name
      attr_accessor :backup_engine_name

      # @return [String] Fabric name for filter
      attr_accessor :fabric_name

      # @return [String] Status of registration of this container with the
      # Recovery Services Vault.
      attr_accessor :status

      # @return [String] Friendly name of this container.
      attr_accessor :friendly_name


      #
      # Mapper for BMSContainerQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BMSContainerQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSContainerQueryObject',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              backup_engine_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupEngineName',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricName',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
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
