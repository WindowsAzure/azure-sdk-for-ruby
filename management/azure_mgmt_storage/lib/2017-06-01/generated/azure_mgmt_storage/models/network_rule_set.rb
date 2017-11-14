# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2017_06_01
  module Models
    #
    # Network rule set
    #
    class NetworkRuleSet

      include MsRestAzure

      include MsRest::JSONable
      # @return [Bypass] Specifies whether traffic is bypassed for
      # Logging/Metrics/AzureServices. Possible values are any combination of
      # Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or
      # None to bypass none of those traffics. Possible values include: 'None',
      # 'Logging', 'Metrics', 'AzureServices'. Default value: 'AzureServices' .
      attr_accessor :bypass

      # @return [Array<VirtualNetworkRule>] Sets the virtual network rules
      attr_accessor :virtual_network_rules

      # @return [Array<IPRule>] Sets the IP ACL rules
      attr_accessor :ip_rules

      # @return [DefaultAction] Specifies the default action of allow or deny
      # when no other rules match. Possible values include: 'Allow', 'Deny'.
      # Default value: 'Allow' .
      attr_accessor :default_action


      #
      # Mapper for NetworkRuleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkRuleSet',
          type: {
            name: 'Composite',
            class_name: 'NetworkRuleSet',
            model_properties: {
              bypass: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bypass',
                default_value: 'AzureServices',
                type: {
                  name: 'String'
                }
              },
              virtual_network_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualNetworkRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkRule'
                      }
                  }
                }
              },
              ip_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IPRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPRule'
                      }
                  }
                }
              },
              default_action: {
                client_side_validation: true,
                required: true,
                serialized_name: 'defaultAction',
                default_value: 'Allow',
                type: {
                  name: 'Enum',
                  module: 'DefaultAction'
                }
              }
            }
          }
        }
      end
    end
  end
end
