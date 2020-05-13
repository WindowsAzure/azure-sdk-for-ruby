# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_12_01
  module Models
    #
    # Properties of the FirewallPolicyFilterRuleAction.
    #
    class FirewallPolicyFilterRuleAction

      include MsRestAzure

      # @return [FirewallPolicyFilterRuleActionType] The type of action.
      # Possible values include: 'Allow', 'Deny'
      attr_accessor :type


      #
      # Mapper for FirewallPolicyFilterRuleAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicyFilterRuleAction',
          type: {
            name: 'Composite',
            class_name: 'FirewallPolicyFilterRuleAction',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
