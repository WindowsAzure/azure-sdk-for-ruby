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
    # IaaS VM workload-specific restore.
    #
    class IaasVMRestoreRequest < RestoreRequest

      include MsRestAzure


      def initialize
        @objectType = "IaasVMRestoreRequest"
      end

      attr_accessor :objectType

      # @return [String] ID of the backup copy to be recovered.
      attr_accessor :recovery_point_id

      # @return [RecoveryType] Type of this recovery. Possible values include:
      # 'Invalid', 'OriginalLocation', 'AlternateLocation', 'RestoreDisks'
      attr_accessor :recovery_type

      # @return [String] Fully qualified ARM ID of the VM which is being
      # recovered.
      attr_accessor :source_resource_id

      # @return [String] This is the complete ARM Id of the VM that will be
      # created.
      # For e.g.
      # /subscriptions/{subId}/resourcegroups/{rg}/provider/Microsoft.Compute/virtualmachines/{vm}
      attr_accessor :target_virtual_machine_id

      # @return [String] This is the ARM Id of the resource group that you want
      # to create for this Virtual machine and other artifacts.
      # For e.g. /subscriptions/{subId}/resourcegroups/{rg}
      attr_accessor :target_resource_group_id

      # @return [String] Fully qualified ARM ID of the storage account to which
      # the VM has to be restored.
      attr_accessor :storage_account_id

      # @return [String] This is the virtual network Id of the vnet that will
      # be attached to the virtual machine.
      # User will be validated for join action permissions in the linked
      # access.
      attr_accessor :virtual_network_id

      # @return [String] Subnet ID, is the subnet ID associated with the to be
      # restored VM. For Classic VMs it would be
      # {VnetID}/Subnet/{SubnetName} and, for the Azure Resource Manager VMs it
      # would be ARM resource ID used to represent
      # the subnet.
      attr_accessor :subnet_id

      # @return [String] Fully qualified ARM ID of the domain name to be
      # associated to the VM being restored. This applies only to Classic
      # Virtual Machines.
      attr_accessor :target_domain_name_id

      # @return [String] Region in which the virtual machine is restored.
      attr_accessor :region

      # @return [String] Affinity group associated to VM to be restored. Used
      # only for Classic Compute Virtual Machines.
      attr_accessor :affinity_group

      # @return [Boolean] Should a new cloud service be created while restoring
      # the VM. If this is false, VM will be restored to the same
      # cloud service as it was at the time of backup.
      attr_accessor :create_new_cloud_service

      # @return [Boolean] Original Storage Account Option
      attr_accessor :original_storage_account_option

      # @return [EncryptionDetails] Details needed if the VM was encrypted at
      # the time of backup.
      attr_accessor :encryption_details


      #
      # Mapper for IaasVMRestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IaasVMRestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'IaasVMRestoreRequest',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointId',
                type: {
                  name: 'String'
                }
              },
              recovery_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryType',
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
              target_virtual_machine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetVirtualMachineId',
                type: {
                  name: 'String'
                }
              },
              target_resource_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetResourceGroupId',
                type: {
                  name: 'String'
                }
              },
              storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountId',
                type: {
                  name: 'String'
                }
              },
              virtual_network_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualNetworkId',
                type: {
                  name: 'String'
                }
              },
              subnet_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnetId',
                type: {
                  name: 'String'
                }
              },
              target_domain_name_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDomainNameId',
                type: {
                  name: 'String'
                }
              },
              region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              affinity_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affinityGroup',
                type: {
                  name: 'String'
                }
              },
              create_new_cloud_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createNewCloudService',
                type: {
                  name: 'Boolean'
                }
              },
              original_storage_account_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'originalStorageAccountOption',
                type: {
                  name: 'Boolean'
                }
              },
              encryption_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionDetails',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
