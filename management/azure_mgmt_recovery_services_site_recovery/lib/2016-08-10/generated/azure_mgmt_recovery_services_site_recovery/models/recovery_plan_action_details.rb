# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan action custom details.
    #
    class RecoveryPlanActionDetails

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["ScriptActionDetails"] = "RecoveryPlanScriptActionDetails"
      @@discriminatorMap["AutomationRunbookActionDetails"] = "RecoveryPlanAutomationRunbookActionDetails"
      @@discriminatorMap["ManualActionDetails"] = "RecoveryPlanManualActionDetails"

      def initialize
        @instanceType = "RecoveryPlanActionDetails"
      end

      attr_accessor :instanceType


      #
      # Mapper for RecoveryPlanActionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecoveryPlanActionDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'RecoveryPlanActionDetails',
            class_name: 'RecoveryPlanActionDetails',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
