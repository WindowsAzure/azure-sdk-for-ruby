# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # IaaS VM workload specific backup copy.
    #
    class IaasVMRecoveryPoint < RecoveryPoint

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @objectType = "IaasVMRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [String] Type of the backup copy.
      attr_accessor :recovery_point_type

      # @return [DateTime] Time at which this backup copy was created.
      attr_accessor :recovery_point_time

      # @return [String] Additional information associated with this backup
      # copy.
      attr_accessor :recovery_point_additional_info

      # @return [String] Storage type of the VM whose backup copy is created.
      attr_accessor :source_vmstorage_type

      # @return [Boolean] Identifies whether the VM was encrypted when the
      # backup copy is created.
      attr_accessor :is_source_vmencrypted

      # @return [KeyAndSecretDetails] Required details for recovering an
      # encrypted VM. Applicable only when IsSourceVMEncrypted is true.
      attr_accessor :key_and_secret

      # @return [Boolean] Is the session to recover items from this backup copy
      # still active.
      attr_accessor :is_instant_ilrsession_active

      # @return [Array<RecoveryPointTierInformation>] Recovery point tier
      # information.
      attr_accessor :recovery_point_tier_details

      # @return [Boolean] Whether VM is with Managed Disks
      attr_accessor :is_managed_virtual_machine

      # @return [String] Virtual Machine Size
      attr_accessor :virtual_machine_size

      # @return [Boolean] Original SA Option
      attr_accessor :original_storage_account_option


      #
      # Mapper for IaasVMRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IaasVMRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'IaasVMRecoveryPoint',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_type: {
                required: false,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time: {
                required: false,
                serialized_name: 'recoveryPointTime',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_additional_info: {
                required: false,
                serialized_name: 'recoveryPointAdditionalInfo',
                type: {
                  name: 'String'
                }
              },
              source_vmstorage_type: {
                required: false,
                serialized_name: 'sourceVMStorageType',
                type: {
                  name: 'String'
                }
              },
              is_source_vmencrypted: {
                required: false,
                serialized_name: 'isSourceVMEncrypted',
                type: {
                  name: 'Boolean'
                }
              },
              key_and_secret: {
                required: false,
                serialized_name: 'keyAndSecret',
                type: {
                  name: 'Composite',
                  class_name: 'KeyAndSecretDetails'
                }
              },
              is_instant_ilrsession_active: {
                required: false,
                serialized_name: 'isInstantILRSessionActive',
                type: {
                  name: 'Boolean'
                }
              },
              recovery_point_tier_details: {
                required: false,
                serialized_name: 'recoveryPointTierDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoveryPointTierInformationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPointTierInformation'
                      }
                  }
                }
              },
              is_managed_virtual_machine: {
                required: false,
                serialized_name: 'isManagedVirtualMachine',
                type: {
                  name: 'Boolean'
                }
              },
              virtual_machine_size: {
                required: false,
                serialized_name: 'virtualMachineSize',
                type: {
                  name: 'String'
                }
              },
              original_storage_account_option: {
                required: false,
                serialized_name: 'originalStorageAccountOption',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
