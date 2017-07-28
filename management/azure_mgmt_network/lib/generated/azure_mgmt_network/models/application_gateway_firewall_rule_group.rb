# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # A web application firewall rule group.
    #
    class ApplicationGatewayFirewallRuleGroup
      # @return [String] The name of the web application firewall rule group.
      attr_accessor :rule_group_name

      # @return [String] The description of the web application firewall rule
      # group.
      attr_accessor :description

      # @return [Array<ApplicationGatewayFirewallRule>] The rules of the web
      # application firewall rule group.
      attr_accessor :rules


      #
      # Mapper for ApplicationGatewayFirewallRuleGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayFirewallRuleGroup',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallRuleGroup',
            model_properties: {
              rule_group_name: {
                required: true,
                serialized_name: 'ruleGroupName',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              rules: {
                required: true,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallRule'
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
