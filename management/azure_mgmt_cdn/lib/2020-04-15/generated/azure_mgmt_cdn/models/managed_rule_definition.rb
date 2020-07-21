# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Describes a managed rule definition.
    #
    class ManagedRuleDefinition

      include MsRestAzure

      # @return [String] Identifier for the managed rule.
      attr_accessor :rule_id

      # @return [String] Describes the functionality of the managed rule.
      attr_accessor :description


      #
      # Mapper for ManagedRuleDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedRuleDefinition',
          type: {
            name: 'Composite',
            class_name: 'ManagedRuleDefinition',
            model_properties: {
              rule_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ruleId',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
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
