# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Base class for the policies of providers using InMage replication.
    #
    class InMageBasePolicyDetails < PolicyProviderSpecificDetails

      include MsRestAzure


      def initialize
        @instanceType = "InMageBasePolicyDetails"
      end

      attr_accessor :instanceType

      # @return [Integer] The recovery point threshold in minutes.
      attr_accessor :recovery_point_threshold_in_minutes

      # @return [Integer] The duration in minutes until which the recovery
      # points need to be stored.
      attr_accessor :recovery_point_history

      # @return [Integer] The app consistent snapshot frequency in minutes.
      attr_accessor :app_consistent_frequency_in_minutes

      # @return [String] A value indicating whether multi-VM sync has to be
      # enabled.
      attr_accessor :multi_vm_sync_status


      #
      # Mapper for InMageBasePolicyDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InMageBasePolicyDetails',
          type: {
            name: 'Composite',
            class_name: 'InMageBasePolicyDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_threshold_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointThresholdInMinutes',
                type: {
                  name: 'Number'
                }
              },
              recovery_point_history: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointHistory',
                type: {
                  name: 'Number'
                }
              },
              app_consistent_frequency_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appConsistentFrequencyInMinutes',
                type: {
                  name: 'Number'
                }
              },
              multi_vm_sync_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'multiVmSyncStatus',
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
