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
    # Protectable Container Class.
    #
    class ProtectableContainer

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["StorageContainer"] = "AzureStorageProtectableContainer"
      @@discriminatorMap["VMAppContainer"] = "AzureVMAppContainerProtectableContainer"

      def initialize
        @protectableContainerType = "ProtectableContainer"
      end

      attr_accessor :protectableContainerType

      # @return [String] Friendly name of the container.
      attr_accessor :friendly_name

      # @return [BackupManagementType] Type of backup managemenent for the
      # container. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql', 'AzureStorage',
      # 'AzureWorkload', 'DefaultBackup'
      attr_accessor :backup_management_type

      # @return [String] Status of health of the container.
      attr_accessor :health_status

      # @return [String] Fabric Id of the container such as ARM Id.
      attr_accessor :container_id


      #
      # Mapper for ProtectableContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectableContainer',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'protectableContainerType',
            uber_parent: 'ProtectableContainer',
            class_name: 'ProtectableContainer',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              container_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerId',
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
