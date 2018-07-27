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
    # Backup management usages of a vault.
    #
    class BackupManagementUsage

      include MsRestAzure

      # @return [UsagesUnit] Unit of the usage. Possible values include:
      # 'Count', 'Bytes', 'Seconds', 'Percent', 'CountPerSecond',
      # 'BytesPerSecond'
      attr_accessor :unit

      # @return [String] Quota period of usage.
      attr_accessor :quota_period

      # @return [DateTime] Next reset time of usage.
      attr_accessor :next_reset_time

      # @return [Integer] Current value of usage.
      attr_accessor :current_value

      # @return [Integer] Limit of usage.
      attr_accessor :limit

      # @return [NameInfo] Name of usage.
      attr_accessor :name


      #
      # Mapper for BackupManagementUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupManagementUsage',
          type: {
            name: 'Composite',
            class_name: 'BackupManagementUsage',
            model_properties: {
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              quota_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'quotaPeriod',
                type: {
                  name: 'String'
                }
              },
              next_reset_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextResetTime',
                type: {
                  name: 'DateTime'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'NameInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
