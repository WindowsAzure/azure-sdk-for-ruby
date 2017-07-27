# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Allows to disable rules within a rule group or an entire rule group.
    #
    class ApplicationGatewayFirewallDisabledRuleGroup
      # @return [String] The name of the rule group that will be disabled.
      attr_accessor :rule_group_name

      # @return [Array<Integer>] The list of rules that will be disabled. If
      # null, all rules of the rule group will be disabled.
      attr_accessor :rules


      #
      # Mapper for ApplicationGatewayFirewallDisabledRuleGroup class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayFirewallDisabledRuleGroup',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallDisabledRuleGroup',
            model_properties: {
              rule_group_name: {
                required: true,
                serialized_name: 'ruleGroupName',
                type: {
                  name: 'String'
                }
              },
              rules: {
                required: false,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
