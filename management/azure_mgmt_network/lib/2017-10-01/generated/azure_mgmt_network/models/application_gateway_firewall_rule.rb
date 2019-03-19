# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_10_01
  module Models
    #
    # A web application firewall rule.
    #
    class ApplicationGatewayFirewallRule

      include MsRestAzure

      # @return [Integer] The identifier of the web application firewall rule.
      attr_accessor :rule_id

      # @return [String] The description of the web application firewall rule.
      attr_accessor :description


      #
      # Mapper for ApplicationGatewayFirewallRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayFirewallRule',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallRule',
            model_properties: {
              rule_id: {
                required: true,
                serialized_name: 'ruleId',
                type: {
                  name: 'Number'
                }
              },
              description: {
                required: false,
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
