# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.22.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # IaaS VM workload-specific backup item.
    #
    class IaaSVMProtectableItem < WorkloadProtectableItem

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @protectableItemType = "IaaSVMProtectableItem"
      end

      attr_accessor :protectableItemType

      # @return [String] Fully qualified ARM ID of the virtual machine.
      attr_accessor :virtual_machine_id


      #
      # Mapper for IaaSVMProtectableItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IaaSVMProtectableItem',
          type: {
            name: 'Composite',
            class_name: 'IaaSVMProtectableItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
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
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              protectableItemType: {
                required: true,
                serialized_name: 'protectableItemType',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                required: false,
                serialized_name: 'virtualMachineId',
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
