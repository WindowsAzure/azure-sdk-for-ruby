# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Rules that can be defined for auto-heal.
    #
    class AutoHealRules

      include MsRestAzure

      # @return [AutoHealTriggers] Conditions that describe when to execute the
      # auto-heal actions.
      attr_accessor :triggers

      # @return [AutoHealActions] Actions to be executed when a rule is
      # triggered.
      attr_accessor :actions


      #
      # Mapper for AutoHealRules class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AutoHealRules',
          type: {
            name: 'Composite',
            class_name: 'AutoHealRules',
            model_properties: {
              triggers: {
                required: false,
                serialized_name: 'triggers',
                type: {
                  name: 'Composite',
                  class_name: 'AutoHealTriggers'
                }
              },
              actions: {
                required: false,
                serialized_name: 'actions',
                type: {
                  name: 'Composite',
                  class_name: 'AutoHealActions'
                }
              }
            }
          }
        }
      end
    end
  end
end
