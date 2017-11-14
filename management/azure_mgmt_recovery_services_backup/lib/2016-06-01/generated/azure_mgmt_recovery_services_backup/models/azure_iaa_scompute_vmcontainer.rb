# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # IaaS VM workload-specific backup item representing a Resource
    # Manager-deployed virtual machine.
    #
    class AzureIaaSComputeVMContainer < IaaSVMContainer

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @protectableObjectType = "Microsoft.Compute/virtualMachines"
      end

      attr_accessor :protectableObjectType


      #
      # Mapper for AzureIaaSComputeVMContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Compute/virtualMachines',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSComputeVMContainer',
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
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              registration_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registrationStatus',
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
              container_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              protectableObjectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectableObjectType',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualMachineId',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualMachineVersion',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceGroup',
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
