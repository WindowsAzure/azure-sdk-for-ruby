# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Firewall Policy NAT Rule Collection.
    #
    class FirewallPolicyNatRuleCollection < FirewallPolicyRuleCollection

      include MsRestAzure


      def initialize
        @ruleCollectionType = "FirewallPolicyNatRuleCollection"
      end

      attr_accessor :ruleCollectionType

      # @return [FirewallPolicyNatRuleCollectionAction] The action type of a
      # Nat rule collection.
      attr_accessor :action

      # @return [Array<FirewallPolicyRule>] List of rules included in a rule
      # collection.
      attr_accessor :rules


      #
      # Mapper for FirewallPolicyNatRuleCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicyNatRuleCollection',
          type: {
            name: 'Composite',
            class_name: 'FirewallPolicyNatRuleCollection',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'priority',
                constraints: {
                  InclusiveMaximum: 65000,
                  InclusiveMinimum: 100
                },
                type: {
                  name: 'Number'
                }
              },
              ruleCollectionType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleCollectionType',
                type: {
                  name: 'String'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'Composite',
                  class_name: 'FirewallPolicyNatRuleCollectionAction'
                }
              },
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FirewallPolicyRuleElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'ruleType',
                        uber_parent: 'FirewallPolicyRule',
                        class_name: 'FirewallPolicyRule'
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
