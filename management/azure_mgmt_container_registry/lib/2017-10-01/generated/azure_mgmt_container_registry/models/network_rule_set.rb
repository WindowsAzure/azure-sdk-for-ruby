# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # The network rule set for a container registry.
    #
    class NetworkRuleSet

      include MsRestAzure

      # @return [DefaultAction] The default action of allow or deny when no
      # other rules match. Possible values include: 'Allow', 'Deny'. Default
      # value: 'Allow' .
      attr_accessor :default_action

      # @return [Array<VirtualNetworkRule>] The virtual network rules.
      attr_accessor :virtual_network_rules


      #
      # Mapper for NetworkRuleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkRuleSet',
          type: {
            name: 'Composite',
            class_name: 'NetworkRuleSet',
            model_properties: {
              default_action: {
                required: true,
                serialized_name: 'defaultAction',
                default_value: 'Allow',
                type: {
                  name: 'String'
                }
              },
              virtual_network_rules: {
                required: false,
                serialized_name: 'virtualNetworkRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualNetworkRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkRule'
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
