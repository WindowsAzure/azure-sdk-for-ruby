# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Mab container-specific backup policy.
    #
    class MabProtectionPolicy < ProtectionPolicy

      include MsRestAzure


      def initialize
        @backupManagementType = "MAB"
      end

      attr_accessor :backupManagementType

      # @return [SchedulePolicy] Backup schedule of backup policy.
      attr_accessor :schedule_policy

      # @return [RetentionPolicy] Retention policy details.
      attr_accessor :retention_policy


      #
      # Mapper for MabProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MAB',
          type: {
            name: 'Composite',
            class_name: 'MabProtectionPolicy',
            model_properties: {
              protected_items_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              },
              backupManagementType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              schedule_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schedulePolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'schedulePolicyType',
                  uber_parent: 'SchedulePolicy',
                  class_name: 'SchedulePolicy'
                }
              },
              retention_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionPolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'retentionPolicyType',
                  uber_parent: 'RetentionPolicy',
                  class_name: 'RetentionPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
